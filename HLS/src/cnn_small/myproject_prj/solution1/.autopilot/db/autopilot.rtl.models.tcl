set SynModuleInfo {
  {SRCNAME dense<array<ap_fixed,105u>,array<ap_fixed<16,6,5,3,0>,32u>,config2> MODELNAME dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_s RTLNAME myproject_dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_s
    SUBMODULES {
      {MODELNAME myproject_mux_105_7_16_1_1 RTLNAME myproject_mux_105_7_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_10s_24_1_1 RTLNAME myproject_mul_16s_10s_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mux_32_5_15_1_1 RTLNAME myproject_mux_32_5_15_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_s_outidx_2_RObkb RTLNAME myproject_dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_s_outidx_2_RObkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_s_w2_ROM_AUTOcud RTLNAME myproject_dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_s_w2_ROM_AUTOcud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_regslice_both RTLNAME myproject_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME myproject_regslice_both_U}
    }
  }
  {SRCNAME normalize<array<ap_fixed,32u>,array<ap_fixed<15,5,5,3,0>,32u>,config13> MODELNAME normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13_s RTLNAME myproject_normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13_s}
  {SRCNAME linear<array,array<ap_fixed<16,6,5,3,0>,32u>,linear_config3> MODELNAME linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_s RTLNAME myproject_linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_s}
  {SRCNAME relu<array<ap_fixed,32u>,array<ap_ufixed<15,0,4,0,0>,32u>,relu_config4> MODELNAME relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4_s RTLNAME myproject_relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4_s}
  {SRCNAME normalize<array<ap_ufixed,32u>,array<ap_fixed<16,6,5,3,0>,32u>,config5> MODELNAME normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5_s RTLNAME myproject_normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5_s
    SUBMODULES {
      {MODELNAME myproject_mul_15ns_17s_31_1_1 RTLNAME myproject_mul_15ns_17s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,32u>,array<ap_fixed<16,6,5,3,0>,16u>,config6> MODELNAME dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s RTLNAME myproject_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s
    SUBMODULES {
      {MODELNAME myproject_mux_32_5_16_1_1 RTLNAME myproject_mux_32_5_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mux_16_4_15_1_1 RTLNAME myproject_mux_16_4_15_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s_outidx_1_ROMdEe RTLNAME myproject_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s_outidx_1_ROMdEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s_w6_ROM_AUTO_1R RTLNAME myproject_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s_w6_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME normalize<array<ap_fixed,16u>,array<ap_fixed<15,5,5,3,0>,16u>,config14> MODELNAME normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14_s RTLNAME myproject_normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14_s}
  {SRCNAME linear<array,array<ap_fixed<16,6,5,3,0>,16u>,linear_config7> MODELNAME linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_s RTLNAME myproject_linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_s}
  {SRCNAME relu<array<ap_fixed,16u>,array<ap_ufixed<15,0,4,0,0>,16u>,relu_config8> MODELNAME relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8_s RTLNAME myproject_relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8_s}
  {SRCNAME normalize<array<ap_ufixed,16u>,array<ap_fixed<16,6,5,3,0>,16u>,config9> MODELNAME normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9_s RTLNAME myproject_normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9_s
    SUBMODULES {
      {MODELNAME myproject_mul_15ns_14ns_28_1_1 RTLNAME myproject_mul_15ns_14ns_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,16u>,array<ap_fixed<16,6,5,3,0>,3u>,config10> MODELNAME dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_s RTLNAME myproject_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_s
    SUBMODULES {
      {MODELNAME myproject_mux_16_4_16_1_1 RTLNAME myproject_mux_16_4_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mux_3_2_15_1_1 RTLNAME myproject_mux_3_2_15_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_s_outidx_ROM_AeOg RTLNAME myproject_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_s_outidx_ROM_AeOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_s_w10_ROM_AUTOfYi RTLNAME myproject_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_s_w10_ROM_AUTOfYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME normalize<array<ap_fixed,3u>,array<ap_fixed<15,5,5,3,0>,3u>,config15> MODELNAME normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_s RTLNAME myproject_normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_s}
  {SRCNAME linear<array,array<ap_fixed<16,6,5,3,0>,3u>,linear_config11> MODELNAME linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_s RTLNAME myproject_linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_s}
  {SRCNAME softmax_stable<array,array<ap_fixed<16,6,5,3,0>,3u>,softmax_config12> MODELNAME softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s RTLNAME myproject_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s
    SUBMODULES {
      {MODELNAME myproject_mul_18s_17ns_26_1_1 RTLNAME myproject_mul_18s_17ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_exp_tablg8j RTLNAME myproject_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_exp_tablg8j BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_invert_thbi RTLNAME myproject_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_invert_thbi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME softmax<array,array<ap_fixed<16,6,5,3,0>,3u>,softmax_config12> MODELNAME softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s RTLNAME myproject_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s}
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_fifo_w512_d1_S RTLNAME myproject_fifo_w512_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME myproject_fifo_w480_d1_S RTLNAME myproject_fifo_w480_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer13_out_U}
      {MODELNAME myproject_fifo_w512_d1_S RTLNAME myproject_fifo_w512_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME myproject_fifo_w480_d1_S RTLNAME myproject_fifo_w480_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME myproject_fifo_w512_d1_S RTLNAME myproject_fifo_w512_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME myproject_fifo_w256_d1_S RTLNAME myproject_fifo_w256_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME myproject_fifo_w240_d1_S RTLNAME myproject_fifo_w240_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer14_out_U}
      {MODELNAME myproject_fifo_w256_d1_S RTLNAME myproject_fifo_w256_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_U}
      {MODELNAME myproject_fifo_w240_d1_S RTLNAME myproject_fifo_w240_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME myproject_fifo_w256_d1_S RTLNAME myproject_fifo_w256_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME myproject_fifo_w48_d1_S RTLNAME myproject_fifo_w48_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_U}
      {MODELNAME myproject_fifo_w45_d1_S RTLNAME myproject_fifo_w45_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer15_out_U}
      {MODELNAME myproject_fifo_w48_d1_S RTLNAME myproject_fifo_w48_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer11_out_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13ibs RTLNAME myproject_start_for_normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13ibs BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13ibs_U}
      {MODELNAME myproject_start_for_linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_U0 RTLNAME myproject_start_for_linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4jbC RTLNAME myproject_start_for_relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4jbC BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4jbC_U}
      {MODELNAME myproject_start_for_normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5kbM RTLNAME myproject_start_for_normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5kbM BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5kbM_U}
      {MODELNAME myproject_start_for_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0 RTLNAME myproject_start_for_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14lbW RTLNAME myproject_start_for_normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14lbW BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14lbW_U}
      {MODELNAME myproject_start_for_linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_U0 RTLNAME myproject_start_for_linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8mb6 RTLNAME myproject_start_for_relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8mb6 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8mb6_U}
      {MODELNAME myproject_start_for_normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9ncg RTLNAME myproject_start_for_normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9ncg BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9ncg_U}
      {MODELNAME myproject_start_for_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0 RTLNAME myproject_start_for_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_U0 RTLNAME myproject_start_for_normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_U0_U}
      {MODELNAME myproject_start_for_linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_U0 RTLNAME myproject_start_for_linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_U0_U}
      {MODELNAME myproject_start_for_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0 RTLNAME myproject_start_for_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0_U}
    }
  }
}
