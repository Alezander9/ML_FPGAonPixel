import hls4ml
import plotting
from scipy.special import softmax, expit as sigmoid
from keras.models import load_model
import keras
import os
import numpy as np
import tensorflow_model_optimization as tfmot
import tensorflow as tf
from tensorflow_model_optimization.sparsity.keras import strip_pruning
from tensorflow_model_optimization.python.core.sparsity.keras import pruning_wrapper
from qkeras.utils import _add_supported_quantized_objects
print(tf.__version__)
print(keras.__version__)
print(tfmot.__version__)

os.environ['PATH'] = os.environ['XILINX_VIVADO'] + '/bin:' + os.environ['PATH']
os.environ['PATH'] = os.environ['XILINX_VITIS'] + '/bin:' + os.environ['PATH']
os.environ['PATH'] = os.environ['XILINX_AP_INCLUDE'] + '/bin:' + os.environ['PATH']

co = {}
_add_supported_quantized_objects(co)
co['PruneLowMagnitude'] = pruning_wrapper.PruneLowMagnitude

# Path to the saved model
skl_model_path = '../../software/ALEX/DNN_L2_S32_best_performance.h5'
# Load the model
model = tf.keras.models.load_model(skl_model_path, custom_objects=co)
for layer in model.layers:
    for i, w in enumerate(layer.weights):
        try:
            print("weight is", w.numpy(), "for layer number", i)  # TF 2.x
        except Exception:
            print("weight is", layer.get_weights()[i], "for layer number", i)  # TF 2.x
model = strip_pruning(model)
#model = load_model(skl_model_path)

############
# First, the baseline model
hls_config = hls4ml.utils.config_from_keras_model(model, granularity='name')

# Set the precision and reuse factor for the full model
hls_config['Model']['Precision'] = 'ap_fixed<15,5>'
hls_config['Model']['ReuseFactor'] = 10000 

# Create an entry for each layer, here you can for instance change the strategy for a layer to 'resource'
# or increase the reuse factor individually for large layers.
# In this case, we designed the model to be small enough for a fully parallel implementation
# so we use the latency strategy and reuse factor of 1 for all layers.

for Layer in hls_config['LayerName'].keys():
    print(Layer)
    hls_config['LayerName'][Layer]['Strategy'] = 'Resource'
    hls_config['LayerName'][Layer]['Precision']['weight'] = 'ap_fixed<15,5>'
    hls_config['LayerName'][Layer]['Precision']['bias'] = 'ap_fixed<15,5>'
    #hls_config['LayerName'][Layer]['Precision']['result'] = 'ap_fixed<64,16>'
    #hls_config['LayerName'][Layer]['Precision'] = 'ap_fixed<64,16>'
    hls_config['LayerName'][Layer]['Trace'] = True

#hls_config['LayerName']['conv1']['ReuseFactor'] = 1
#hls_config['LayerName']['conv1']['ReuseFactor'] = 1 
#hls_config['LayerName']['dense1']['ReuseFactor'] = 1 
#hls_config['LayerName']['dense1']['ReuseFactor'] = 43 
#hls_config['LayerName']['dense2']['ReuseFactor'] = 1
#hls_config['LayerName']['dense2']['ReuseFactor'] = 7
# If you want best numerical performance for high-accuray models, while the default latency strategy is faster but numerically more unstable
# hls_config['LayerName']['output_sigmoid']['Strategy'] = 'Stable'
#hls_config['LayerName']['output_sigmoid']['Precision'] = 'ap_fixed<64,16>'

cfg = hls4ml.converters.create_config(backend='Vitis')

cfg['IOType'] = 'io_stream'  # Must set this if using CNNs!
cfg['HLSConfig'] = hls_config
cfg['KerasModel'] = model
cfg['OutputDir'] = 'cnn_small/'
cfg['XilinxPart'] = 'xcku040-ffva1156-2-e'
#cfg['Precision'] = 'ap_fixed<32,8>'

hls_model = hls4ml.converters.keras_to_hls(cfg)
# layers = hls_model.get_layers()

hls_model.compile()
hls_model.build()

hls4ml.model.profiling.numerical(model=model, hls_model=hls_model)
hls4ml.utils.plot_model(hls_model, show_shapes=True, show_precision=True, to_file=None)
hls4ml.report.read_vivado_report('./cnn_debug/myproject_prj')

data_file_path = './tb_input_features_small.dat'
out_file_path = './tb_output_predictions_small.dat'

data = np.loadtxt(data_file_path)
y_sum_test = np.loadtxt(out_file_path)

X_sum_test = data[:, :104]  # All rows, first 104 columns
y0_test = data[:, 104]  # All rows, last column
X_sum_test = X_sum_test.reshape(-1, 8, 13)  #
y_sum_test = y_sum_test.reshape(-1, 1)
print("y_sum = ",  np.sum(y_sum_test))

perfect_pred = model.predict([X_sum_test, y0_test])
pred = hls_model.predict([np.ascontiguousarray(X_sum_test), np.ascontiguousarray(y0_test)])
hls_model.compile()
#print(perfect_pred[:100])
#print(pred[:100])

from sklearn.metrics import confusion_matrix

thresholds = np.linspace(0, 1, 1000)
signal_efficiencies = []
background_rejections = []

import matplotlib.pyplot as plt
import seaborn as sns
for threshold in thresholds:
    predicted_class = (pred > threshold).astype(int)

    # Compute confusion matrix
    cm = confusion_matrix(y_sum_test[:, 0], predicted_class)

    # Calculate signal efficiency and background rejection
    signal_efficiency = cm[1, 1] / np.sum(cm[1, :])
    background_rejection = cm[0, 0] / np.sum(cm[0, :])

    # Store metrics
    signal_efficiencies.append(signal_efficiency)
    background_rejections.append(background_rejection)

# Plotting
plt.figure(figsize=(10, 6))
plt.plot(thresholds, signal_efficiencies, label='Signal Efficiency')
plt.plot(thresholds, background_rejections, label='Background Rejection')
plt.xlabel('Threshold')
plt.ylabel('Metric Value')
plt.title('Effect of Threshold on Signal Efficiency and Background Rejection')
plt.legend()
plt.grid(True)
plt.show()

plt.figure(figsize=(10, 6))
plt.plot(signal_efficiencies, background_rejections, marker='o')
plt.xlabel('Signal Efficiency')
plt.ylabel('Background Rejection')
plt.title('Background Rejection vs. Signal Efficiency')
plt.grid(True)
plt.show()

def find_closest(sorted_array, value):
    # Ensure the array is a NumPy array
    sorted_array = np.array(sorted_array)

    # Compute the absolute difference
    abs_diff = np.abs(sorted_array - value)

    # Find the index of the minimum difference
    closest_index = np.argmin(abs_diff)
    return closest_index

index_848 = find_closest(signal_efficiencies, 0.848)
index_933 = find_closest(signal_efficiencies, 0.933)
index_976 = find_closest(signal_efficiencies, 0.976)
index_995 = find_closest(signal_efficiencies, 0.995)
index_997 = find_closest(signal_efficiencies, 0.997)

print(f"Signal Efficiency:{signal_efficiencies[index_848]*100:.1f}%",f"Background Rejections:{background_rejections[index_848]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_933]*100:.1f}%",f"Background Rejections:{background_rejections[index_933]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_976]*100:.1f}%",f"Background Rejections:{background_rejections[index_976]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_995]*100:.1f}%",f"Background Rejections:{background_rejections[index_995]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_997]*100:.1f}%",f"Background Rejections:{background_rejections[index_997]*100:.1f}%")

#pred, hls_trace = hls_model.trace([np.ascontiguousarray(X_sum_test), np.ascontiguousarray(y0_test)])
#keras_trace = hls4ml.model.profiling.get_ymodel_keras(model, [X_sum_test, y0_test])
#for layer in hls_config['LayerName'].keys():
#    print(hls_trace[layer][0])
#print("now synthesis one")
#print(keras_trace)


