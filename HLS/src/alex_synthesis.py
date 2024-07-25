# PATH OF MODEL TO SYNTHESIZE
tslices = 4
wbbits = 10
abits = 15
ibits = 2
skl_model_path = f'../../software/ALEX/{tslices}_slice_L2_S24_{wbbits}_{abits}_best.h5'

# IMPORTS
import hls4ml
from scipy.special import softmax, expit as sigmoid
from keras.models import load_model
import keras
import os
import xml.etree.ElementTree as ET
import numpy as np
import tensorflow_model_optimization as tfmot
import tensorflow as tf
from tensorflow_model_optimization.sparsity.keras import strip_pruning
from tensorflow_model_optimization.python.core.sparsity.keras import pruning_wrapper
from qkeras.utils import _add_supported_quantized_objects
print(tf.__version__)
print(keras.__version__)
print(tfmot.__version__)
from sklearn.metrics import confusion_matrix
import matplotlib.pyplot as plt
import seaborn as sns

# GET XILINX LICENSES FROM RDSRV PATH
os.environ['PATH'] = os.environ['XILINX_VIVADO'] + '/bin:' + os.environ['PATH']
os.environ['PATH'] = os.environ['XILINX_VITIS'] + '/bin:' + os.environ['PATH']
os.environ['PATH'] = os.environ['XILINX_AP_INCLUDE'] + '/bin:' + os.environ['PATH']

# MODEL LOADING CONFIG
objects = {}
_add_supported_quantized_objects(objects)
objects['PruneLowMagnitude'] = pruning_wrapper.PruneLowMagnitude

# DISPLAY FUNCTIONS
def printWeights(model):
    print("PRINTING WEIGHTS")
    for layer in model.layers:
        for i, w in enumerate(layer.weights):
            try:
                print("weight is", w.numpy(), "for layer number", i)  # TF 2.x
            except Exception:
                print("weight is", layer.get_weights()[i], "for layer number", i)  # TF 2.x

# LOAD MODEL
model = tf.keras.models.load_model(skl_model_path, custom_objects=objects)
# printWeights(model)
model = strip_pruning(model)

# MODEL SYNTHESIS CONFIG
hls_config = hls4ml.utils.config_from_keras_model(model, granularity='name')
# hls_config['Model']['Precision'] = 'ap_fixed<10,2>'

hls_config['Model']['ReuseFactor'] = 1 # MOST RELAVANT PARAMETER

for Layer in hls_config['LayerName'].keys():
    print(Layer)
    hls_config['LayerName'][Layer]['Strategy'] = 'Latency'
    hls_config['LayerName'][Layer]['Precision']['weight'] = f'ap_fixed<{wbbits},{ibits}>'
    hls_config['LayerName'][Layer]['Precision']['bias'] = f'ap_fixed<{wbbits},{ibits}>'
    hls_config['LayerName'][Layer]['Precision']['result'] = f'ap_fixed<{abits},{ibits}>'
    hls_config['LayerName'][Layer]['Trace'] = True

cfg = hls4ml.converters.create_config(backend='Vitis')

cfg['IOType'] = 'io_parallel'  # io_parallel is much faster. Must use io_stream if using CNNs
cfg['HLSConfig'] = hls_config
cfg['KerasModel'] = model
cfg['OutputDir'] = 'alex_model/'
cfg['XilinxPart'] = 'xcku040-ffva1156-2-e'

# SYNTHESIZE MODEL
hls_model = hls4ml.converters.keras_to_hls(cfg)
hls_model.compile()
hls_model.build()

print("('###################### HLS SYNTHESIS TO C++ SUCCESS ('######################")
# printWeights(hls_model)

# PRINT RESULTS
print('###################### PROFILING MODEL ######################')
hls4ml.model.profiling.numerical(model=model, hls_model=hls_model)
print('###################### PLOTTING MODEL ######################')
hls4ml.utils.plot_model(hls_model, show_shapes=True, show_precision=True, to_file=None)
print('###################### PRINTING REPORT  ######################')
def safe_find(element, path):
    found = element.find(path)
    return found.text if found is not None else "N/A"

def read_hls_reports(directory):
    # Read csynth.xml
    csynth_path = f"{directory}/csynth.xml"
    tree = ET.parse(csynth_path)
    root = tree.getroot()
    
    print("Synthesis Report Summary:")
    print("-------------------------")

    # Performance estimates
    print("\nPerformance Estimates:")
    for profile in root.findall('./PerformanceEstimates/SummaryOfOverallLatency'):
        print(f"  Best-case latency: {safe_find(profile, 'Best-caseLatency')}")
        print(f"  Worst-case latency: {safe_find(profile, 'Worst-caseLatency')}")
        print(f"  Interval-min: {safe_find(profile, 'Interval-min')}")
        print(f"  Interval-max: {safe_find(profile, 'Interval-max')}")

    # Area estimates
    print("\nArea Estimates:")
    for area in root.findall('./AreaEstimates/Resources'):
        print(f"  BRAM_18K: {safe_find(area, 'BRAM_18K')}")
        print(f"  DSP: {safe_find(area, 'DSP')} (or DSP48E: {safe_find(area, 'DSP48E')})")
        print(f"  FF: {safe_find(area, 'FF')}")
        print(f"  LUT: {safe_find(area, 'LUT')}")
        print(f"  URAM: {safe_find(area, 'URAM')}")

    # Interface summary
    print("\nInterface Summary:")
    for interface in root.findall('./InterfaceSummary/RtlPorts'):
        print(f"  {safe_find(interface, 'name')}: {safe_find(interface, 'object')}")

    # Read myproject_csynth.rpt for more detailed information
    rpt_path = f"{directory}/myproject_csynth.rpt"
    try:
        with open(rpt_path, 'r') as f:
            rpt_content = f.read()
            
        print("\nDetailed Synthesis Report:")
        print("---------------------------")
        
        # Extract timing information
        timing_section = rpt_content.split("Timing (ns)")
        if len(timing_section) > 1:
            timing_info = timing_section[1].split("\n\n")[0]
            print("\nTiming (ns):")
            print(timing_info)
        else:
            print("\nTiming information not found in the report.")
        
        # Extract utilization estimates
        utilization_section = rpt_content.split("Utilization Estimates")
        if len(utilization_section) > 1:
            utilization_info = utilization_section[1].split("\n\n")[0]
            print("\nUtilization Estimates:")
            print(utilization_info)
        else:
            print("\nUtilization estimates not found in the report.")
        
    except FileNotFoundError:
        print(f"Could not find {rpt_path}")

# Use the function
read_hls_reports('./alex_model/myproject_prj/solution1/syn/report')
print('###################### TESTING MODEL  ######################')

def read_data_from_file(file_path):
    data = np.loadtxt(file_path)
    if data.ndim == 1:
        # If it's a 1D array, reshape it to a column vector
        return data.reshape(-1, 1)
    else:
        # If it's a 2D array, return as is
        return data
    
# TEST MODEL
def testModel():
    input_data_file_path = './4_slice_test_inputs.dat'
    output_data_file_path = './single_test_outputs.dat'

    data = read_data_from_file(input_data_file_path)
    y_sum_test = read_data_from_file(output_data_file_path)

    print('###################### TEST DATASET HAS BEEN LOADED  ######################')

    X_sum_test = data[:, :104]  # All rows, first 104 columns
    y0_test = data[:, 104]  # All rows, last column
    X_sum_test = X_sum_test.reshape(-1, 8, 13)  #
    y_sum_test = y_sum_test.reshape(-1, 1)
    print("y_sum = ",  np.sum(y_sum_test))

    # perfect_pred = model.predict([X_sum_test, y0_test])
    pred = hls_model.predict([np.ascontiguousarray(X_sum_test), np.ascontiguousarray(y0_test)])
    hls_model.compile()

    thresholds = np.linspace(0, 1, 1000)
    signal_efficiencies = []
    background_rejections = []

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
        sorted_array = np.array(sorted_array)
        abs_diff = np.abs(sorted_array - value)
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

testModel()

