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
#define N_FILT_2 4
#define OUT_HEIGHT_2 8
#define OUT_WIDTH_2 13
#define N_FILT_2 4
#define OUT_HEIGHT_5 4
#define OUT_WIDTH_5 6
#define N_FILT_5 4
#define OUT_HEIGHT_20 6
#define OUT_WIDTH_20 8
#define N_CHAN_20 4
#define OUT_HEIGHT_6 4
#define OUT_WIDTH_6 6
#define N_FILT_6 7
#define OUT_HEIGHT_6 4
#define OUT_WIDTH_6 6
#define N_FILT_6 7
#define OUT_HEIGHT_9 2
#define OUT_WIDTH_9 3
#define N_FILT_9 7
#define N_SIZE_0_10 42
#define N_INPUT_1_11 1
#define OUT_CONCAT_12 43
#define N_LAYER_13 7
#define N_LAYER_13 7
#define N_LAYER_16 1
#define N_LAYER_16 1

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<16,6>, 1*1> input_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer19_t;
typedef ap_fixed<15,5> model_default_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer2_t;
typedef ap_fixed<10,3> weight2_t;
typedef ap_fixed<10,3> bias2_t;
typedef nnet::array<ap_ufixed<10,0,AP_RND_CONV,AP_SAT>, 4*1> layer4_t;
typedef ap_fixed<18,8> q_activation_3_table_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer5_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer20_t;
typedef nnet::array<ap_fixed<16,6>, 7*1> layer6_t;
typedef ap_fixed<10,3> weight6_t;
typedef ap_fixed<10,3> bias6_t;
typedef nnet::array<ap_ufixed<10,0,AP_RND_CONV,AP_SAT>, 7*1> layer8_t;
typedef ap_fixed<18,8> q_activation_4_table_t;
typedef nnet::array<ap_fixed<16,6>, 7*1> layer9_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> input11_t;
typedef nnet::array<ap_fixed<16,6>, 43*1> layer12_t;
typedef nnet::array<ap_fixed<16,6>, 7*1> layer13_t;
typedef ap_fixed<10,3> weight13_t;
typedef ap_fixed<10,3> bias13_t;
typedef ap_uint<1> layer13_index;
typedef nnet::array<ap_ufixed<10,0,AP_RND_CONV,AP_SAT>, 7*1> layer15_t;
typedef ap_fixed<18,8> q_activation_5_table_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer16_t;
typedef ap_fixed<10,3> weight16_t;
typedef ap_fixed<10,3> bias16_t;
typedef ap_uint<1> layer16_index;
typedef nnet::array<ap_fixed<16,6>, 1*1> result_t;
typedef ap_fixed<18,8> output_sigmoid_table_t;

#endif
