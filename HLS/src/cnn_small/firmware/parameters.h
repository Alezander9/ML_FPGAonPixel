#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "ap_fixed.h"
#include "ap_int.h"

#include "nnet_utils/nnet_code_gen.h"
#include "nnet_utils/nnet_helpers.h"
// hls-fpga-machine-learning insert includes
#include "nnet_utils/nnet_activation.h"
#include "nnet_utils/nnet_activation_stream.h"
#include "nnet_utils/nnet_batchnorm.h"
#include "nnet_utils/nnet_batchnorm_stream.h"
#include "nnet_utils/nnet_dense.h"
#include "nnet_utils/nnet_dense_compressed.h"
#include "nnet_utils/nnet_dense_stream.h"

// hls-fpga-machine-learning insert weights
#include "weights/w2.h"
#include "weights/b2.h"
#include "weights/s13.h"
#include "weights/b13.h"
#include "weights/s5.h"
#include "weights/b5.h"
#include "weights/w6.h"
#include "weights/b6.h"
#include "weights/s14.h"
#include "weights/b14.h"
#include "weights/s9.h"
#include "weights/b9.h"
#include "weights/w10.h"
#include "weights/b10.h"
#include "weights/s15.h"
#include "weights/b15.h"

// hls-fpga-machine-learning insert layer-config
// dense1
struct config2 : nnet::dense_config {
    static const unsigned n_in = 105;
    static const unsigned n_out = 32;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned strategy = nnet::resource;
    static const unsigned reuse_factor = 3360;
    static const unsigned n_zeros = 1345;
    static const unsigned n_nonzeros = 2015;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    typedef model_default_t accum_t;
    typedef bias2_t bias_t;
    typedef weight2_t weight_t;
    typedef layer2_index index_t;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

// dense1_alpha
struct config13 : nnet::batchnorm_config {
    static const unsigned n_in = N_LAYER_2;
    static const unsigned n_filt = -1;
    static const unsigned n_scale_bias = (n_filt == -1) ? n_in : n_filt;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in, reuse_factor);
    static const bool store_weights_in_bram = false;
    typedef bias13_t bias_t;
    typedef exponent_scale13_t scale_t;
    template<class x_T, class y_T>
    using product = nnet::product::weight_exponential<x_T, y_T>;
};

// dense1_linear
struct linear_config3 : nnet::activ_config {
    static const unsigned n_in = 32;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    typedef dense1_linear_table_t table_t;
};

// q_activation_9
struct relu_config4 : nnet::activ_config {
    static const unsigned n_in = 32;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    typedef q_activation_9_table_t table_t;
};

// batch_normalization_9
struct config5 : nnet::batchnorm_config {
    static const unsigned n_in = N_LAYER_2;
    static const unsigned n_filt = -1;
    static const unsigned n_scale_bias = (n_filt == -1) ? n_in : n_filt;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in, reuse_factor);
    static const bool store_weights_in_bram = false;
    typedef batch_normalization_9_bias_t bias_t;
    typedef batch_normalization_9_scale_t scale_t;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

// dense2
struct config6 : nnet::dense_config {
    static const unsigned n_in = 32;
    static const unsigned n_out = 16;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned strategy = nnet::resource;
    static const unsigned reuse_factor = 512;
    static const unsigned n_zeros = 207;
    static const unsigned n_nonzeros = 305;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    typedef model_default_t accum_t;
    typedef bias6_t bias_t;
    typedef weight6_t weight_t;
    typedef layer6_index index_t;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

// dense2_alpha
struct config14 : nnet::batchnorm_config {
    static const unsigned n_in = N_LAYER_6;
    static const unsigned n_filt = -1;
    static const unsigned n_scale_bias = (n_filt == -1) ? n_in : n_filt;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in, reuse_factor);
    static const bool store_weights_in_bram = false;
    typedef bias14_t bias_t;
    typedef exponent_scale14_t scale_t;
    template<class x_T, class y_T>
    using product = nnet::product::weight_exponential<x_T, y_T>;
};

// dense2_linear
struct linear_config7 : nnet::activ_config {
    static const unsigned n_in = 16;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    typedef dense2_linear_table_t table_t;
};

// q_activation_10
struct relu_config8 : nnet::activ_config {
    static const unsigned n_in = 16;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    typedef q_activation_10_table_t table_t;
};

// batch_normalization_10
struct config9 : nnet::batchnorm_config {
    static const unsigned n_in = N_LAYER_6;
    static const unsigned n_filt = -1;
    static const unsigned n_scale_bias = (n_filt == -1) ? n_in : n_filt;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in, reuse_factor);
    static const bool store_weights_in_bram = false;
    typedef batch_normalization_10_bias_t bias_t;
    typedef batch_normalization_10_scale_t scale_t;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

// dense_output
struct config10 : nnet::dense_config {
    static const unsigned n_in = 16;
    static const unsigned n_out = 3;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned strategy = nnet::resource;
    static const unsigned reuse_factor = 48;
    static const unsigned n_zeros = 19;
    static const unsigned n_nonzeros = 29;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in * n_out, reuse_factor) - n_zeros / reuse_factor;
    static const bool store_weights_in_bram = false;
    typedef model_default_t accum_t;
    typedef bias10_t bias_t;
    typedef weight10_t weight_t;
    typedef layer10_index index_t;
    template<class x_T, class y_T>
    using product = nnet::product::mult<x_T, y_T>;
};

// dense_output_alpha
struct config15 : nnet::batchnorm_config {
    static const unsigned n_in = N_LAYER_10;
    static const unsigned n_filt = -1;
    static const unsigned n_scale_bias = (n_filt == -1) ? n_in : n_filt;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    static const unsigned multiplier_limit = DIV_ROUNDUP(n_in, reuse_factor);
    static const bool store_weights_in_bram = false;
    typedef bias15_t bias_t;
    typedef exponent_scale15_t scale_t;
    template<class x_T, class y_T>
    using product = nnet::product::weight_exponential<x_T, y_T>;
};

// dense_output_linear
struct linear_config11 : nnet::activ_config {
    static const unsigned n_in = 3;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    typedef dense_output_linear_table_t table_t;
};

// output_softmax
struct softmax_config12 : nnet::activ_config {
    static const unsigned n_in = 3;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 10000;
    static const unsigned axis = -1;
    static const nnet::softmax_implementation implementation = nnet::softmax_implementation::stable;
    typedef output_softmax_exp_table_t exp_table_t;
    typedef output_softmax_inv_table_t inv_table_t;
};


#endif
