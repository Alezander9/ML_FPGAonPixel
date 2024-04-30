#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 8
#define N_INPUT_2_1 13
#define N_INPUT_3_1 1
#define OUT_HEIGHT_19 10
#define OUT_WIDTH_19 15
#define N_CHAN_19 1
#define OUT_HEIGHT_2 8
#define OUT_WIDTH_2 13
#define N_FILT_2 2
#define OUT_HEIGHT_2 8
#define OUT_WIDTH_2 13
#define N_FILT_2 2
#define OUT_HEIGHT_5 4
#define OUT_WIDTH_5 6
#define N_FILT_5 2
#define OUT_HEIGHT_20 6
#define OUT_WIDTH_20 8
#define N_CHAN_20 2
#define OUT_HEIGHT_6 4
#define OUT_WIDTH_6 6
#define N_FILT_6 4
#define OUT_HEIGHT_6 4
#define OUT_WIDTH_6 6
#define N_FILT_6 4
#define OUT_HEIGHT_9 2
#define OUT_WIDTH_9 3
#define N_FILT_9 4
#define N_SIZE_0_10 24
#define N_INPUT_1_11 1
#define OUT_CONCAT_12 25
#define N_LAYER_13 4
#define N_LAYER_13 4
#define N_LAYER_16 1
#define N_LAYER_16 1

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<16,6>, 1*1> input_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer19_t;
typedef ap_fixed<32,10> model_default_t;
typedef nnet::array<ap_fixed<16,6>, 2*1> layer2_t;
typedef ap_fixed<24,9> weight2_t;
typedef ap_fixed<24,9> bias2_t;
typedef nnet::array<ap_ufixed<24,8,AP_RND_CONV,AP_SAT>, 2*1> layer4_t;
typedef ap_fixed<18,8> q_activation_9_table_t;
typedef nnet::array<ap_fixed<16,6>, 2*1> layer5_t;
typedef nnet::array<ap_fixed<16,6>, 2*1> layer20_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer6_t;
typedef ap_fixed<24,9> weight6_t;
typedef ap_fixed<24,9> bias6_t;
typedef nnet::array<ap_ufixed<24,8,AP_RND_CONV,AP_SAT>, 4*1> layer8_t;
typedef ap_fixed<18,8> q_activation_10_table_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer9_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> input11_t;
typedef nnet::array<ap_fixed<16,6>, 25*1> layer12_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer13_t;
typedef ap_fixed<24,9> weight13_t;
typedef ap_fixed<24,9> bias13_t;
typedef ap_uint<1> layer13_index;
typedef nnet::array<ap_ufixed<24,8,AP_RND_CONV,AP_SAT>, 4*1> layer15_t;
typedef ap_fixed<18,8> q_activation_11_table_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer16_t;
typedef ap_fixed<24,9> weight16_t;
typedef ap_fixed<24,9> bias16_t;
typedef ap_uint<1> layer16_index;
typedef nnet::array<ap_fixed<16,6>, 1*1> result_t;
typedef ap_fixed<18,8> output_sigmoid_table_t;

#endif
