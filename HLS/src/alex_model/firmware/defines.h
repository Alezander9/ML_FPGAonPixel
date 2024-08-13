#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 53
#define N_LAYER_2 24
#define N_LAYER_2 24
#define N_LAYER_2 24
#define N_LAYER_6 12
#define N_LAYER_6 12
#define N_LAYER_6 12
#define N_LAYER_10 1

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<15,2> input_t;
typedef ap_fixed<16,6> model_default_t;
typedef ap_fixed<15,2> layer2_t;
typedef ap_fixed<10,3> weight2_t;
typedef ap_fixed<10,3> bias2_t;
typedef ap_uint<1> layer2_index;
typedef ap_fixed<15,2> layer4_t;
typedef ap_fixed<16,6> batch_normalization_scale_t;
typedef ap_fixed<10,2> batch_normalization_bias_t;
typedef ap_fixed<15,2> layer5_t;
typedef ap_fixed<18,8> q_activation_table_t;
typedef ap_fixed<15,2> layer6_t;
typedef ap_fixed<10,3> weight6_t;
typedef ap_fixed<10,3> bias6_t;
typedef ap_uint<1> layer6_index;
typedef ap_fixed<15,2> layer8_t;
typedef ap_fixed<16,6> batch_normalization_1_scale_t;
typedef ap_fixed<10,2> batch_normalization_1_bias_t;
typedef ap_fixed<15,2> layer9_t;
typedef ap_fixed<18,8> q_activation_1_table_t;
typedef ap_fixed<15,2> result_t;
typedef ap_fixed<10,3> weight10_t;
typedef ap_fixed<10,3> bias10_t;
typedef ap_uint<1> layer10_index;

#endif
