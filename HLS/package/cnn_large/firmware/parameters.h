#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "ap_fixed.h"
#include "ap_int.h"

#include "nnet_utils/nnet_code_gen.h"
#include "nnet_utils/nnet_helpers.h"
// hls-fpga-machine-learning insert includes
#include "nnet_utils/nnet_activation.h"
#include "nnet_utils/nnet_activation_stream.h"
#include "nnet_utils/nnet_conv2d.h"
#include "nnet_utils/nnet_conv2d_stream.h"
#include "nnet_utils/nnet_dense.h"
#include "nnet_utils/nnet_dense_compressed.h"
#include "nnet_utils/nnet_dense_stream.h"
#include "nnet_utils/nnet_merge.h"
#include "nnet_utils/nnet_merge_stream.h"
#include "nnet_utils/nnet_padding.h"
#include "nnet_utils/nnet_padding_stream.h"
#include "nnet_utils/nnet_pooling.h"
#include "nnet_utils/nnet_pooling_stream.h"

// hls-fpga-machine-learning insert weights
#include "weights/w2.h"
#include "weights/b2.h"
#include "weights/w6.h"
#include "weights/b6.h"
#include "weights/w13.h"
#include "weights/b13.h"
#include "weights/w16.h"
#include "weights/b16.h"

// hls-fpga-machine-learning insert layer-config
// zp2d_conv1
struct config19 : nnet::padding2d_config {
    static const unsigned in_height = 8;
    static const unsigned in_width = 13;
    static const unsigned n_chan = 1;
    static const unsigned out_height = 10;
    static const unsigned out_width = 15;
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
};

// conv1
struct config2_mult : nnet::dense_config {
    static const unsigned n_in = 9;
    static const unsigned n_out = 8;
    static const unsigned reuse_factor = 1;
    static const unsigned strategy = nnet::resource;
    static const unsigned n_zeros = 0;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    typedef model_default_t accum_t;
    typedef bias2_t bias_t;
    typedef weight2_t weight_t;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

struct config2 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = 10;
    static const unsigned in_width = 15;
    static const unsigned n_chan = 1;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = 8;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = 8;
    static const unsigned out_width = 13;
    static const unsigned reuse_factor = 1;
    static const unsigned n_zeros = 0;
    static const unsigned multiplier_limit =
        DIV_ROUNDUP(kernel_size * n_chan * n_filt, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    static const unsigned n_partitions = 104;
    static const unsigned n_pixels = out_height * out_width / n_partitions;
    template<class data_T, class CONFIG_T>
    using fill_buffer = nnet::FillConv2DBuffer<data_T, CONFIG_T>;
    typedef model_default_t accum_t;
    typedef bias2_t bias_t;
    typedef weight2_t weight_t;
    typedef config2_mult mult_config;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_height = nnet::scale_index_regular<K, S, W>;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_width = nnet::scale_index_regular<K, S, W>;
};
const ap_uint<config2::filt_height * config2::filt_width> config2::pixels[] = {1,3,7,6,4,9,27,63,54,36,73,219,511,438,292,72,216,504,432,288,64,192,448,384,256};

// q_activation_9
struct relu_config4 : nnet::activ_config {
    static const unsigned n_in = 832;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 1;
    typedef q_activation_9_table_t table_t;
};

// maxpool1
struct config5 : nnet::pooling2d_config {
    static const unsigned in_height = 8;
    static const unsigned in_width = 13;
    static const unsigned n_filt = 8;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;

    static const unsigned filt_height = pool_height;
    static const unsigned filt_width = pool_width;
    static const unsigned n_chan = n_filt;

    static const unsigned out_height = 4;
    static const unsigned out_width = 6;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const bool count_pad = false;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned reuse_factor = 1;
    typedef model_default_t accum_t;
};

// zp2d_conv2
struct config20 : nnet::padding2d_config {
    static const unsigned in_height = 4;
    static const unsigned in_width = 6;
    static const unsigned n_chan = 8;
    static const unsigned out_height = 6;
    static const unsigned out_width = 8;
    static const unsigned pad_top = 1;
    static const unsigned pad_bottom = 1;
    static const unsigned pad_left = 1;
    static const unsigned pad_right = 1;
};

// conv2
struct config6_mult : nnet::dense_config {
    static const unsigned n_in = 72;
    static const unsigned n_out = 13;
    static const unsigned reuse_factor = 1;
    static const unsigned strategy = nnet::resource;
    static const unsigned n_zeros = 11;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    typedef model_default_t accum_t;
    typedef bias6_t bias_t;
    typedef weight6_t weight_t;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

struct config6 : nnet::conv2d_config {
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_height = 6;
    static const unsigned in_width = 8;
    static const unsigned n_chan = 8;
    static const unsigned filt_height = 3;
    static const unsigned filt_width = 3;
    static const unsigned kernel_size = filt_height * filt_width;
    static const unsigned n_filt = 13;
    static const unsigned stride_height = 1;
    static const unsigned stride_width = 1;
    static const unsigned out_height = 4;
    static const unsigned out_width = 6;
    static const unsigned reuse_factor = 1;
    static const unsigned n_zeros = 11;
    static const unsigned multiplier_limit =
        DIV_ROUNDUP(kernel_size * n_chan * n_filt, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_height = 5;
    static const unsigned min_width = 5;
    static const ap_uint<filt_height * filt_width> pixels[min_height * min_width];
    static const unsigned n_partitions = 24;
    static const unsigned n_pixels = out_height * out_width / n_partitions;
    template<class data_T, class CONFIG_T>
    using fill_buffer = nnet::FillConv2DBuffer<data_T, CONFIG_T>;
    typedef model_default_t accum_t;
    typedef bias6_t bias_t;
    typedef weight6_t weight_t;
    typedef config6_mult mult_config;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_height = nnet::scale_index_regular<K, S, W>;
    template<unsigned K, unsigned S, unsigned W>
    using scale_index_width = nnet::scale_index_regular<K, S, W>;
};
const ap_uint<config6::filt_height * config6::filt_width> config6::pixels[] = {1,3,7,6,4,9,27,63,54,36,73,219,511,438,292,72,216,504,432,288,64,192,448,384,256};

// q_activation_10
struct relu_config8 : nnet::activ_config {
    static const unsigned n_in = 312;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 1;
    typedef q_activation_10_table_t table_t;
};

// maxpool2
struct config9 : nnet::pooling2d_config {
    static const unsigned in_height = 4;
    static const unsigned in_width = 6;
    static const unsigned n_filt = 13;
    static const unsigned stride_height = 2;
    static const unsigned stride_width = 2;
    static const unsigned pool_height = 2;
    static const unsigned pool_width = 2;

    static const unsigned filt_height = pool_height;
    static const unsigned filt_width = pool_width;
    static const unsigned n_chan = n_filt;

    static const unsigned out_height = 2;
    static const unsigned out_width = 3;
    static const unsigned pad_top = 0;
    static const unsigned pad_bottom = 0;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const bool count_pad = false;
    static const nnet::Pool_Op pool_op = nnet::Max;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned reuse_factor = 1;
    typedef model_default_t accum_t;
};

// concat
struct config12 : nnet::concat_config {
    static const unsigned n_elem1_0 = 78;
    static const unsigned n_elem1_1 = 0;
    static const unsigned n_elem1_2 = 0;
    static const unsigned n_elem2_0 = 1;
    static const unsigned n_elem2_1 = 0;
    static const unsigned n_elem2_2 = 0;

    static const int axis = -1;
};

// dense1
struct config13 : nnet::dense_config {
    static const unsigned n_in = 79;
    static const unsigned n_out = 13;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned strategy = nnet::resource;
    static const unsigned reuse_factor = 1;
    static const unsigned n_zeros = 258;
    static const unsigned n_nonzeros = 769;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    typedef model_default_t accum_t;
    typedef bias13_t bias_t;
    typedef weight13_t weight_t;
    typedef layer13_index index_t;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

// q_activation_11
struct relu_config15 : nnet::activ_config {
    static const unsigned n_in = 13;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 1;
    typedef q_activation_11_table_t table_t;
};

// dense2
struct config16 : nnet::dense_config {
    static const unsigned n_in = 13;
    static const unsigned n_out = 1;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned strategy = nnet::resource;
    static const unsigned reuse_factor = 1;
    static const unsigned n_zeros = 3;
    static const unsigned n_nonzeros = 10;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    typedef model_default_t accum_t;
    typedef bias16_t bias_t;
    typedef weight16_t weight_t;
    typedef layer16_index index_t;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

// output_sigmoid
struct sigmoid_config18 : nnet::activ_config {
    static const unsigned n_in = 1;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 1;
    typedef output_sigmoid_table_t table_t;
};


#endif
