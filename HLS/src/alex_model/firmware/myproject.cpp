#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    input_t y_profile_input[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    result_t layer7_out[N_LAYER_7]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=y_profile_input complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer7_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=y_profile_input,layer7_out 
    #pragma HLS PIPELINE 

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<weight3_t, 1664>(w3, "w3.txt");
        nnet::load_weights_from_txt<bias3_t, 32>(b3, "b3.txt");
        nnet::load_weights_from_txt<batch_normalization_scale_t, 32>(s6, "s6.txt");
        nnet::load_weights_from_txt<batch_normalization_bias_t, 32>(b6, "b6.txt");
        nnet::load_weights_from_txt<weight7_t, 512>(w7, "w7.txt");
        nnet::load_weights_from_txt<bias7_t, 16>(b7, "b7.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    auto& layer2_out = y_profile_input;
    layer3_t layer3_out[N_LAYER_3];
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
    nnet::dense<input_t, layer3_t, config3>(layer2_out, layer3_out, w3, b3); // dense1

    layer5_t layer5_out[N_LAYER_3];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
    nnet::relu<layer3_t, layer5_t, relu_config5>(layer3_out, layer5_out); // q_activation

    layer6_t layer6_out[N_LAYER_3];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
    nnet::normalize<layer5_t, layer6_t, config6>(layer5_out, layer6_out, s6, b6); // batch_normalization

    nnet::dense<layer6_t, result_t, config7>(layer6_out, layer7_out, w7, b7); // latent_space

}
