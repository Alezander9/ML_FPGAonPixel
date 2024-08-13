#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    input_t y_timed_input[N_INPUT_1_1],
    result_t layer10_out[N_LAYER_10]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=y_timed_input complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer10_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=y_timed_input,layer10_out 
    #pragma HLS PIPELINE 

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<weight2_t, 1272>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 24>(b2, "b2.txt");
        nnet::load_weights_from_txt<batch_normalization_scale_t, 24>(s4, "s4.txt");
        nnet::load_weights_from_txt<batch_normalization_bias_t, 24>(b4, "b4.txt");
        nnet::load_weights_from_txt<weight6_t, 288>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 12>(b6, "b6.txt");
        nnet::load_weights_from_txt<batch_normalization_1_scale_t, 12>(s8, "s8.txt");
        nnet::load_weights_from_txt<batch_normalization_1_bias_t, 12>(b8, "b8.txt");
        nnet::load_weights_from_txt<weight10_t, 12>(w10, "w10.txt");
        nnet::load_weights_from_txt<bias10_t, 1>(b10, "b10.txt");
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

    layer4_t layer4_out[N_LAYER_2];
    #pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0
    nnet::normalize<layer2_t, layer4_t, config4>(layer2_out, layer4_out, s4, b4); // batch_normalization

    layer5_t layer5_out[N_LAYER_2];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
    nnet::relu<layer4_t, layer5_t, relu_config5>(layer4_out, layer5_out); // q_activation

    layer6_t layer6_out[N_LAYER_6];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
    nnet::dense<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // dense2

    layer8_t layer8_out[N_LAYER_6];
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0
    nnet::normalize<layer6_t, layer8_t, config8>(layer6_out, layer8_out, s8, b8); // batch_normalization_1

    layer9_t layer9_out[N_LAYER_6];
    #pragma HLS ARRAY_PARTITION variable=layer9_out complete dim=0
    nnet::relu<layer8_t, layer9_t, relu_config9>(layer8_out, layer9_out); // q_activation_1

    nnet::dense<layer9_t, result_t, config10>(layer9_out, layer10_out, w10, b10); // dense_output

}
