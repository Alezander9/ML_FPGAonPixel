#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 105
#define N_LAYER_2 32
#define N_LAYER_2 32
#define N_LAYER_2 32
#define N_LAYER_2 32
#define N_LAYER_2 32
#define N_LAYER_6 16
#define N_LAYER_6 16
#define N_LAYER_6 16
#define N_LAYER_6 16
#define N_LAYER_6 16
#define N_LAYER_10 3
#define N_LAYER_10 3
#define N_LAYER_10 3
#define N_LAYER_10 3

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<16,6>, 105*1> input_t;
typedef ap_fixed<15,5> model_default_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer2_t;
typedef ap_fixed<10,1> weight2_t;
typedef ap_fixed<10,1> bias2_t;
typedef ap_uint<1> layer2_index;
typedef nnet::array<ap_fixed<15,5>, 32*1> layer13_t;
typedef struct exponent_scale13_t {ap_uint<1> sign;ap_int<3> weight; } exponent_scale13_t;
typedef ap_fixed<10,1> bias13_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer3_t;
typedef ap_fixed<18,8> dense1_linear_table_t;
typedef nnet::array<ap_ufixed<15,0,AP_RND_CONV,AP_SAT>, 32*1> layer4_t;
typedef ap_fixed<18,8> q_activation_9_table_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer5_t;
typedef ap_fixed<16,6> batch_normalization_9_scale_t;
typedef ap_fixed<15,5> batch_normalization_9_bias_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer6_t;
typedef ap_fixed<10,1> weight6_t;
typedef ap_fixed<10,1> bias6_t;
typedef ap_uint<1> layer6_index;
typedef nnet::array<ap_fixed<15,5>, 16*1> layer14_t;
typedef struct exponent_scale14_t {ap_uint<1> sign;ap_int<2> weight; } exponent_scale14_t;
typedef ap_fixed<10,1> bias14_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer7_t;
typedef ap_fixed<18,8> dense2_linear_table_t;
typedef nnet::array<ap_ufixed<15,0,AP_RND_CONV,AP_SAT>, 16*1> layer8_t;
typedef ap_fixed<18,8> q_activation_10_table_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer9_t;
typedef ap_fixed<16,6> batch_normalization_10_scale_t;
typedef ap_fixed<15,5> batch_normalization_10_bias_t;
typedef nnet::array<ap_fixed<16,6>, 3*1> layer10_t;
typedef ap_fixed<10,1> weight10_t;
typedef ap_fixed<10,1> bias10_t;
typedef ap_uint<1> layer10_index;
typedef nnet::array<ap_fixed<15,5>, 3*1> layer15_t;
typedef struct exponent_scale15_t {ap_uint<1> sign;ap_int<2> weight; } exponent_scale15_t;
typedef ap_fixed<10,1> bias15_t;
typedef nnet::array<ap_fixed<16,6>, 3*1> layer11_t;
typedef ap_fixed<18,8> dense_output_linear_table_t;
typedef nnet::array<ap_fixed<16,6>, 3*1> result_t;
typedef ap_fixed<18,8> output_softmax_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> output_softmax_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> output_softmax_inv_table_t;

#endif
