# This script segment is generated automatically by AutoPilot

set id 92
set name myproject_mux_36_6_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 16
set din4_signed 0
set din5_width 16
set din5_signed 0
set din6_width 16
set din6_signed 0
set din7_width 16
set din7_signed 0
set din8_width 16
set din8_signed 0
set din9_width 16
set din9_signed 0
set din10_width 16
set din10_signed 0
set din11_width 16
set din11_signed 0
set din12_width 16
set din12_signed 0
set din13_width 16
set din13_signed 0
set din14_width 16
set din14_signed 0
set din15_width 16
set din15_signed 0
set din16_width 16
set din16_signed 0
set din17_width 16
set din17_signed 0
set din18_width 16
set din18_signed 0
set din19_width 16
set din19_signed 0
set din20_width 16
set din20_signed 0
set din21_width 16
set din21_signed 0
set din22_width 16
set din22_signed 0
set din23_width 16
set din23_signed 0
set din24_width 16
set din24_signed 0
set din25_width 16
set din25_signed 0
set din26_width 16
set din26_signed 0
set din27_width 16
set din27_signed 0
set din28_width 16
set din28_signed 0
set din29_width 16
set din29_signed 0
set din30_width 16
set din30_signed 0
set din31_width 16
set din31_signed 0
set din32_width 16
set din32_signed 0
set din33_width 16
set din33_signed 0
set din34_width 16
set din34_signed 0
set din35_width 16
set din35_signed 0
set din36_width 6
set din36_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 94
set name myproject_mux_7_3_15_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 15
set din0_signed 0
set din1_width 15
set din1_signed 0
set din2_width 15
set din2_signed 0
set din3_width 15
set din3_signed 0
set din4_width 15
set din4_signed 0
set din5_width 15
set din5_signed 0
set din6_width 15
set din6_signed 0
set din7_width 3
set din7_signed 0
set dout_width 15
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_outidx_rcU BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_w6_ROM_sc4 BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


