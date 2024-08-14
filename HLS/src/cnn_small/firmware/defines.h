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
typedef nnet::array<ap_fixed<16,6>, 53*1> input_t;
typedef ap_fixed<15,5> model_default_t;
typedef nnet::array<ap_fixed<16,6>, 24*1> layer2_t;
typedef ap_fixed<10,1> weight2_t;
typedef ap_fixed<10,1> bias2_t;
typedef ap_uint<1> layer2_index;
typedef nnet::array<ap_fixed<16,6>, 24*1> layer4_t;
typedef ap_fixed<16,6> batch_normalization_9_scale_t;
typedef ap_fixed<15,5> batch_normalization_9_bias_t;
typedef nnet::array<ap_ufixed<15,0,AP_RND_CONV,AP_SAT>, 24*1> layer5_t;
typedef ap_fixed<18,8> q_activation_8_table_t;
typedef nnet::array<ap_fixed<16,6>, 12*1> layer6_t;
typedef ap_fixed<10,1> weight6_t;
typedef ap_fixed<10,1> bias6_t;
typedef ap_uint<1> layer6_index;
typedef nnet::array<ap_fixed<16,6>, 12*1> layer8_t;
typedef ap_fixed<16,6> batch_normalization_10_scale_t;
typedef ap_fixed<15,5> batch_normalization_10_bias_t;
typedef nnet::array<ap_ufixed<15,0,AP_RND_CONV,AP_SAT>, 12*1> layer9_t;
typedef ap_fixed<18,8> q_activation_9_table_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> result_t;
typedef ap_fixed<10,1> weight10_t;
typedef ap_fixed<10,1> bias10_t;
typedef ap_uint<1> layer10_index;

#endif
