set SynModuleInfo {
  {SRCNAME {dense_latency<ap_fixed<15, 2, 5, 3, 0>, ap_fixed<15, 2, 5, 3, 0>, config3>} MODELNAME dense_latency_ap_fixed_15_2_5_3_0_ap_fixed_15_2_5_3_0_config3_s RTLNAME myproject_dense_latency_ap_fixed_15_2_5_3_0_ap_fixed_15_2_5_3_0_config3_s
    SUBMODULES {
      {MODELNAME myproject_mul_15s_7ns_22_1_1 RTLNAME myproject_mul_15s_7ns_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_6ns_21_1_1 RTLNAME myproject_mul_15s_6ns_21_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_7s_22_1_1 RTLNAME myproject_mul_15s_7s_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_6s_21_1_1 RTLNAME myproject_mul_15s_6s_21_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_5ns_20_1_1 RTLNAME myproject_mul_15s_5ns_20_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_5s_20_1_1 RTLNAME myproject_mul_15s_5s_20_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_8s_22_1_1 RTLNAME myproject_mul_15s_8s_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_8ns_22_1_1 RTLNAME myproject_mul_15s_8ns_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {relu<ap_fixed<15, 2, 5, 3, 0>, ap_fixed<15, 2, 5, 3, 0>, relu_config5>} MODELNAME relu_ap_fixed_15_2_5_3_0_ap_fixed_15_2_5_3_0_relu_config5_s RTLNAME myproject_relu_ap_fixed_15_2_5_3_0_ap_fixed_15_2_5_3_0_relu_config5_s}
  {SRCNAME {normalize<ap_fixed<15, 2, 5, 3, 0>, ap_fixed<15, 2, 5, 3, 0>, config6>} MODELNAME normalize_ap_fixed_15_2_5_3_0_ap_fixed_15_2_5_3_0_config6_s RTLNAME myproject_normalize_ap_fixed_15_2_5_3_0_ap_fixed_15_2_5_3_0_config6_s
    SUBMODULES {
      {MODELNAME myproject_mul_15s_16ns_25_1_1 RTLNAME myproject_mul_15s_16ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_16s_25_1_1 RTLNAME myproject_mul_15s_16s_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_12ns_25_1_1 RTLNAME myproject_mul_15s_12ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_15s_11ns_25_1_1 RTLNAME myproject_mul_15s_11ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<15, 2, 5, 3, 0>, ap_fixed<15, 2, 5, 3, 0>, config7>} MODELNAME dense_latency_ap_fixed_15_2_5_3_0_ap_fixed_15_2_5_3_0_config7_s RTLNAME myproject_dense_latency_ap_fixed_15_2_5_3_0_ap_fixed_15_2_5_3_0_config7_s
    SUBMODULES {
      {MODELNAME myproject_mul_15s_9s_22_1_1 RTLNAME myproject_mul_15s_9s_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1}
}
