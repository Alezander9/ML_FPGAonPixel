set SynModuleInfo {
  {SRCNAME dense<array<ap_fixed,53u>,array<ap_fixed<16,6,5,3,0>,24u>,config2> MODELNAME dense_array_ap_fixed_53u_array_ap_fixed_16_6_5_3_0_24u_config2_s RTLNAME myproject_dense_array_ap_fixed_53u_array_ap_fixed_16_6_5_3_0_24u_config2_s
    SUBMODULES {
      {MODELNAME myproject_mux_53_6_16_1_1 RTLNAME myproject_mux_53_6_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_10s_24_1_1 RTLNAME myproject_mul_16s_10s_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mux_24_5_15_1_1 RTLNAME myproject_mux_24_5_15_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_fixed_53u_array_ap_fixed_16_6_5_3_0_24u_config2_s_outidx_1_ROMbkb RTLNAME myproject_dense_array_ap_fixed_53u_array_ap_fixed_16_6_5_3_0_24u_config2_s_outidx_1_ROMbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_fixed_53u_array_ap_fixed_16_6_5_3_0_24u_config2_s_w2_ROM_AUTO_1R RTLNAME myproject_dense_array_ap_fixed_53u_array_ap_fixed_16_6_5_3_0_24u_config2_s_w2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_regslice_both RTLNAME myproject_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME myproject_regslice_both_U}
    }
  }
  {SRCNAME normalize<array<ap_fixed,24u>,array<ap_fixed<16,6,5,3,0>,24u>,config4> MODELNAME normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config4_s RTLNAME myproject_normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config4_s
    SUBMODULES {
      {MODELNAME myproject_mul_16s_14ns_26_1_1 RTLNAME myproject_mul_16s_14ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME relu<array<ap_fixed,24u>,array<ap_ufixed<15,0,4,0,0>,24u>,relu_config5> MODELNAME relu_array_ap_fixed_24u_array_ap_ufixed_15_0_4_0_0_24u_relu_config5_s RTLNAME myproject_relu_array_ap_fixed_24u_array_ap_ufixed_15_0_4_0_0_24u_relu_config5_s}
  {SRCNAME dense<array<ap_ufixed,24u>,array<ap_fixed<16,6,5,3,0>,12u>,config6> MODELNAME dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_s RTLNAME myproject_dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_s
    SUBMODULES {
      {MODELNAME myproject_mul_15ns_10s_25_1_1 RTLNAME myproject_mul_15ns_10s_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mux_12_4_15_1_1 RTLNAME myproject_mux_12_4_15_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_s_outidx_ROM_cud RTLNAME myproject_dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_s_outidx_ROM_cud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_s_w6_ROM_AUTOdEe RTLNAME myproject_dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_s_w6_ROM_AUTOdEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME normalize<array<ap_fixed,12u>,array<ap_fixed<16,6,5,3,0>,12u>,config8> MODELNAME normalize_array_ap_fixed_12u_array_ap_fixed_16_6_5_3_0_12u_config8_s RTLNAME myproject_normalize_array_ap_fixed_12u_array_ap_fixed_16_6_5_3_0_12u_config8_s
    SUBMODULES {
      {MODELNAME myproject_mul_16s_13ns_26_1_1 RTLNAME myproject_mul_16s_13ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME relu<array<ap_fixed,12u>,array<ap_ufixed<15,0,4,0,0>,12u>,relu_config9> MODELNAME relu_array_ap_fixed_12u_array_ap_ufixed_15_0_4_0_0_12u_relu_config9_s RTLNAME myproject_relu_array_ap_fixed_12u_array_ap_ufixed_15_0_4_0_0_12u_relu_config9_s}
  {SRCNAME dense<array<ap_ufixed,12u>,array<ap_fixed<16,6,5,3,0>,1u>,config10> MODELNAME dense_array_ap_ufixed_12u_array_ap_fixed_16_6_5_3_0_1u_config10_s RTLNAME myproject_dense_array_ap_ufixed_12u_array_ap_fixed_16_6_5_3_0_1u_config10_s
    SUBMODULES {
      {MODELNAME myproject_mul_15ns_9s_24_1_1 RTLNAME myproject_mul_15ns_9s_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_array_ap_ufixed_12u_array_ap_fixed_16_6_5_3_0_1u_config10_s_w10_ROM_AUTeOg RTLNAME myproject_dense_array_ap_ufixed_12u_array_ap_fixed_16_6_5_3_0_1u_config10_s_w10_ROM_AUTeOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_fifo_w384_d1_S RTLNAME myproject_fifo_w384_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME myproject_fifo_w384_d1_S RTLNAME myproject_fifo_w384_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME myproject_fifo_w360_d1_S RTLNAME myproject_fifo_w360_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME myproject_fifo_w192_d1_S RTLNAME myproject_fifo_w192_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME myproject_fifo_w192_d1_S RTLNAME myproject_fifo_w192_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME myproject_fifo_w180_d1_S RTLNAME myproject_fifo_w180_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config4_U0 RTLNAME myproject_start_for_normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config4_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_24u_array_ap_ufixed_15_0_4_0_0_24u_relu_config5fYi RTLNAME myproject_start_for_relu_array_ap_fixed_24u_array_ap_ufixed_15_0_4_0_0_24u_relu_config5fYi BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_24u_array_ap_ufixed_15_0_4_0_0_24u_relu_config5fYi_U}
      {MODELNAME myproject_start_for_dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_U0 RTLNAME myproject_start_for_dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_U0_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_12u_array_ap_fixed_16_6_5_3_0_12u_config8_U0 RTLNAME myproject_start_for_normalize_array_ap_fixed_12u_array_ap_fixed_16_6_5_3_0_12u_config8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_12u_array_ap_fixed_16_6_5_3_0_12u_config8_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_12u_array_ap_ufixed_15_0_4_0_0_12u_relu_config9g8j RTLNAME myproject_start_for_relu_array_ap_fixed_12u_array_ap_ufixed_15_0_4_0_0_12u_relu_config9g8j BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_12u_array_ap_ufixed_15_0_4_0_0_12u_relu_config9g8j_U}
      {MODELNAME myproject_start_for_dense_array_ap_ufixed_12u_array_ap_fixed_16_6_5_3_0_1u_config10_U0 RTLNAME myproject_start_for_dense_array_ap_ufixed_12u_array_ap_fixed_16_6_5_3_0_1u_config10_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_ufixed_12u_array_ap_fixed_16_6_5_3_0_1u_config10_U0_U}
    }
  }
}
