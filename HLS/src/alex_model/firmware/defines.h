#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 105
#define N_LAYER_2 72
#define N_LAYER_2 72
#define N_LAYER_2 72
#define N_LAYER_2 72
#define N_LAYER_2 72
#define N_LAYER_6 3
#define N_LAYER_6 3
#define N_LAYER_6 3
#define N_LAYER_6 3

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<16,6> input_t;
typedef ap_fixed<15,5> model_default_t;
typedef ap_fixed<16,6> layer2_t;
typedef ap_fixed<10,1> weight2_t;
typedef ap_fixed<10,1> bias2_t;
typedef ap_uint<1> layer2_index;
typedef ap_fixed<15,5> layer9_t;
typedef struct exponent_scale9_t {ap_uint<1> sign;ap_int<3> weight; } exponent_scale9_t;
typedef ap_fixed<10,1> bias9_t;
typedef ap_fixed<16,6> layer3_t;
typedef ap_fixed<18,8> dense1_linear_table_t;
typedef ap_ufixed<15,0,AP_RND_CONV,AP_SAT> layer4_t;
typedef ap_fixed<18,8> q_activation_2_table_t;
typedef ap_fixed<16,6> layer5_t;
typedef ap_fixed<16,6> batch_normalization_2_scale_t;
typedef ap_fixed<15,5> batch_normalization_2_bias_t;
typedef ap_fixed<16,6> layer6_t;
typedef ap_fixed<10,1> weight6_t;
typedef ap_fixed<10,1> bias6_t;
typedef ap_uint<1> layer6_index;
typedef ap_fixed<15,5> layer10_t;
typedef struct exponent_scale10_t {ap_uint<1> sign;ap_int<2> weight; } exponent_scale10_t;
typedef ap_fixed<10,1> bias10_t;
typedef ap_fixed<16,6> layer7_t;
typedef ap_fixed<18,8> dense_output_linear_table_t;
typedef ap_fixed<16,6> result_t;
typedef ap_fixed<18,8> output_softmax_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> output_softmax_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> output_softmax_inv_table_t;

#endif
