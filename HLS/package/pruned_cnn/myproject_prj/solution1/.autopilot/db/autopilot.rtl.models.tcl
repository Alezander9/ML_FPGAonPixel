set SynModuleInfo {
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,1u>,config19>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadTopWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadTopWidth
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe_sequential_init RTLNAME myproject_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,1u>,config19>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config19>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,6,5,3,0>,1u>,config19> MODELNAME zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_s RTLNAME myproject_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_s
    SUBMODULES {
      {MODELNAME myproject_regslice_both RTLNAME myproject_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME myproject_regslice_both_U}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 1u>, config2>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_void_conv_2d_buffer_bkb RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_void_conv_2d_buffer_bkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config2_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s RTLNAME myproject_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s
    SUBMODULES {
      {MODELNAME myproject_mul_16s_5ns_21_1_1 RTLNAME myproject_mul_16s_5ns_21_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,2u>,config2> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_2u_config2_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_2u_config2_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,6,5,3,0>,2u>,config2> MODELNAME conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_2u_config2_s RTLNAME myproject_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_2u_config2_s
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe RTLNAME myproject_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME relu<array<ap_fixed,2u>,array<ap_ufixed<24,8,4,0,0>,2u>,relu_config4> MODELNAME relu_array_ap_fixed_2u_array_ap_ufixed_24_8_4_0_0_2u_relu_config4_s RTLNAME myproject_relu_array_ap_fixed_2u_array_ap_ufixed_24_8_4_0_0_2u_relu_config4_s}
  {SRCNAME pooling2d_cl<array<ap_ufixed,2u>,array<ap_fixed<16,6,5,3,0>,2u>,config5> MODELNAME pooling2d_cl_array_ap_ufixed_2u_array_ap_fixed_16_6_5_3_0_2u_config5_s RTLNAME myproject_pooling2d_cl_array_ap_ufixed_2u_array_ap_fixed_16_6_5_3_0_2u_config5_s
    SUBMODULES {
      {MODELNAME myproject_pooling2d_cl_array_ap_ufixed_2u_array_ap_fixed_16_6_5_3_0_2u_config5_s_void_pdEe RTLNAME myproject_pooling2d_cl_array_ap_ufixed_2u_array_ap_fixed_16_6_5_3_0_2u_config5_s_void_pdEe BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,2u>,config20>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_2u_config20_Pipeline_PadTopWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_2u_config20_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,2u>,config20>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_2u_config20_Pipeline_PadMain RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_2u_config20_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,2u>,config20>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_2u_config20_Pipeline_PadBottomWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_2u_config20_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,2u>,array<ap_fixed<16,6,5,3,0>,2u>,config20> MODELNAME zeropad2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_2u_config20_s RTLNAME myproject_zeropad2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_2u_config20_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 2u>, config6>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_2u_config6_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_2u_config6_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_2u_config6_s_p_ZZN4nnet25conv_2d_fYi RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_2u_config6_s_p_ZZN4nnet25conv_2d_fYi BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config6_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s RTLNAME myproject_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s
    SUBMODULES {
      {MODELNAME myproject_mul_16s_16ns_31_1_0 RTLNAME myproject_mul_16s_16ns_31_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_14s_30_1_0 RTLNAME myproject_mul_16s_14s_30_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_16s_31_1_0 RTLNAME myproject_mul_16s_16s_31_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_14ns_30_1_0 RTLNAME myproject_mul_16s_14ns_30_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_11s_27_1_0 RTLNAME myproject_mul_16s_11s_27_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_15s_31_1_0 RTLNAME myproject_mul_16s_15s_31_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_11ns_27_1_0 RTLNAME myproject_mul_16s_11ns_27_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_13s_29_1_0 RTLNAME myproject_mul_16s_13s_29_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_10s_26_1_0 RTLNAME myproject_mul_16s_10s_26_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_12ns_28_1_0 RTLNAME myproject_mul_16s_12ns_28_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_12s_28_1_0 RTLNAME myproject_mul_16s_12s_28_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_15ns_31_1_0 RTLNAME myproject_mul_16s_15ns_31_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_10ns_26_1_0 RTLNAME myproject_mul_16s_10ns_26_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_7s_23_1_0 RTLNAME myproject_mul_16s_7s_23_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_13ns_29_1_0 RTLNAME myproject_mul_16s_13ns_29_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_9s_25_1_0 RTLNAME myproject_mul_16s_9s_25_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_6ns_22_1_0 RTLNAME myproject_mul_16s_6ns_22_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,4u>,config6> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config6_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config6_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,2u>,array<ap_fixed<16,6,5,3,0>,4u>,config6> MODELNAME conv_2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_4u_config6_s RTLNAME myproject_conv_2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_4u_config6_s}
  {SRCNAME relu<array<ap_fixed,4u>,array<ap_ufixed<24,8,4,0,0>,4u>,relu_config8> MODELNAME relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_s RTLNAME myproject_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_s}
  {SRCNAME pooling2d_cl<array<ap_ufixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config9> MODELNAME pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_s RTLNAME myproject_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_s
    SUBMODULES {
      {MODELNAME myproject_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_s_void_pjbC RTLNAME myproject_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_s_void_pjbC BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME concatenate1d<array,array,array<ap_fixed,25u>,config12>_Pipeline_ConcatLoop1 MODELNAME concatenate1d_array_array_array_ap_fixed_25u_config12_Pipeline_ConcatLoop1 RTLNAME myproject_concatenate1d_array_array_array_ap_fixed_25u_config12_Pipeline_ConcatLoop1}
  {SRCNAME concatenate1d<array,array,array<ap_fixed<16,6,5,3,0>,25u>,config12> MODELNAME concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_s RTLNAME myproject_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_s
    SUBMODULES {
      {MODELNAME myproject_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_s_out_data_Rncg RTLNAME myproject_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_s_out_data_Rncg BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,25u>,array<ap_fixed<16,6,5,3,0>,4u>,config13> MODELNAME dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_s RTLNAME myproject_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_s
    SUBMODULES {
      {MODELNAME myproject_mul_16s_17s_31_1_1 RTLNAME myproject_mul_16s_17s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_17ns_31_1_1 RTLNAME myproject_mul_16s_17ns_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_18s_31_1_1 RTLNAME myproject_mul_16s_18s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME relu<array<ap_fixed,4u>,array<ap_ufixed<24,8,4,0,0>,4u>,relu_config15> MODELNAME relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_s RTLNAME myproject_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_s}
  {SRCNAME dense<array<ap_ufixed,4u>,array<ap_fixed<16,6,5,3,0>,1u>,config16> MODELNAME dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_s RTLNAME myproject_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_s
    SUBMODULES {
      {MODELNAME myproject_mul_24ns_18s_37_1_1 RTLNAME myproject_mul_24ns_18s_37_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_24ns_18ns_37_1_1 RTLNAME myproject_mul_24ns_18ns_37_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_24ns_16s_37_1_1 RTLNAME myproject_mul_24ns_16s_37_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sigmoid<array,array<ap_fixed<16,6,5,3,0>,1u>,sigmoid_config18> MODELNAME sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s RTLNAME myproject_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s
    SUBMODULES {
      {MODELNAME myproject_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s_sigmoid_table_RpcA RTLNAME myproject_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s_sigmoid_table_RpcA BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_fifo_w16_d150_A RTLNAME myproject_fifo_w16_d150_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer19_out_U}
      {MODELNAME myproject_fifo_w32_d104_A RTLNAME myproject_fifo_w32_d104_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME myproject_fifo_w48_d104_A RTLNAME myproject_fifo_w48_d104_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME myproject_fifo_w32_d24_S RTLNAME myproject_fifo_w32_d24_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME myproject_fifo_w32_d48_A RTLNAME myproject_fifo_w32_d48_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer20_out_U}
      {MODELNAME myproject_fifo_w64_d24_A RTLNAME myproject_fifo_w64_d24_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME myproject_fifo_w96_d24_A RTLNAME myproject_fifo_w96_d24_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME myproject_fifo_w64_d6_S RTLNAME myproject_fifo_w64_d6_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME myproject_fifo_w400_d1_S RTLNAME myproject_fifo_w400_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer12_out_U}
      {MODELNAME myproject_fifo_w64_d1_S RTLNAME myproject_fifo_w64_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer13_out_U}
      {MODELNAME myproject_fifo_w96_d1_S RTLNAME myproject_fifo_w96_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer15_out_U}
      {MODELNAME myproject_fifo_w16_d1_S RTLNAME myproject_fifo_w16_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer16_out_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_2u_config2_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_2u_config2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_2u_config2_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_2u_array_ap_ufixed_24_8_4_0_0_2u_relu_config4_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_2u_array_ap_ufixed_24_8_4_0_0_2u_relu_config4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_2u_array_ap_ufixed_24_8_4_0_0_2u_relu_config4_U0_U}
      {MODELNAME myproject_start_for_pooling2d_cl_array_ap_ufixed_2u_array_ap_fixed_16_6_5_3_0_2u_configqcK RTLNAME myproject_start_for_pooling2d_cl_array_ap_ufixed_2u_array_ap_fixed_16_6_5_3_0_2u_configqcK BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_ap_ufixed_2u_array_ap_fixed_16_6_5_3_0_2u_configqcK_U}
      {MODELNAME myproject_start_for_zeropad2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_2u_config2rcU RTLNAME myproject_start_for_zeropad2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_2u_config2rcU BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_2u_config2rcU_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_4u_config6_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_4u_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_2u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0_U}
      {MODELNAME myproject_start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configsc4 RTLNAME myproject_start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configsc4 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configsc4_U}
      {MODELNAME myproject_start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0 RTLNAME myproject_start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U}
      {MODELNAME myproject_start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0 RTLNAME myproject_start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U}
      {MODELNAME myproject_start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0 RTLNAME myproject_start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U}
      {MODELNAME myproject_start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0 RTLNAME myproject_start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U}
    }
  }
}
