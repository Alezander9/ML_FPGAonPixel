#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    input_t y_timed_input[N_INPUT_1_1],
    result_t layer8_out[N_LAYER_6]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=y_timed_input complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=y_timed_input,layer8_out 
    #pragma HLS PIPELINE 

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<weight2_t, 7560>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 72>(b2, "b2.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale9_t, 72>(s9, "s9.txt");
        nnet::load_weights_from_txt<bias9_t, 72>(b9, "b9.txt");
        nnet::load_weights_from_txt<batch_normalization_2_scale_t, 72>(s5, "s5.txt");
        nnet::load_weights_from_txt<batch_normalization_2_bias_t, 72>(b5, "b5.txt");
        nnet::load_weights_from_txt<weight6_t, 216>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 3>(b6, "b6.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale10_t, 3>(s10, "s10.txt");
        nnet::load_weights_from_txt<bias10_t, 3>(b10, "b10.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    layer2_t layer2_out[N_LAYER_2];
    #pragma HLS ARRAY_PARTITION variable=layer2_out complete dim=0
    nnet::dense<input_t, layer2_t, config2>(y_timed_input, layer2_out, w2, b2); // dense1

    layer9_t layer9_out[N_LAYER_2];
    #pragma HLS ARRAY_PARTITION variable=layer9_out complete dim=0
    nnet::normalize<layer2_t, layer9_t, config9>(layer2_out, layer9_out, s9, b9); // dense1_alpha

    layer3_t layer3_out[N_LAYER_2];
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
    nnet::linear<layer9_t, layer3_t, linear_config3>(layer9_out, layer3_out); // dense1_linear

    layer4_t layer4_out[N_LAYER_2];
    #pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0
    nnet::relu<layer3_t, layer4_t, relu_config4>(layer3_out, layer4_out); // q_activation_2

    layer5_t layer5_out[N_LAYER_2];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
    nnet::normalize<layer4_t, layer5_t, config5>(layer4_out, layer5_out, s5, b5); // batch_normalization_2

    layer6_t layer6_out[N_LAYER_6];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
    nnet::dense<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // dense_output

    layer10_t layer10_out[N_LAYER_6];
    #pragma HLS ARRAY_PARTITION variable=layer10_out complete dim=0
    nnet::normalize<layer6_t, layer10_t, config10>(layer6_out, layer10_out, s10, b10); // dense_output_alpha

    layer7_t layer7_out[N_LAYER_6];
    #pragma HLS ARRAY_PARTITION variable=layer7_out complete dim=0
    nnet::linear<layer10_t, layer7_t, linear_config7>(layer10_out, layer7_out); // dense_output_linear

    nnet::softmax<layer7_t, result_t, softmax_config8>(layer7_out, layer8_out); // output_softmax

}
