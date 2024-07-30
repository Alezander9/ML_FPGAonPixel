#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 4
#define N_INPUT_2_1 13
#define N_INPUT_3_1 1
#define N_SIZE_0_2 52
#define N_LAYER_3 32
#define N_LAYER_3 32
#define N_LAYER_3 32
#define N_LAYER_7 16

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<15,2> input_t;
typedef ap_fixed<16,6> model_default_t;
typedef ap_fixed<15,2> layer3_t;
typedef ap_fixed<10,3> weight3_t;
typedef ap_fixed<10,3> bias3_t;
typedef ap_uint<1> layer3_index;
typedef ap_fixed<15,2> layer5_t;
typedef ap_fixed<18,8> q_activation_table_t;
typedef ap_fixed<15,2> layer6_t;
typedef ap_fixed<16,6> batch_normalization_scale_t;
typedef ap_fixed<10,2> batch_normalization_bias_t;
typedef ap_fixed<15,2> result_t;
typedef ap_fixed<10,3> weight7_t;
typedef ap_fixed<10,3> bias7_t;
typedef ap_uint<1> layer7_index;

#endif
