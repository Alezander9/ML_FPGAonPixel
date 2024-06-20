#include <algorithm>
#include <fstream>
#include <iostream>
#include <map>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <vector>

#include "firmware/myproject.h"
#include "firmware/nnet_utils/nnet_helpers.h"

// hls-fpga-machine-learning insert bram

#define CHECKPOINT 5000

namespace nnet {
bool trace_enabled = true;
std::map<std::string, void *> *trace_outputs = NULL;
size_t trace_type_size = sizeof(double);
} // namespace nnet

int main(int argc, char **argv) {
    // load input data from text file
    std::ifstream fin("tb_data/tb_input_features_small_quan.dat");
    // load predictions from text file
    std::ifstream fpr("tb_data/golden_small.dat");

#ifdef RTL_SIM
    std::string RESULTS_LOG = "tb_data/rtl_cosim_results.log";
#else
    std::string RESULTS_LOG = "tb_data/csim_results.log";
#endif
    std::ofstream fout(RESULTS_LOG);

    std::string iline;
    std::string pline;
    int e = 0;
    bool check_flag = false;
    if (fin.is_open() && fpr.is_open()) {
        while (std::getline(fin, iline) && std::getline(fpr, pline)) {
        	//std::cout << "this is the " << e << " line" << std::endl;
            if (e % CHECKPOINT == 0)
                std::cout << "Processing input " << e << std::endl;
            char *cstr = const_cast<char *>(iline.c_str());
            char *current;
            std::vector<float> in;
            current = strtok(cstr, " ");
            while (current != NULL) {
                in.push_back(atof(current));
                current = strtok(NULL, " ");
            }
            cstr = const_cast<char *>(pline.c_str());
            std::vector<float> pr;
            current = strtok(cstr, " ");
            while (current != NULL) {
                pr.push_back(atof(current));
                current = strtok(NULL, " ");
            }

            // hls-fpga-machine-learning insert data
      hls::stream<input_t> y_profile_input("y_profile_input");
      nnet::copy_data<float, input_t, 0, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(in, y_profile_input);
      hls::stream<input11_t> y0_input("y0_input");
      nnet::copy_data<float, input11_t, 104, N_INPUT_1_11>(in, y0_input);
      hls::stream<result_t> layer18_out("layer18_out");

            // hls-fpga-machine-learning insert top-level-function
            myproject(y_profile_input,y0_input,layer18_out);

//            if (e % CHECKPOINT == 0) {
//                std::cout << "Predictions" << std::endl;
//                // hls-fpga-machine-learning insert predictions
//                for(int i = 0; i < N_LAYER_16; i++) {
//                  std::cout << pr[i] << " ";
//                }
//                std::cout << std::endl;
//                std::cout << "Quantized predictions" << std::endl;
//                // hls-fpga-machine-learning insert quantized
//                nnet::print_result<result_t, N_LAYER_16>(layer18_out, std::cout, true);
//
//            }

            for (int i = 0; i < N_LAYER_16 / result_t::size; i++) {
            	result_t output_array = layer18_out.read();
            	for (int j = 0; j < result_t::size; j++) {
            		//std::cout << "for " << e << "th line we have result " << output_array[j] << std::endl;
            		ap_fixed<18,8> output_check;
            		output_check = pr[0];
            		ap_fixed<18,8> fixed_value;
            		fixed_value = output_array[j];
					if (fixed_value != output_check) {
						std::cout << "WRONG!!!" << output_array[j] << pr[0] << std::endl;
						std::cout << "WRONG!!!" << fixed_value << output_check << std::endl;
						std::cout << "Happened at the " << e << "th line" << std::endl;
//						printf("%s\n", pr[0].to_string().c_str());
//						printf("%s\n", output_array[j].to_string().c_str());
						check_flag = true;
					}
            	}
            	layer18_out.write(output_array);
            }
            e++;

            // hls-fpga-machine-learning insert tb-output
            nnet::print_result<result_t, N_LAYER_16>(layer18_out, fout);
        }
        fin.close();
        fpr.close();
        if (check_flag == false) {
        	std::cout << "Perfect match to golden result! Test passed!" << std::endl;
        } else {
        	std::cout << "Output unmatched to predictions! Test failed!" << std::endl;
        }
    } else {
        std::cout << "INFO: Unable to open input/predictions file, using default input." << std::endl;

        // hls-fpga-machine-learning insert zero
    hls::stream<input_t> y_profile_input("y_profile_input");
    nnet::fill_zero<input_t, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(y_profile_input);
    hls::stream<input11_t> y0_input("y0_input");
    nnet::fill_zero<input11_t, N_INPUT_1_11>(y0_input);
    hls::stream<result_t> layer18_out("layer18_out");

        // hls-fpga-machine-learning insert top-level-function
        myproject(y_profile_input,y0_input,layer18_out);

        // hls-fpga-machine-learning insert output
        nnet::print_result<result_t, N_LAYER_16>(layer18_out, std::cout, true);

        // hls-fpga-machine-learning insert tb-output
        nnet::print_result<result_t, N_LAYER_16>(layer18_out, fout);
    }

    fout.close();
    std::cout << "INFO: Saved inference results to file: " << RESULTS_LOG << std::endl;

    return 0;
}
