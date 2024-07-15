#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    hls::stream<input_t> &y_timed_input,
    hls::stream<result_t> &layer12_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=y_timed_input,layer12_out 
    #pragma HLS DATAFLOW 

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<weight2_t, 3360>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 32>(b2, "b2.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale13_t, 32>(s13, "s13.txt");
        nnet::load_weights_from_txt<bias13_t, 32>(b13, "b13.txt");
        nnet::load_weights_from_txt<batch_normalization_9_scale_t, 32>(s5, "s5.txt");
        nnet::load_weights_from_txt<batch_normalization_9_bias_t, 32>(b5, "b5.txt");
        nnet::load_weights_from_txt<weight6_t, 512>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 16>(b6, "b6.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale14_t, 16>(s14, "s14.txt");
        nnet::load_weights_from_txt<bias14_t, 16>(b14, "b14.txt");
        nnet::load_weights_from_txt<batch_normalization_10_scale_t, 16>(s9, "s9.txt");
        nnet::load_weights_from_txt<batch_normalization_10_bias_t, 16>(b9, "b9.txt");
        nnet::load_weights_from_txt<weight10_t, 48>(w10, "w10.txt");
        nnet::load_weights_from_txt<bias10_t, 3>(b10, "b10.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale15_t, 3>(s15, "s15.txt");
        nnet::load_weights_from_txt<bias15_t, 3>(b15, "b15.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=1
    nnet::dense<input_t, layer2_t, config2>(y_timed_input, layer2_out, w2, b2); // dense1

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=1
    nnet::normalize<layer2_t, layer13_t, config13>(layer2_out, layer13_out, s13, b13); // dense1_alpha

    hls::stream<layer3_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=1
    nnet::linear<layer13_t, layer3_t, linear_config3>(layer13_out, layer3_out); // dense1_linear

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=1
    nnet::relu<layer3_t, layer4_t, relu_config4>(layer3_out, layer4_out); // q_activation_9

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=1
    nnet::normalize<layer4_t, layer5_t, config5>(layer4_out, layer5_out, s5, b5); // batch_normalization_9

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=1
    nnet::dense<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // dense2

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=1
    nnet::normalize<layer6_t, layer14_t, config14>(layer6_out, layer14_out, s14, b14); // dense2_alpha

    hls::stream<layer7_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=1
    nnet::linear<layer14_t, layer7_t, linear_config7>(layer14_out, layer7_out); // dense2_linear

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=1
    nnet::relu<layer7_t, layer8_t, relu_config8>(layer7_out, layer8_out); // q_activation_10

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=1
    nnet::normalize<layer8_t, layer9_t, config9>(layer8_out, layer9_out, s9, b9); // batch_normalization_10

    hls::stream<layer10_t> layer10_out("layer10_out");
    #pragma HLS STREAM variable=layer10_out depth=1
    nnet::dense<layer9_t, layer10_t, config10>(layer9_out, layer10_out, w10, b10); // dense_output

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=1
    nnet::normalize<layer10_t, layer15_t, config15>(layer10_out, layer15_out, s15, b15); // dense_output_alpha

    hls::stream<layer11_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=1
    nnet::linear<layer15_t, layer11_t, linear_config11>(layer15_out, layer11_out); // dense_output_linear

    nnet::softmax<layer11_t, result_t, softmax_config12>(layer11_out, layer12_out); // output_softmax

}
