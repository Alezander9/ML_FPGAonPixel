import conifer
#import plotting
from joblib import dump
import joblib
from scipy.special import softmax, expit as sigmoid
import os
import numpy as np
os.environ['PATH'] = os.environ['XILINX_VIVADO'] + '/bin:' + os.environ['PATH']
os.environ['PATH'] = os.environ['XILINX_VITIS'] + '/bin:' + os.environ['PATH']
os.environ['PATH'] = os.environ['XILINX_AP_INCLUDE'] + '/bin:' + os.environ['PATH']

# Path to the saved model
#model_path = '/u1/hjia625/Best_BDT_small.model'

#skl_model_path = '/u1/hjia625/bestsofar_small_bdt_2class.joblib'
skl_model_path = '/u1/hjia625/conifer/best_unscaled_small_bdt_2class.joblib'
#skl_model_path = '/u1/hjia625/conifer/small_bdt_2class.joblib'
clf = joblib.load(skl_model_path)
# Load the model

#model  = xgb.XGBClassifier()
#model.load_model(model_path)

cfg = conifer.backends.xilinxhls.auto_config()
cfg['OutputDir'] =  'final_prj_unscaled_testforscore'
cfg['XilinxPart'] = 'xcku040-ffva1156-2-e'
cfg['ClockPeriod'] = '25'
cfg['Precision'] = 'ap_fixed<28,19>'
#cfg['IOType'] = 'io_serial'
#cfg['Precision'] = 'float'
def print_dict(d):
    for key, value in d.items():
        print(f"{key}: {value}")
print_dict(cfg)

#conifer_model = conifer.model(clf, conifer.converters.sklearn, conifer.backends.vitishls, cfg)
#conifer_model = conifer.converters.convert_from_xgboost(model, cfg)
conifer_model = conifer.converters.convert_from_sklearn(clf, cfg)

conifer_model.compile()
conifer_model.profile()
conifer_model.build()
#X = np.ones((2, 14))
X = np.genfromtxt('test_xgb.txt', delimiter='')
y_sum_test = np.loadtxt('xgb_result.dat')

#print(X)
#print(conifer_model.decision_function(X))
y_cnf = sigmoid(conifer_model.decision_function(X))

#y_cnf = softmax(conifer_model.decision_function(X), axis=1)
X_xgb = X  # Assuming X is already in the correct format (numpy array)
predictor = 'predict_proba'  # or 'predict' depending on what you're comparing
#y_xgb = getattr(model, predictor)(X_xgb)
y_xgb = getattr(clf, predictor)(X_xgb)

#print("original: ")
#for row in y_xgb:
    #print(','.join(['{:.5f}'.format(num) for num in row]))
#print("synthesized: ")
#for row in y_cnf:
    #print(','.join(['{:.5f}'.format(1-row)]))

#if len(y_xgb.shape) == 2 and y_xgb.shape[1] == 2:
    #y_xgb = y_xgb[:, -1]  # Taking the probability of the positive class
#np.testing.assert_array_almost_equal(y_cnf, y_xgb, decimal=1)  # Adjust decimal as needed for your precision requirements
print(y_xgb)
print(y_cnf)
#label_xgb = np.argmax(y_xgb, axis=1)
label_xgb = (y_xgb[:,0] > 0.5001).astype(int)
#label_cnf = np.argmax(y_cnf, axis=1)
label_cnf = (y_cnf <= 0.4999).astype(int)
software_xgb_output = y_xgb[:,1] 
decision_function_output = conifer_model.decision_function(X)
filename = "decision_function_output.txt"
sft_filename = "software_xgb_output.txt"
with open(filename, "w") as file:
    for value in np.nditer(decision_function_output):
        file.write(f"{value}\n")

with open(sft_filename, "w") as file:
    for value in np.nditer(software_xgb_output):
        file.write(f"{np.log(value) - np.log(1 - value)}\n")

print(f"Output successfully written to {filename}")
print(f"Software level output successfully written to {sft_filename}")

# np.testing.assert_array_almost_equal(label_xgb, label_cnf, decimal=2)  # Adjust decimal as needed for your precision requirements
from sklearn.metrics import confusion_matrix

thresholds = np.linspace(0.0, 1.0, 1000)
signal_efficiencies = []
background_rejections = []

import matplotlib.pyplot as plt
import seaborn as sns
for threshold in thresholds:
    predicted_class = (y_xgb[:,0] > threshold).astype(int)

    # Compute confusion matrix
    cm = confusion_matrix(y_sum_test, predicted_class)

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

index_700 = find_closest(signal_efficiencies, 0.7)
index_800 = find_closest(signal_efficiencies, 0.8)
index_900 = find_closest(signal_efficiencies, 0.9)
index_933 = find_closest(signal_efficiencies, 0.933)
index_950 = find_closest(signal_efficiencies, 0.95)
index_995 = find_closest(signal_efficiencies, 0.995)
index_997 = find_closest(signal_efficiencies, 0.997)

print(f"Signal Efficiency:{signal_efficiencies[index_700]*100:.1f}%",f"Background Rejections:{background_rejections[index_700]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_800]*100:.1f}%",f"Background Rejections:{background_rejections[index_800]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_900]*100:.1f}%",f"Background Rejections:{background_rejections[index_900]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_933]*100:.1f}%",f"Background Rejections:{background_rejections[index_933]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_950]*100:.1f}%",f"Background Rejections:{background_rejections[index_950]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_995]*100:.1f}%",f"Background Rejections:{background_rejections[index_995]*100:.1f}%")
print(f"Signal Efficiency:{signal_efficiencies[index_997]*100:.1f}%",f"Background Rejections:{background_rejections[index_997]*100:.1f}%")

