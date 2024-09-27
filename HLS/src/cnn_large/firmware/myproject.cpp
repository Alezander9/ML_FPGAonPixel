#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    hls::stream<input_t> &y_profile_input, hls::stream<input11_t> &y0_input,
    hls::stream<result_t> &layer18_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=y_profile_input,y0_input,layer18_out 
    #pragma HLS DATAFLOW 

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<weight2_t, 72>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 8>(b2, "b2.txt");
        nnet::load_weights_from_txt<weight6_t, 936>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 13>(b6, "b6.txt");
        nnet::load_weights_from_txt<weight13_t, 1027>(w13, "w13.txt");
        nnet::load_weights_from_txt<bias13_t, 13>(b13, "b13.txt");
        nnet::load_weights_from_txt<weight16_t, 13>(w16, "w16.txt");
        nnet::load_weights_from_txt<bias16_t, 1>(b16, "b16.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer19_t> layer19_out("layer19_out");
    #pragma HLS STREAM variable=layer19_out depth=150
    nnet::zeropad2d_cl<input_t, layer19_t, config19>(y_profile_input, layer19_out); // zp2d_conv1

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=104
    nnet::conv_2d_cl<layer19_t, layer2_t, config2>(layer19_out, layer2_out, w2, b2); // conv1

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=104
    nnet::relu<layer2_t, layer4_t, relu_config4>(layer2_out, layer4_out); // q_activation_9

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=24
    nnet::pooling2d_cl<layer4_t, layer5_t, config5>(layer4_out, layer5_out); // maxpool1

    hls::stream<layer20_t> layer20_out("layer20_out");
    #pragma HLS STREAM variable=layer20_out depth=48
    nnet::zeropad2d_cl<layer5_t, layer20_t, config20>(layer5_out, layer20_out); // zp2d_conv2

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=24
    nnet::conv_2d_cl<layer20_t, layer6_t, config6>(layer20_out, layer6_out, w6, b6); // conv2

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=24
    nnet::relu<layer6_t, layer8_t, relu_config8>(layer6_out, layer8_out); // q_activation_10

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=6
    nnet::pooling2d_cl<layer8_t, layer9_t, config9>(layer8_out, layer9_out); // maxpool2

    auto& layer10_out = layer9_out;
    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=1
    nnet::concatenate1d<layer9_t, input11_t, layer12_t, config12>(layer10_out, y0_input, layer12_out); // concat

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=1
    nnet::dense<layer12_t, layer13_t, config13>(layer12_out, layer13_out, w13, b13); // dense1

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=1
    nnet::relu<layer13_t, layer15_t, relu_config15>(layer13_out, layer15_out); // q_activation_11

    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=1
    nnet::dense<layer15_t, layer16_t, config16>(layer15_out, layer16_out, w16, b16); // dense2

    nnet::sigmoid<layer16_t, result_t, sigmoid_config18>(layer16_out, layer18_out); // output_sigmoid

}
