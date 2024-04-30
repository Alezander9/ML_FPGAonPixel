`timescale 1 ns / 1 ps

module AESL_deadlock_kernel_monitor_top ( 
    input wire kernel_monitor_clock,
    input wire kernel_monitor_reset
);
wire [2:0] axis_block_sigs;
wire [17:0] inst_idle_sigs;
wire [12:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain_fu_34.y_profile_input_TDATA_blk_n;
assign axis_block_sigs[1] = ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.y0_input_TDATA_blk_n;
assign axis_block_sigs[2] = ~AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.layer18_out_TDATA_blk_n;

assign inst_idle_sigs[0] = AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.ap_idle;
assign inst_block_sigs[0] = (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.ap_done & ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.ap_continue) | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42.layer19_out_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain_fu_34.layer19_out_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadTopWidth_fu_28.layer19_out_blk_n;
assign inst_idle_sigs[1] = AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.ap_idle;
assign inst_block_sigs[1] = (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.ap_done & ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.ap_continue) | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer19_out_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer2_out_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_3u_config2_s_fu_78.layer2_out_blk_n;
assign inst_idle_sigs[2] = AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.ap_idle;
assign inst_block_sigs[2] = (AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.ap_done & ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.ap_continue) | ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer2_out_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer4_out_blk_n;
assign inst_idle_sigs[3] = AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.ap_idle;
assign inst_block_sigs[3] = (AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.ap_done & ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.ap_continue) | ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer4_out_blk_n | ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer5_out_blk_n;
assign inst_idle_sigs[4] = AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.ap_idle;
assign inst_block_sigs[4] = (AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.ap_done & ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.ap_continue) | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_3u_config20_Pipeline_PadMain_fu_28.layer5_out_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_3u_config20_Pipeline_PadBottomWidth_fu_36.layer20_out_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_3u_config20_Pipeline_PadMain_fu_28.layer20_out_blk_n | ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_3u_config20_Pipeline_PadTopWidth_fu_22.layer20_out_blk_n;
assign inst_idle_sigs[5] = AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.ap_idle;
assign inst_block_sigs[5] = (AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.ap_done & ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.ap_continue) | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer20_out_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer6_out_blk_n | ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_132.layer6_out_blk_n;
assign inst_idle_sigs[6] = AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.ap_idle;
assign inst_block_sigs[6] = (AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.ap_done & ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.ap_continue) | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer6_out_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer8_out_blk_n;
assign inst_idle_sigs[7] = AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.ap_idle;
assign inst_block_sigs[7] = (AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.ap_done & ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.ap_continue) | ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer8_out_blk_n | ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer9_out_blk_n;
assign inst_idle_sigs[8] = AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_idle;
assign inst_block_sigs[8] = (AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_done & ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_continue) | ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.grp_concatenate1d_array_array_array_ap_fixed_25u_config12_Pipeline_ConcatLoop1_fu_287.layer9_out_blk_n | ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.layer12_out_blk_n;
assign inst_idle_sigs[9] = AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.ap_idle;
assign inst_block_sigs[9] = (AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.ap_done & ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.ap_continue) | ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer12_out_blk_n | ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer13_out_blk_n;
assign inst_idle_sigs[10] = AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.ap_idle;
assign inst_block_sigs[10] = (AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.ap_done & ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.ap_continue) | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer13_out_blk_n | ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer15_out_blk_n;
assign inst_idle_sigs[11] = AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.ap_idle;
assign inst_block_sigs[11] = (AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.ap_done & ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.ap_continue) | ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer15_out_blk_n | ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer16_out_blk_n;
assign inst_idle_sigs[12] = AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.ap_idle;
assign inst_block_sigs[12] = (AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.ap_done & ~AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.ap_continue) | ~AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.layer16_out_blk_n;

assign inst_idle_sigs[13] = 1'b0;
assign inst_idle_sigs[14] = AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.ap_idle;
assign inst_idle_sigs[15] = AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain_fu_34.ap_idle;
assign inst_idle_sigs[16] = AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_idle;
assign inst_idle_sigs[17] = AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.ap_idle;

AESL_deadlock_idx0_monitor AESL_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

// synthesis translate_off
// logic for axis port block diagnosis

// synthesis translate_on

wire [7:0] proc0_is_blocked_by;// for process 'zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'
wire [7:0] proc0_blocks;// for process 'zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'
wire proc0_idle;

assign proc0_is_blocked_by[0] = axis_block_sigs[0];
assign proc0_blocks[0] = ~axis_block_sigs[0];
assign proc0_blocks[1] = 1'b0;
assign proc0_blocks[2] = 1'b0;
assign proc0_blocks[3] = 1'b0;
assign proc0_blocks[4] = 1'b0;
assign proc0_blocks[5] = 1'b0;
assign proc0_blocks[6] = 1'b0;
assign proc0_blocks[7] = 1'b0;
assign proc0_is_blocked_by[1] = (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42.layer19_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc0_is_blocked_by[2] = (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.real_start == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.ap_start == 1'b1 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc0_is_blocked_by[3] = 1'b0;
assign proc0_is_blocked_by[4] = 1'b0;
assign proc0_is_blocked_by[5] = 1'b0;
assign proc0_is_blocked_by[6] = 1'b0;
assign proc0_is_blocked_by[7] = 1'b0;
assign proc0_idle = (proc0_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc1_is_blocked_by;// for process 'conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'
wire [7:0] proc1_blocks;// for process 'conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'
wire proc1_idle;

assign proc1_blocks[0] = 1'b0;
assign proc1_blocks[1] = 1'b0;
assign proc1_blocks[2] = 1'b0;
assign proc1_blocks[3] = 1'b0;
assign proc1_blocks[4] = 1'b0;
assign proc1_blocks[5] = 1'b0;
assign proc1_blocks[6] = 1'b0;
assign proc1_blocks[7] = 1'b0;
assign proc1_is_blocked_by[0] = (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer19_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc1_is_blocked_by[1] = (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc1_is_blocked_by[2] = (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer2_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc1_is_blocked_by[3] = (AESL_inst_myproject.layer2_out_U.if_full_n == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.real_start == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.ap_start == 1'b1 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc1_is_blocked_by[4] = 1'b0;
assign proc1_is_blocked_by[5] = 1'b0;
assign proc1_is_blocked_by[6] = 1'b0;
assign proc1_is_blocked_by[7] = 1'b0;
assign proc1_idle = (proc1_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc2_is_blocked_by;// for process 'relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'
wire [7:0] proc2_blocks;// for process 'relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'
wire proc2_idle;

assign proc2_blocks[0] = 1'b0;
assign proc2_blocks[1] = 1'b0;
assign proc2_blocks[2] = 1'b0;
assign proc2_blocks[3] = 1'b0;
assign proc2_blocks[4] = 1'b0;
assign proc2_blocks[5] = 1'b0;
assign proc2_blocks[6] = 1'b0;
assign proc2_blocks[7] = 1'b0;
assign proc2_is_blocked_by[0] = (~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer2_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc2_is_blocked_by[1] = (AESL_inst_myproject.start_for_relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc2_is_blocked_by[2] = (~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer4_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc2_is_blocked_by[3] = (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U.if_full_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.real_start == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.ap_start == 1'b1 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc2_is_blocked_by[4] = 1'b0;
assign proc2_is_blocked_by[5] = 1'b0;
assign proc2_is_blocked_by[6] = 1'b0;
assign proc2_is_blocked_by[7] = 1'b0;
assign proc2_idle = (proc2_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc3_is_blocked_by;// for process 'pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'
wire [7:0] proc3_blocks;// for process 'pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'
wire proc3_idle;

assign proc3_blocks[0] = 1'b0;
assign proc3_blocks[1] = 1'b0;
assign proc3_blocks[2] = 1'b0;
assign proc3_blocks[3] = 1'b0;
assign proc3_blocks[4] = 1'b0;
assign proc3_blocks[5] = 1'b0;
assign proc3_blocks[6] = 1'b0;
assign proc3_blocks[7] = 1'b0;
assign proc3_is_blocked_by[0] = (~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer4_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc3_is_blocked_by[1] = (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U.if_empty_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc3_is_blocked_by[2] = (~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer5_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc3_is_blocked_by[3] = (AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U.if_full_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.real_start == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.ap_start == 1'b1 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc3_is_blocked_by[4] = 1'b0;
assign proc3_is_blocked_by[5] = 1'b0;
assign proc3_is_blocked_by[6] = 1'b0;
assign proc3_is_blocked_by[7] = 1'b0;
assign proc3_idle = (proc3_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc4_is_blocked_by;// for process 'zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'
wire [7:0] proc4_blocks;// for process 'zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'
wire proc4_idle;

assign proc4_blocks[0] = 1'b0;
assign proc4_blocks[1] = 1'b0;
assign proc4_blocks[2] = 1'b0;
assign proc4_blocks[3] = 1'b0;
assign proc4_blocks[4] = 1'b0;
assign proc4_blocks[5] = 1'b0;
assign proc4_blocks[6] = 1'b0;
assign proc4_blocks[7] = 1'b0;
assign proc4_is_blocked_by[0] = (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_3u_config20_Pipeline_PadMain_fu_28.layer5_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc4_is_blocked_by[1] = (AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U.if_empty_n == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc4_is_blocked_by[2] = (~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_3u_config20_Pipeline_PadBottomWidth_fu_36.layer20_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc4_is_blocked_by[3] = (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.real_start == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.ap_start == 1'b1 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc4_is_blocked_by[4] = 1'b0;
assign proc4_is_blocked_by[5] = 1'b0;
assign proc4_is_blocked_by[6] = 1'b0;
assign proc4_is_blocked_by[7] = 1'b0;
assign proc4_idle = (proc4_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc5_is_blocked_by;// for process 'conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'
wire [7:0] proc5_blocks;// for process 'conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'
wire proc5_idle;

assign proc5_blocks[0] = 1'b0;
assign proc5_blocks[1] = 1'b0;
assign proc5_blocks[2] = 1'b0;
assign proc5_blocks[3] = 1'b0;
assign proc5_blocks[4] = 1'b0;
assign proc5_blocks[5] = 1'b0;
assign proc5_blocks[6] = 1'b0;
assign proc5_blocks[7] = 1'b0;
assign proc5_is_blocked_by[0] = (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer20_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc5_is_blocked_by[1] = (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc5_is_blocked_by[2] = (~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer6_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc5_is_blocked_by[3] = (AESL_inst_myproject.layer6_out_U.if_full_n == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.real_start == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.ap_start == 1'b1 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc5_is_blocked_by[4] = 1'b0;
assign proc5_is_blocked_by[5] = 1'b0;
assign proc5_is_blocked_by[6] = 1'b0;
assign proc5_is_blocked_by[7] = 1'b0;
assign proc5_idle = (proc5_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc6_is_blocked_by;// for process 'relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'
wire [7:0] proc6_blocks;// for process 'relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'
wire proc6_idle;

assign proc6_blocks[0] = 1'b0;
assign proc6_blocks[1] = 1'b0;
assign proc6_blocks[2] = 1'b0;
assign proc6_blocks[3] = 1'b0;
assign proc6_blocks[4] = 1'b0;
assign proc6_blocks[5] = 1'b0;
assign proc6_blocks[6] = 1'b0;
assign proc6_blocks[7] = 1'b0;
assign proc6_is_blocked_by[0] = (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer6_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc6_is_blocked_by[1] = (AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc6_is_blocked_by[2] = (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer8_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc6_is_blocked_by[3] = (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U.if_full_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.real_start == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.ap_start == 1'b1 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc6_is_blocked_by[4] = 1'b0;
assign proc6_is_blocked_by[5] = 1'b0;
assign proc6_is_blocked_by[6] = 1'b0;
assign proc6_is_blocked_by[7] = 1'b0;
assign proc6_idle = (proc6_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc7_is_blocked_by;// for process 'pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'
wire [7:0] proc7_blocks;// for process 'pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'
wire proc7_idle;

assign proc7_blocks[0] = 1'b0;
assign proc7_blocks[1] = 1'b0;
assign proc7_blocks[2] = 1'b0;
assign proc7_blocks[3] = 1'b0;
assign proc7_blocks[4] = 1'b0;
assign proc7_blocks[5] = 1'b0;
assign proc7_blocks[6] = 1'b0;
assign proc7_blocks[7] = 1'b0;
assign proc7_is_blocked_by[0] = (~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer8_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc7_is_blocked_by[1] = (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U.if_empty_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc7_is_blocked_by[2] = (~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer9_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc7_is_blocked_by[3] = (AESL_inst_myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.real_start == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.ap_start == 1'b1 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc7_is_blocked_by[4] = 1'b0;
assign proc7_is_blocked_by[5] = 1'b0;
assign proc7_is_blocked_by[6] = 1'b0;
assign proc7_is_blocked_by[7] = 1'b0;
assign proc7_idle = (proc7_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc8_is_blocked_by;// for process 'concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'
wire [7:0] proc8_blocks;// for process 'concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'
wire proc8_idle;

assign proc8_is_blocked_by[0] = axis_block_sigs[1];
assign proc8_blocks[0] = ~axis_block_sigs[1];
assign proc8_blocks[1] = 1'b0;
assign proc8_blocks[2] = 1'b0;
assign proc8_blocks[3] = 1'b0;
assign proc8_blocks[4] = 1'b0;
assign proc8_blocks[5] = 1'b0;
assign proc8_blocks[6] = 1'b0;
assign proc8_blocks[7] = 1'b0;
assign proc8_is_blocked_by[1] = (~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.grp_concatenate1d_array_array_array_ap_fixed_25u_config12_Pipeline_ConcatLoop1_fu_287.layer9_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc8_is_blocked_by[2] = (AESL_inst_myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc8_is_blocked_by[3] = (~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.layer12_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc8_is_blocked_by[4] = (AESL_inst_myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.real_start == 1'b0 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_start == 1'b1 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc8_is_blocked_by[5] = 1'b0;
assign proc8_is_blocked_by[6] = 1'b0;
assign proc8_is_blocked_by[7] = 1'b0;
assign proc8_idle = (proc8_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc9_is_blocked_by;// for process 'dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'
wire [7:0] proc9_blocks;// for process 'dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'
wire proc9_idle;

assign proc9_blocks[0] = 1'b0;
assign proc9_blocks[1] = 1'b0;
assign proc9_blocks[2] = 1'b0;
assign proc9_blocks[3] = 1'b0;
assign proc9_blocks[4] = 1'b0;
assign proc9_blocks[5] = 1'b0;
assign proc9_blocks[6] = 1'b0;
assign proc9_blocks[7] = 1'b0;
assign proc9_is_blocked_by[0] = (~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer12_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc9_is_blocked_by[1] = (AESL_inst_myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc9_is_blocked_by[2] = (~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer13_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc9_is_blocked_by[3] = (AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.real_start == 1'b0 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.ap_start == 1'b1 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc9_is_blocked_by[4] = 1'b0;
assign proc9_is_blocked_by[5] = 1'b0;
assign proc9_is_blocked_by[6] = 1'b0;
assign proc9_is_blocked_by[7] = 1'b0;
assign proc9_idle = (proc9_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc10_is_blocked_by;// for process 'relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'
wire [7:0] proc10_blocks;// for process 'relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'
wire proc10_idle;

assign proc10_blocks[0] = 1'b0;
assign proc10_blocks[1] = 1'b0;
assign proc10_blocks[2] = 1'b0;
assign proc10_blocks[3] = 1'b0;
assign proc10_blocks[4] = 1'b0;
assign proc10_blocks[5] = 1'b0;
assign proc10_blocks[6] = 1'b0;
assign proc10_blocks[7] = 1'b0;
assign proc10_is_blocked_by[0] = (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer13_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc10_is_blocked_by[1] = (AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc10_is_blocked_by[2] = (~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer15_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc10_is_blocked_by[3] = (AESL_inst_myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.real_start == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.ap_start == 1'b1 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc10_is_blocked_by[4] = 1'b0;
assign proc10_is_blocked_by[5] = 1'b0;
assign proc10_is_blocked_by[6] = 1'b0;
assign proc10_is_blocked_by[7] = 1'b0;
assign proc10_idle = (proc10_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc11_is_blocked_by;// for process 'dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'
wire [7:0] proc11_blocks;// for process 'dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'
wire proc11_idle;

assign proc11_blocks[0] = 1'b0;
assign proc11_blocks[1] = 1'b0;
assign proc11_blocks[2] = 1'b0;
assign proc11_blocks[3] = 1'b0;
assign proc11_blocks[4] = 1'b0;
assign proc11_blocks[5] = 1'b0;
assign proc11_blocks[6] = 1'b0;
assign proc11_blocks[7] = 1'b0;
assign proc11_is_blocked_by[0] = (~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer15_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc11_is_blocked_by[1] = (AESL_inst_myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc11_is_blocked_by[2] = (~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer16_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc11_is_blocked_by[3] = (AESL_inst_myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.real_start == 1'b0 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.ap_start == 1'b1 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.start_once_reg == 1'b0) ? 1'b1 : 1'b0;
assign proc11_is_blocked_by[4] = 1'b0;
assign proc11_is_blocked_by[5] = 1'b0;
assign proc11_is_blocked_by[6] = 1'b0;
assign proc11_is_blocked_by[7] = 1'b0;
assign proc11_idle = (proc11_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

wire [7:0] proc12_is_blocked_by;// for process 'sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'
wire [7:0] proc12_blocks;// for process 'sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'
wire proc12_idle;

assign proc12_is_blocked_by[0] = axis_block_sigs[2];
assign proc12_blocks[0] = ~axis_block_sigs[2];
assign proc12_blocks[1] = 1'b0;
assign proc12_blocks[2] = 1'b0;
assign proc12_blocks[3] = 1'b0;
assign proc12_blocks[4] = 1'b0;
assign proc12_blocks[5] = 1'b0;
assign proc12_blocks[6] = 1'b0;
assign proc12_blocks[7] = 1'b0;
assign proc12_is_blocked_by[1] = (~AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.layer16_out_blk_n == 1'b1) ? 1'b1 : 1'b0;
assign proc12_is_blocked_by[2] = (AESL_inst_myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.ap_idle == 1'b1) ? 1'b1 : 1'b0;
assign proc12_is_blocked_by[3] = 1'b0;
assign proc12_is_blocked_by[4] = 1'b0;
assign proc12_is_blocked_by[5] = 1'b0;
assign proc12_is_blocked_by[6] = 1'b0;
assign proc12_is_blocked_by[7] = 1'b0;
assign proc12_idle = (proc12_is_blocked_by == 8'h0) ? 1'b1 : 1'b0;

reg [1:0] rpt_source_cnt;
initial begin : rpt_block_cnt
    rpt_source_cnt = 2'h0;
    wait(kernel_monitor_reset == 1'b1);
    repeat(10)
        @(posedge kernel_monitor_clock);
    while(!kernel_block || rpt_source_cnt != 2'h2)
    begin
        @(posedge kernel_monitor_clock);
        if (kernel_block)
            rpt_source_cnt = rpt_source_cnt + 2'h1;
    end
end

parameter RPT_IDLE = 5'b00001;
parameter RPT_PICK_PROC = 5'b00010;
parameter RPT_PROC_DST = 5'b00100;
parameter RPT_PROC_SRC = 5'b01000;
parameter RPT_DONE = 5'b10000;

reg [4:0] rpt_cur_st;
reg [4:0] rpt_next_st;
reg rpt_enable;
reg [3:0] rpt_proc_cnt;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_enable <= 1'b1;
    else if (rpt_cur_st == RPT_IDLE && rpt_source_cnt == 2'h2)
        rpt_enable <= 1'b0;
    else ;
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_proc_cnt <= 4'd0;
    else if (rpt_cur_st == RPT_PROC_SRC)
        rpt_proc_cnt <= rpt_proc_cnt + 4'd1;
    else ;
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_cur_st <= RPT_IDLE;
    else
        rpt_cur_st <= rpt_next_st;
end

always @(*) begin
    case(rpt_cur_st)
        RPT_IDLE: begin
            if (kernel_block == 1'b1 && rpt_enable == 1'b1)
                rpt_next_st = RPT_PICK_PROC;
            else
                rpt_next_st = RPT_IDLE;
        end
        RPT_PICK_PROC: begin
            if (rpt_proc_cnt == 13)
                rpt_next_st = RPT_DONE;
            else
                rpt_next_st = RPT_PROC_DST;
        end
        RPT_PROC_DST: rpt_next_st = RPT_PROC_SRC;
        RPT_PROC_SRC: rpt_next_st = RPT_PICK_PROC;
        RPT_DONE: rpt_next_st = RPT_IDLE;
        default: rpt_next_st = RPT_IDLE;
    endcase
end

reg [8:0] rpt_P0_block_info_dst;
reg [8:0] rpt_P0_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P0_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h0)
        rpt_P0_block_info_dst <= {1'b0,proc0_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P0_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h0)
        rpt_P0_block_info_src <= {proc0_idle,proc0_is_blocked_by};
end


reg [8:0] rpt_P1_block_info_dst;
reg [8:0] rpt_P1_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P1_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h1)
        rpt_P1_block_info_dst <= {1'b0,proc1_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P1_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h1)
        rpt_P1_block_info_src <= {proc1_idle,proc1_is_blocked_by};
end


reg [8:0] rpt_P2_block_info_dst;
reg [8:0] rpt_P2_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P2_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h2)
        rpt_P2_block_info_dst <= {1'b0,proc2_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P2_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h2)
        rpt_P2_block_info_src <= {proc2_idle,proc2_is_blocked_by};
end


reg [8:0] rpt_P3_block_info_dst;
reg [8:0] rpt_P3_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P3_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h3)
        rpt_P3_block_info_dst <= {1'b0,proc3_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P3_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h3)
        rpt_P3_block_info_src <= {proc3_idle,proc3_is_blocked_by};
end


reg [8:0] rpt_P4_block_info_dst;
reg [8:0] rpt_P4_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P4_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h4)
        rpt_P4_block_info_dst <= {1'b0,proc4_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P4_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h4)
        rpt_P4_block_info_src <= {proc4_idle,proc4_is_blocked_by};
end


reg [8:0] rpt_P5_block_info_dst;
reg [8:0] rpt_P5_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P5_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h5)
        rpt_P5_block_info_dst <= {1'b0,proc5_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P5_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h5)
        rpt_P5_block_info_src <= {proc5_idle,proc5_is_blocked_by};
end


reg [8:0] rpt_P6_block_info_dst;
reg [8:0] rpt_P6_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P6_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h6)
        rpt_P6_block_info_dst <= {1'b0,proc6_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P6_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h6)
        rpt_P6_block_info_src <= {proc6_idle,proc6_is_blocked_by};
end


reg [8:0] rpt_P7_block_info_dst;
reg [8:0] rpt_P7_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P7_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h7)
        rpt_P7_block_info_dst <= {1'b0,proc7_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P7_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h7)
        rpt_P7_block_info_src <= {proc7_idle,proc7_is_blocked_by};
end


reg [8:0] rpt_P8_block_info_dst;
reg [8:0] rpt_P8_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P8_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h8)
        rpt_P8_block_info_dst <= {1'b0,proc8_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P8_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h8)
        rpt_P8_block_info_src <= {proc8_idle,proc8_is_blocked_by};
end


reg [8:0] rpt_P9_block_info_dst;
reg [8:0] rpt_P9_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P9_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h9)
        rpt_P9_block_info_dst <= {1'b0,proc9_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P9_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h9)
        rpt_P9_block_info_src <= {proc9_idle,proc9_is_blocked_by};
end


reg [8:0] rpt_P10_block_info_dst;
reg [8:0] rpt_P10_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P10_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h10)
        rpt_P10_block_info_dst <= {1'b0,proc10_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P10_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h10)
        rpt_P10_block_info_src <= {proc10_idle,proc10_is_blocked_by};
end


reg [8:0] rpt_P11_block_info_dst;
reg [8:0] rpt_P11_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P11_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h11)
        rpt_P11_block_info_dst <= {1'b0,proc11_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P11_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h11)
        rpt_P11_block_info_src <= {proc11_idle,proc11_is_blocked_by};
end


reg [8:0] rpt_P12_block_info_dst;
reg [8:0] rpt_P12_block_info_src;

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P12_block_info_dst <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_DST && rpt_proc_cnt == 4'h12)
        rpt_P12_block_info_dst <= {1'b0,proc12_blocks};
end

always @(posedge kernel_monitor_clock) begin
    if (kernel_monitor_reset == 1'b1)
        rpt_P12_block_info_src <= 9'h0;
    else if (rpt_cur_st == RPT_PROC_SRC && rpt_proc_cnt == 4'h12)
        rpt_P12_block_info_src <= {proc12_idle,proc12_is_blocked_by};
end



// synthesis translate_off

initial begin : axis_deadlock_report
integer axis_port_scan_flag;
integer fp;
integer cnt;
integer path_cnt;
    cnt = 0;
    path_cnt = 1;
    fp = $fopen("kernel_deadlock_diagnosis.rpt","a");
    $fdisplay(fp,"//// start to dump deadlock path for kernel '%m' ////");
    wait(kernel_monitor_reset == 1'b1);
        axis_port_scan_flag = 0;
    while(!kernel_block || cnt != 2)
    begin
        @(posedge kernel_monitor_clock);
        if (kernel_block)
            cnt = cnt + 1;
    end

    $display("\n//////////////////////////////////////////////////////////////////////////////");
    $fdisplay(fp,"\n//////////////////////////////////////////////////////////////////////////////");
    // find all axis ports which have no outer block
    while (axis_port_scan_flag < 3) begin
        case(axis_port_scan_flag)
            0:
            begin
                if (axis_block_sigs[0] == 1'b0) begin
                    $display("//****************************************************************************");
                    $display("// Block PATH %d",path_cnt);
                    $display("//****************************************************************************");
                    $display("// Following axis port can not access by process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' :");
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Block PATH %d",path_cnt);
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Following axis port can not access by process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' :");
                    if (axis_block_sigs[0] == 1'b0) begin
                        $display("//    Port 'y_profile_input' can not be read");
                        $fdisplay(fp,"//    Port 'y_profile_input' can not be read");
                    end
                    report_block_path_in_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0(fp);
                    $display("//****************************************************************************");
                    $fdisplay(fp,"//****************************************************************************");
                    path_cnt = path_cnt + 1;
                end
            end
            1:
            begin
                if (axis_block_sigs[1] == 1'b0) begin
                    $display("//****************************************************************************");
                    $display("// Block PATH %d",path_cnt);
                    $display("//****************************************************************************");
                    $display("// Following axis port can not access by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' :");
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Block PATH %d",path_cnt);
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Following axis port can not access by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' :");
                    if (axis_block_sigs[1] == 1'b0) begin
                        $display("//    Port 'y0_input' can not be read");
                        $fdisplay(fp,"//    Port 'y0_input' can not be read");
                    end
                    report_block_path_in_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0(fp);
                    $display("//****************************************************************************");
                    $fdisplay(fp,"//****************************************************************************");
                    path_cnt = path_cnt + 1;
                end
            end
            2:
            begin
                if (axis_block_sigs[2] == 1'b0) begin
                    $display("//****************************************************************************");
                    $display("// Block PATH %d",path_cnt);
                    $display("//****************************************************************************");
                    $display("// Following axis port can not access by process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' :");
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Block PATH %d",path_cnt);
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Following axis port can not access by process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' :");
                    if (axis_block_sigs[2] == 1'b0) begin
                        $display("//    Port 'layer18_out' can not be written");
                        $fdisplay(fp,"//    Port 'layer18_out' can not be written");
                    end
                    report_block_path_in_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0(fp);
                    $display("//****************************************************************************");
                    $fdisplay(fp,"//****************************************************************************");
                    path_cnt = path_cnt + 1;
                end
            end
        endcase
        axis_port_scan_flag = axis_port_scan_flag + 1;
    end
    $display("//////////////////////////////////////////////////////////////////////////////\n");
    $fdisplay(fp,"//////////////////////////////////////////////////////////////////////////////\n");
    $fdisplay(fp,"//// finish dumping deadlock path for kernel '%m' ////\n");
    $fclose(fp);
end

task report_block_path_in_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0(input integer fp);
reg [1-1:0] out_proc_hit;
begin
    if (axis_block_sigs[0] == 1'b1) begin
        $display("//");
        $display("//    Process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' is blocked by following axis port :");
        $fdisplay(fp,"//");
        $fdisplay(fp,"//    Process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' is blocked by following axis port :");
        if (axis_block_sigs[0] == 1'b1) begin
            $display("//        Port 'y_profile_input' does not have valid input data");
            $fdisplay(fp,"//        Port 'y_profile_input' does not have valid input data");
        end
    end
    else begin 
        out_proc_hit = 1'h0;
// check block with process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'
        if (AESL_inst_myproject.layer19_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42.layer19_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer19_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42.layer19_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.real_start == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.ap_start == 1'b1 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.start_once_reg == 1'b0) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' is blocked by following channel which connected with process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' is blocked by following channel which connected with process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' :");

            if (AESL_inst_myproject.layer19_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42.layer19_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer19_out_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer19_out_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
            end
            else if (AESL_inst_myproject.layer19_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42.layer19_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer19_out_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer19_out_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
            end
            if (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.real_start == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.ap_start == 1'b1 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
            end
            report_block_path_in_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0(fp);
        end

        if (out_proc_hit == 1'h0) begin
            $display("//");
            $display("//    Process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'
        if (AESL_inst_myproject.layer19_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer19_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer19_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer19_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' is blocked by following channel which connected with process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' is blocked by following channel which connected with process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0' :");

            if (AESL_inst_myproject.layer19_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer19_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer19_out_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer19_out_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'");
            end
            else if (AESL_inst_myproject.layer19_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer19_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer19_out_U' read by process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer19_out_U' read by process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'");
            end
            if (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0'");
            end
            report_block_path_in_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0(fp);
        end

// check block with process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'
        if (AESL_inst_myproject.layer2_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer2_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer2_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer2_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' :");

            if (AESL_inst_myproject.layer2_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer2_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer2_out_U' written by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer2_out_U' written by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
            end
            else if (AESL_inst_myproject.layer2_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0.layer2_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer2_out_U' read by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer2_out_U' read by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
            end
            report_block_path_in_relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'
        if (AESL_inst_myproject.layer2_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer2_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer2_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer2_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' is blocked by following channel which connected with process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' is blocked by following channel which connected with process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0' :");

            if (AESL_inst_myproject.layer2_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer2_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer2_out_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer2_out_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
            end
            else if (AESL_inst_myproject.layer2_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer2_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer2_out_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer2_out_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
            end
            if (AESL_inst_myproject.start_for_relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0'");
            end
            report_block_path_in_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_3u_config2_U0(fp);
        end

// check block with process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'
        if (AESL_inst_myproject.layer4_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer4_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer4_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer4_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U.if_full_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.real_start == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.ap_start == 1'b1 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' is blocked by following channel which connected with process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' is blocked by following channel which connected with process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' :");

            if (AESL_inst_myproject.layer4_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer4_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer4_out_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer4_out_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
            end
            else if (AESL_inst_myproject.layer4_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.layer4_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer4_out_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer4_out_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
            end
            if (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U.if_full_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.real_start == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.ap_start == 1'b1 && AESL_inst_myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
            end
            report_block_path_in_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'
        if (AESL_inst_myproject.layer4_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer4_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer4_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer4_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U.if_empty_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0' :");

            if (AESL_inst_myproject.layer4_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer4_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer4_out_U' written by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer4_out_U' written by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
            end
            else if (AESL_inst_myproject.layer4_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer4_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer4_out_U' read by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer4_out_U' read by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
            end
            if (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U.if_empty_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U' written by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_configtde_U' written by process 'myproject.relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0'");
            end
            report_block_path_in_relu_array_ap_fixed_3u_array_ap_ufixed_24_8_4_0_0_3u_relu_config4_U0(fp);
        end

// check block with process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'
        if (AESL_inst_myproject.layer5_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer5_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer5_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer5_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U.if_full_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.real_start == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.ap_start == 1'b1 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' is blocked by following channel which connected with process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' is blocked by following channel which connected with process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' :");

            if (AESL_inst_myproject.layer5_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer5_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer5_out_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer5_out_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
            end
            else if (AESL_inst_myproject.layer5_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.layer5_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer5_out_U' read by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer5_out_U' read by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
            end
            if (AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U.if_full_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.real_start == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.ap_start == 1'b1 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U' read by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U' read by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
            end
            report_block_path_in_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'
        if (AESL_inst_myproject.layer5_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_3u_config20_Pipeline_PadMain_fu_28.layer5_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer5_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_3u_config20_Pipeline_PadMain_fu_28.layer5_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U.if_empty_n == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' is blocked by following channel which connected with process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' is blocked by following channel which connected with process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0' :");

            if (AESL_inst_myproject.layer5_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_3u_config20_Pipeline_PadMain_fu_28.layer5_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer5_out_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer5_out_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
            end
            else if (AESL_inst_myproject.layer5_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_3u_config20_Pipeline_PadMain_fu_28.layer5_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer5_out_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer5_out_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
            end
            if (AESL_inst_myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U.if_empty_n == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config2udo_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0'");
            end
            report_block_path_in_pooling2d_cl_array_ap_ufixed_3u_array_ap_fixed_16_6_5_3_0_3u_config5_U0(fp);
        end

// check block with process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'
        if (AESL_inst_myproject.layer20_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_3u_config20_Pipeline_PadBottomWidth_fu_36.layer20_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer20_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_3u_config20_Pipeline_PadBottomWidth_fu_36.layer20_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.real_start == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.ap_start == 1'b1 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' is blocked by following channel which connected with process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' is blocked by following channel which connected with process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' :");

            if (AESL_inst_myproject.layer20_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_3u_config20_Pipeline_PadBottomWidth_fu_36.layer20_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer20_out_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer20_out_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
            end
            else if (AESL_inst_myproject.layer20_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_3u_config20_Pipeline_PadBottomWidth_fu_36.layer20_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer20_out_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer20_out_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
            end
            if (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.real_start == 1'b0 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.ap_start == 1'b1 && AESL_inst_myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
            end
            report_block_path_in_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'
        if (AESL_inst_myproject.layer20_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer20_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer20_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer20_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' is blocked by following channel which connected with process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' is blocked by following channel which connected with process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0' :");

            if (AESL_inst_myproject.layer20_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer20_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer20_out_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer20_out_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
            end
            else if (AESL_inst_myproject.layer20_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer20_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer20_out_U' read by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer20_out_U' read by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
            end
            if (AESL_inst_myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U' written by process 'myproject.zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0'");
            end
            report_block_path_in_zeropad2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_3u_config20_U0(fp);
        end

// check block with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'
        if (AESL_inst_myproject.layer6_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer6_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer6_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer6_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' :");

            if (AESL_inst_myproject.layer6_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer6_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer6_out_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer6_out_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
            end
            else if (AESL_inst_myproject.layer6_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0.layer6_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer6_out_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer6_out_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
            end
            report_block_path_in_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'
        if (AESL_inst_myproject.layer6_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer6_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer6_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer6_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' is blocked by following channel which connected with process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' is blocked by following channel which connected with process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0' :");

            if (AESL_inst_myproject.layer6_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer6_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer6_out_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer6_out_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
            end
            else if (AESL_inst_myproject.layer6_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer6_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer6_out_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer6_out_U' read by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
            end
            if (AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0_U' written by process 'myproject.conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0'");
            end
            report_block_path_in_conv_2d_cl_array_ap_fixed_3u_array_ap_fixed_16_6_5_3_0_4u_config6_U0(fp);
        end

// check block with process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'
        if (AESL_inst_myproject.layer8_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer8_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer8_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer8_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U.if_full_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.real_start == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.ap_start == 1'b1 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' is blocked by following channel which connected with process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' is blocked by following channel which connected with process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' :");

            if (AESL_inst_myproject.layer8_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer8_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer8_out_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer8_out_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
            end
            else if (AESL_inst_myproject.layer8_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.layer8_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer8_out_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer8_out_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
            end
            if (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U.if_full_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.real_start == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.ap_start == 1'b1 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
            end
            report_block_path_in_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'
        if (AESL_inst_myproject.layer8_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer8_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer8_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer8_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U.if_empty_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0' :");

            if (AESL_inst_myproject.layer8_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer8_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer8_out_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer8_out_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
            end
            else if (AESL_inst_myproject.layer8_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer8_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer8_out_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer8_out_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
            end
            if (AESL_inst_myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U.if_empty_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configvdy_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0'");
            end
            report_block_path_in_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config8_U0(fp);
        end

// check block with process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'
        if (AESL_inst_myproject.layer9_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer9_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer9_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer9_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.real_start == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.ap_start == 1'b1 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' is blocked by following channel which connected with process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' is blocked by following channel which connected with process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' :");

            if (AESL_inst_myproject.layer9_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer9_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer9_out_U' written by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer9_out_U' written by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
            end
            else if (AESL_inst_myproject.layer9_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.layer9_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer9_out_U' read by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer9_out_U' read by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
            end
            if (AESL_inst_myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.real_start == 1'b0 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.ap_start == 1'b1 && AESL_inst_myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U' read by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U' read by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
            end
            report_block_path_in_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (axis_block_sigs[1] == 1'b1) begin
        $display("//");
        $display("//    Process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' is blocked by following axis port :");
        $fdisplay(fp,"//");
        $fdisplay(fp,"//    Process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' is blocked by following axis port :");
        if (axis_block_sigs[1] == 1'b1) begin
            $display("//        Port 'y0_input' does not have valid input data");
            $fdisplay(fp,"//        Port 'y0_input' does not have valid input data");
        end
    end
    else begin 
        out_proc_hit = 2'h0;
// check block with process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'
        if (AESL_inst_myproject.layer9_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.grp_concatenate1d_array_array_array_ap_fixed_25u_config12_Pipeline_ConcatLoop1_fu_287.layer9_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer9_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.grp_concatenate1d_array_array_array_ap_fixed_25u_config12_Pipeline_ConcatLoop1_fu_287.layer9_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' is blocked by following channel which connected with process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' is blocked by following channel which connected with process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0' :");

            if (AESL_inst_myproject.layer9_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.grp_concatenate1d_array_array_array_ap_fixed_25u_config12_Pipeline_ConcatLoop1_fu_287.layer9_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer9_out_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer9_out_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
            end
            else if (AESL_inst_myproject.layer9_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.grp_concatenate1d_array_array_array_ap_fixed_25u_config12_Pipeline_ConcatLoop1_fu_287.layer9_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer9_out_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer9_out_U' read by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
            end
            if (AESL_inst_myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0_U' written by process 'myproject.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0'");
            end
            report_block_path_in_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config9_U0(fp);
        end

// check block with process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'
        if (AESL_inst_myproject.layer12_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.layer12_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer12_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.layer12_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.real_start == 1'b0 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_start == 1'b1 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' is blocked by following channel which connected with process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' is blocked by following channel which connected with process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' :");

            if (AESL_inst_myproject.layer12_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.layer12_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer12_out_U' written by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer12_out_U' written by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
            end
            else if (AESL_inst_myproject.layer12_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.layer12_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer12_out_U' read by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer12_out_U' read by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
            end
            if (AESL_inst_myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.real_start == 1'b0 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.ap_start == 1'b1 && AESL_inst_myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U' read by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U' read by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
            end
            report_block_path_in_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'
        if (AESL_inst_myproject.layer12_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer12_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer12_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer12_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' is blocked by following channel which connected with process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' is blocked by following channel which connected with process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0' :");

            if (AESL_inst_myproject.layer12_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer12_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer12_out_U' written by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer12_out_U' written by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
            end
            else if (AESL_inst_myproject.layer12_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer12_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer12_out_U' read by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer12_out_U' read by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
            end
            if (AESL_inst_myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U' written by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0_U' written by process 'myproject.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0'");
            end
            report_block_path_in_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_25u_config12_U0(fp);
        end

// check block with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'
        if (AESL_inst_myproject.layer13_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer13_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer13_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer13_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.real_start == 1'b0 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.ap_start == 1'b1 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' :");

            if (AESL_inst_myproject.layer13_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer13_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer13_out_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer13_out_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
            end
            else if (AESL_inst_myproject.layer13_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.layer13_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer13_out_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer13_out_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
            end
            if (AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.real_start == 1'b0 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.ap_start == 1'b1 && AESL_inst_myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
            end
            report_block_path_in_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'
        if (AESL_inst_myproject.layer13_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer13_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer13_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer13_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' is blocked by following channel which connected with process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' is blocked by following channel which connected with process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0' :");

            if (AESL_inst_myproject.layer13_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer13_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer13_out_U' written by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer13_out_U' written by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
            end
            else if (AESL_inst_myproject.layer13_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer13_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer13_out_U' read by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer13_out_U' read by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
            end
            if (AESL_inst_myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U' written by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0_U' written by process 'myproject.dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0'");
            end
            report_block_path_in_dense_array_ap_fixed_25u_array_ap_fixed_16_6_5_3_0_4u_config13_U0(fp);
        end

// check block with process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'
        if (AESL_inst_myproject.layer15_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer15_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer15_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer15_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.real_start == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.ap_start == 1'b1 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' is blocked by following channel which connected with process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' is blocked by following channel which connected with process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' :");

            if (AESL_inst_myproject.layer15_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer15_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer15_out_U' written by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer15_out_U' written by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
            end
            else if (AESL_inst_myproject.layer15_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.layer15_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer15_out_U' read by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer15_out_U' read by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
            end
            if (AESL_inst_myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.real_start == 1'b0 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.ap_start == 1'b1 && AESL_inst_myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U' read by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U' read by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
            end
            report_block_path_in_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'
        if (AESL_inst_myproject.layer15_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer15_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer15_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer15_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' is blocked by following channel which connected with process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0' :");

            if (AESL_inst_myproject.layer15_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer15_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer15_out_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer15_out_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
            end
            else if (AESL_inst_myproject.layer15_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer15_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer15_out_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer15_out_U' read by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
            end
            if (AESL_inst_myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U' written by process 'myproject.relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0'");
            end
            report_block_path_in_relu_array_ap_fixed_4u_array_ap_ufixed_24_8_4_0_0_4u_relu_config15_U0(fp);
        end

// check block with process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'
        if (AESL_inst_myproject.layer16_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer16_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_myproject.layer16_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer16_out_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.real_start == 1'b0 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.ap_start == 1'b1 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' is blocked by following channel which connected with process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' is blocked by following channel which connected with process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' :");

            if (AESL_inst_myproject.layer16_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer16_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer16_out_U' written by process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer16_out_U' written by process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'");
            end
            else if (AESL_inst_myproject.layer16_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.layer16_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer16_out_U' read by process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer16_out_U' read by process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'");
            end
            if (AESL_inst_myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U.if_full_n == 1'b0 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.real_start == 1'b0 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.ap_start == 1'b1 && AESL_inst_myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U' read by process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U' read by process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0'");
            end
            report_block_path_in_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0(input integer fp);
reg [1-1:0] out_proc_hit;
begin
    if (axis_block_sigs[2] == 1'b1) begin
        $display("//");
        $display("//    Process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' is blocked by following axis port :");
        $fdisplay(fp,"//");
        $fdisplay(fp,"//    Process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' is blocked by following axis port :");
        if (axis_block_sigs[2] == 1'b1) begin
            $display("//        Port 'layer18_out' is not ready");
            $fdisplay(fp,"//        Port 'layer18_out' is not ready");
        end
    end
    else begin 
        out_proc_hit = 1'h0;
// check block with process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'
        if (AESL_inst_myproject.layer16_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.layer16_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_myproject.layer16_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.layer16_out_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' is blocked by following channel which connected with process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' is blocked by following channel which connected with process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0' :");

            if (AESL_inst_myproject.layer16_out_U.if_empty_n == 1'b0 && ~AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.layer16_out_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'myproject.layer16_out_U' written by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
                $fdisplay(fp,"//        empty input FIFO 'myproject.layer16_out_U' written by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
            end
            else if (AESL_inst_myproject.layer16_out_U.if_full_n == 1'b0 && ~AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.layer16_out_blk_n == 1'b1) begin
                $display("//        full output FIFO 'myproject.layer16_out_U' read by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
                $fdisplay(fp,"//        full output FIFO 'myproject.layer16_out_U' read by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
            end
            if (AESL_inst_myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U.if_empty_n == 1'b0 && AESL_inst_myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U' written by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'myproject.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U' written by process 'myproject.dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0'");
            end
            report_block_path_in_dense_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_1u_config16_U0(fp);
        end

        if (out_proc_hit == 1'h0) begin
            $display("//");
            $display("//    Process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'myproject.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0' is in idle status");
        end
    end

end
endtask

// synthesis translate_on

initial begin : trigger_axis_deadlock
reg block_delay;
    block_delay = 0;
    while(1) begin
        @(posedge kernel_monitor_clock);
    if (kernel_block == 1'b1 && block_delay == 1'b0)
        block_delay = kernel_block;
    end
end

endmodule
