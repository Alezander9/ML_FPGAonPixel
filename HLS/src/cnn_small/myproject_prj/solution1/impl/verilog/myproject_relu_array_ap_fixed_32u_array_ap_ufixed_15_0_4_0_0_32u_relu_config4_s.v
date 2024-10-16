// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module myproject_relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        layer3_out_dout,
        layer3_out_num_data_valid,
        layer3_out_fifo_cap,
        layer3_out_empty_n,
        layer3_out_read,
        layer4_out_din,
        layer4_out_num_data_valid,
        layer4_out_fifo_cap,
        layer4_out_full_n,
        layer4_out_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [511:0] layer3_out_dout;
input  [1:0] layer3_out_num_data_valid;
input  [1:0] layer3_out_fifo_cap;
input   layer3_out_empty_n;
output   layer3_out_read;
output  [479:0] layer4_out_din;
input  [1:0] layer4_out_num_data_valid;
input  [1:0] layer4_out_fifo_cap;
input   layer4_out_full_n;
output   layer4_out_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg layer3_out_read;
reg layer4_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    layer3_out_blk_n;
reg    layer4_out_blk_n;
reg    ap_block_state1;
wire   [15:0] in_data_fu_303_p1;
wire   [9:0] trunc_ln52_fu_623_p1;
wire   [5:0] tmp_25_fu_635_p4;
wire   [0:0] icmp_ln52_fu_645_p2;
wire   [14:0] shl_ln_fu_627_p3;
wire   [0:0] icmp_ln51_fu_617_p2;
wire   [14:0] select_ln52_fu_651_p3;
wire   [15:0] in_data_1_fu_327_p4;
wire   [9:0] tmp_26_fu_673_p4;
wire   [5:0] tmp_27_fu_691_p4;
wire   [0:0] icmp_ln52_1_fu_701_p2;
wire   [14:0] shl_ln52_1_fu_683_p3;
wire   [0:0] icmp_ln51_1_fu_667_p2;
wire   [14:0] select_ln52_1_fu_707_p3;
wire   [15:0] in_data_2_fu_337_p4;
wire   [9:0] tmp_28_fu_729_p4;
wire   [5:0] tmp_29_fu_747_p4;
wire   [0:0] icmp_ln52_2_fu_757_p2;
wire   [14:0] shl_ln52_2_fu_739_p3;
wire   [0:0] icmp_ln51_2_fu_723_p2;
wire   [14:0] select_ln52_2_fu_763_p3;
wire   [15:0] in_data_3_fu_347_p4;
wire   [9:0] tmp_59_fu_785_p4;
wire   [5:0] tmp_30_fu_803_p4;
wire   [0:0] icmp_ln52_3_fu_813_p2;
wire   [14:0] shl_ln52_3_fu_795_p3;
wire   [0:0] icmp_ln51_3_fu_779_p2;
wire   [14:0] select_ln52_3_fu_819_p3;
wire   [15:0] tmp_fu_357_p4;
wire   [9:0] tmp_60_fu_841_p4;
wire   [5:0] tmp_31_fu_859_p4;
wire   [0:0] icmp_ln52_4_fu_869_p2;
wire   [14:0] shl_ln52_4_fu_851_p3;
wire   [0:0] icmp_ln51_4_fu_835_p2;
wire   [14:0] select_ln52_4_fu_875_p3;
wire   [15:0] tmp_s_fu_367_p4;
wire   [9:0] tmp_61_fu_897_p4;
wire   [5:0] tmp_32_fu_915_p4;
wire   [0:0] icmp_ln52_5_fu_925_p2;
wire   [14:0] shl_ln52_5_fu_907_p3;
wire   [0:0] icmp_ln51_5_fu_891_p2;
wire   [14:0] select_ln52_5_fu_931_p3;
wire   [15:0] tmp_1_fu_377_p4;
wire   [9:0] tmp_62_fu_953_p4;
wire   [5:0] tmp_33_fu_971_p4;
wire   [0:0] icmp_ln52_6_fu_981_p2;
wire   [14:0] shl_ln52_6_fu_963_p3;
wire   [0:0] icmp_ln51_6_fu_947_p2;
wire   [14:0] select_ln52_6_fu_987_p3;
wire   [15:0] tmp_2_fu_387_p4;
wire   [9:0] tmp_63_fu_1009_p4;
wire   [5:0] tmp_34_fu_1027_p4;
wire   [0:0] icmp_ln52_7_fu_1037_p2;
wire   [14:0] shl_ln52_7_fu_1019_p3;
wire   [0:0] icmp_ln51_7_fu_1003_p2;
wire   [14:0] select_ln52_7_fu_1043_p3;
wire   [15:0] tmp_3_fu_397_p4;
wire   [9:0] tmp_64_fu_1065_p4;
wire   [5:0] tmp_35_fu_1083_p4;
wire   [0:0] icmp_ln52_8_fu_1093_p2;
wire   [14:0] shl_ln52_8_fu_1075_p3;
wire   [0:0] icmp_ln51_8_fu_1059_p2;
wire   [14:0] select_ln52_8_fu_1099_p3;
wire   [15:0] tmp_4_fu_407_p4;
wire   [9:0] tmp_65_fu_1121_p4;
wire   [5:0] tmp_36_fu_1139_p4;
wire   [0:0] icmp_ln52_9_fu_1149_p2;
wire   [14:0] shl_ln52_9_fu_1131_p3;
wire   [0:0] icmp_ln51_9_fu_1115_p2;
wire   [14:0] select_ln52_9_fu_1155_p3;
wire   [15:0] tmp_5_fu_417_p4;
wire   [9:0] tmp_66_fu_1177_p4;
wire   [5:0] tmp_37_fu_1195_p4;
wire   [0:0] icmp_ln52_10_fu_1205_p2;
wire   [14:0] shl_ln52_s_fu_1187_p3;
wire   [0:0] icmp_ln51_10_fu_1171_p2;
wire   [14:0] select_ln52_10_fu_1211_p3;
wire   [15:0] tmp_6_fu_427_p4;
wire   [9:0] tmp_67_fu_1233_p4;
wire   [5:0] tmp_38_fu_1251_p4;
wire   [0:0] icmp_ln52_11_fu_1261_p2;
wire   [14:0] shl_ln52_10_fu_1243_p3;
wire   [0:0] icmp_ln51_11_fu_1227_p2;
wire   [14:0] select_ln52_11_fu_1267_p3;
wire   [15:0] tmp_7_fu_437_p4;
wire   [9:0] tmp_68_fu_1289_p4;
wire   [5:0] tmp_39_fu_1307_p4;
wire   [0:0] icmp_ln52_12_fu_1317_p2;
wire   [14:0] shl_ln52_11_fu_1299_p3;
wire   [0:0] icmp_ln51_12_fu_1283_p2;
wire   [14:0] select_ln52_12_fu_1323_p3;
wire   [15:0] tmp_8_fu_447_p4;
wire   [9:0] tmp_69_fu_1345_p4;
wire   [5:0] tmp_40_fu_1363_p4;
wire   [0:0] icmp_ln52_13_fu_1373_p2;
wire   [14:0] shl_ln52_12_fu_1355_p3;
wire   [0:0] icmp_ln51_13_fu_1339_p2;
wire   [14:0] select_ln52_13_fu_1379_p3;
wire   [15:0] tmp_9_fu_457_p4;
wire   [9:0] tmp_70_fu_1401_p4;
wire   [5:0] tmp_41_fu_1419_p4;
wire   [0:0] icmp_ln52_14_fu_1429_p2;
wire   [14:0] shl_ln52_13_fu_1411_p3;
wire   [0:0] icmp_ln51_14_fu_1395_p2;
wire   [14:0] select_ln52_14_fu_1435_p3;
wire   [15:0] tmp_10_fu_467_p4;
wire   [9:0] tmp_71_fu_1457_p4;
wire   [5:0] tmp_42_fu_1475_p4;
wire   [0:0] icmp_ln52_15_fu_1485_p2;
wire   [14:0] shl_ln52_14_fu_1467_p3;
wire   [0:0] icmp_ln51_15_fu_1451_p2;
wire   [14:0] select_ln52_15_fu_1491_p3;
wire   [15:0] tmp_11_fu_477_p4;
wire   [9:0] tmp_72_fu_1513_p4;
wire   [5:0] tmp_43_fu_1531_p4;
wire   [0:0] icmp_ln52_16_fu_1541_p2;
wire   [14:0] shl_ln52_15_fu_1523_p3;
wire   [0:0] icmp_ln51_16_fu_1507_p2;
wire   [14:0] select_ln52_16_fu_1547_p3;
wire   [15:0] tmp_12_fu_487_p4;
wire   [9:0] tmp_73_fu_1569_p4;
wire   [5:0] tmp_44_fu_1587_p4;
wire   [0:0] icmp_ln52_17_fu_1597_p2;
wire   [14:0] shl_ln52_16_fu_1579_p3;
wire   [0:0] icmp_ln51_17_fu_1563_p2;
wire   [14:0] select_ln52_17_fu_1603_p3;
wire   [15:0] tmp_13_fu_497_p4;
wire   [9:0] tmp_74_fu_1625_p4;
wire   [5:0] tmp_45_fu_1643_p4;
wire   [0:0] icmp_ln52_18_fu_1653_p2;
wire   [14:0] shl_ln52_17_fu_1635_p3;
wire   [0:0] icmp_ln51_18_fu_1619_p2;
wire   [14:0] select_ln52_18_fu_1659_p3;
wire   [15:0] tmp_14_fu_507_p4;
wire   [9:0] tmp_75_fu_1681_p4;
wire   [5:0] tmp_46_fu_1699_p4;
wire   [0:0] icmp_ln52_19_fu_1709_p2;
wire   [14:0] shl_ln52_18_fu_1691_p3;
wire   [0:0] icmp_ln51_19_fu_1675_p2;
wire   [14:0] select_ln52_19_fu_1715_p3;
wire   [15:0] tmp_15_fu_517_p4;
wire   [9:0] tmp_76_fu_1737_p4;
wire   [5:0] tmp_47_fu_1755_p4;
wire   [0:0] icmp_ln52_20_fu_1765_p2;
wire   [14:0] shl_ln52_19_fu_1747_p3;
wire   [0:0] icmp_ln51_20_fu_1731_p2;
wire   [14:0] select_ln52_20_fu_1771_p3;
wire   [15:0] tmp_16_fu_527_p4;
wire   [9:0] tmp_77_fu_1793_p4;
wire   [5:0] tmp_48_fu_1811_p4;
wire   [0:0] icmp_ln52_21_fu_1821_p2;
wire   [14:0] shl_ln52_20_fu_1803_p3;
wire   [0:0] icmp_ln51_21_fu_1787_p2;
wire   [14:0] select_ln52_21_fu_1827_p3;
wire   [15:0] tmp_17_fu_537_p4;
wire   [9:0] tmp_78_fu_1849_p4;
wire   [5:0] tmp_49_fu_1867_p4;
wire   [0:0] icmp_ln52_22_fu_1877_p2;
wire   [14:0] shl_ln52_21_fu_1859_p3;
wire   [0:0] icmp_ln51_22_fu_1843_p2;
wire   [14:0] select_ln52_22_fu_1883_p3;
wire   [15:0] tmp_18_fu_547_p4;
wire   [9:0] tmp_79_fu_1905_p4;
wire   [5:0] tmp_50_fu_1923_p4;
wire   [0:0] icmp_ln52_23_fu_1933_p2;
wire   [14:0] shl_ln52_22_fu_1915_p3;
wire   [0:0] icmp_ln51_23_fu_1899_p2;
wire   [14:0] select_ln52_23_fu_1939_p3;
wire   [15:0] tmp_19_fu_557_p4;
wire   [9:0] tmp_80_fu_1961_p4;
wire   [5:0] tmp_51_fu_1979_p4;
wire   [0:0] icmp_ln52_24_fu_1989_p2;
wire   [14:0] shl_ln52_23_fu_1971_p3;
wire   [0:0] icmp_ln51_24_fu_1955_p2;
wire   [14:0] select_ln52_24_fu_1995_p3;
wire   [15:0] tmp_20_fu_567_p4;
wire   [9:0] tmp_81_fu_2017_p4;
wire   [5:0] tmp_52_fu_2035_p4;
wire   [0:0] icmp_ln52_25_fu_2045_p2;
wire   [14:0] shl_ln52_24_fu_2027_p3;
wire   [0:0] icmp_ln51_25_fu_2011_p2;
wire   [14:0] select_ln52_25_fu_2051_p3;
wire   [15:0] tmp_21_fu_577_p4;
wire   [9:0] tmp_82_fu_2073_p4;
wire   [5:0] tmp_53_fu_2091_p4;
wire   [0:0] icmp_ln52_26_fu_2101_p2;
wire   [14:0] shl_ln52_25_fu_2083_p3;
wire   [0:0] icmp_ln51_26_fu_2067_p2;
wire   [14:0] select_ln52_26_fu_2107_p3;
wire   [15:0] tmp_22_fu_587_p4;
wire   [9:0] tmp_83_fu_2129_p4;
wire   [5:0] tmp_54_fu_2147_p4;
wire   [0:0] icmp_ln52_27_fu_2157_p2;
wire   [14:0] shl_ln52_26_fu_2139_p3;
wire   [0:0] icmp_ln51_27_fu_2123_p2;
wire   [14:0] select_ln52_27_fu_2163_p3;
wire   [15:0] tmp_23_fu_597_p4;
wire   [9:0] tmp_84_fu_2185_p4;
wire   [5:0] tmp_55_fu_2203_p4;
wire   [0:0] icmp_ln52_28_fu_2213_p2;
wire   [14:0] shl_ln52_27_fu_2195_p3;
wire   [0:0] icmp_ln51_28_fu_2179_p2;
wire   [14:0] select_ln52_28_fu_2219_p3;
wire   [15:0] tmp_24_fu_607_p4;
wire   [9:0] tmp_85_fu_2241_p4;
wire   [5:0] tmp_56_fu_2259_p4;
wire   [0:0] icmp_ln52_29_fu_2269_p2;
wire   [14:0] shl_ln52_28_fu_2251_p3;
wire   [0:0] icmp_ln51_29_fu_2235_p2;
wire   [14:0] select_ln52_29_fu_2275_p3;
wire   [15:0] trunc_ln44_s_fu_307_p4;
wire   [9:0] tmp_86_fu_2297_p4;
wire   [5:0] tmp_57_fu_2315_p4;
wire   [0:0] icmp_ln52_30_fu_2325_p2;
wire   [14:0] shl_ln52_29_fu_2307_p3;
wire   [0:0] icmp_ln51_30_fu_2291_p2;
wire   [14:0] select_ln52_30_fu_2331_p3;
wire   [15:0] trunc_ln44_1_fu_317_p4;
wire   [9:0] tmp_87_fu_2353_p4;
wire   [5:0] tmp_58_fu_2371_p4;
wire   [0:0] icmp_ln52_31_fu_2381_p2;
wire   [14:0] shl_ln52_30_fu_2363_p3;
wire   [0:0] icmp_ln51_31_fu_2347_p2;
wire   [14:0] select_ln52_31_fu_2387_p3;
wire   [14:0] select_ln51_31_fu_2395_p3;
wire   [14:0] select_ln51_30_fu_2339_p3;
wire   [14:0] select_ln51_29_fu_2283_p3;
wire   [14:0] select_ln51_28_fu_2227_p3;
wire   [14:0] select_ln51_27_fu_2171_p3;
wire   [14:0] select_ln51_26_fu_2115_p3;
wire   [14:0] select_ln51_25_fu_2059_p3;
wire   [14:0] select_ln51_24_fu_2003_p3;
wire   [14:0] select_ln51_23_fu_1947_p3;
wire   [14:0] select_ln51_22_fu_1891_p3;
wire   [14:0] select_ln51_21_fu_1835_p3;
wire   [14:0] select_ln51_20_fu_1779_p3;
wire   [14:0] select_ln51_19_fu_1723_p3;
wire   [14:0] select_ln51_18_fu_1667_p3;
wire   [14:0] select_ln51_17_fu_1611_p3;
wire   [14:0] select_ln51_16_fu_1555_p3;
wire   [14:0] select_ln51_15_fu_1499_p3;
wire   [14:0] select_ln51_14_fu_1443_p3;
wire   [14:0] select_ln51_13_fu_1387_p3;
wire   [14:0] select_ln51_12_fu_1331_p3;
wire   [14:0] select_ln51_11_fu_1275_p3;
wire   [14:0] select_ln51_10_fu_1219_p3;
wire   [14:0] select_ln51_9_fu_1163_p3;
wire   [14:0] select_ln51_8_fu_1107_p3;
wire   [14:0] select_ln51_7_fu_1051_p3;
wire   [14:0] select_ln51_6_fu_995_p3;
wire   [14:0] select_ln51_5_fu_939_p3;
wire   [14:0] select_ln51_4_fu_883_p3;
wire   [14:0] select_ln51_3_fu_827_p3;
wire   [14:0] select_ln51_2_fu_771_p3;
wire   [14:0] select_ln51_1_fu_715_p3;
wire   [14:0] select_ln51_fu_659_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((real_start == 1'b0) | (layer4_out_full_n == 1'b0) | (layer3_out_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((real_start == 1'b0) | (layer4_out_full_n == 1'b0) | (layer3_out_empty_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (layer4_out_full_n == 1'b0) | (layer3_out_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (layer4_out_full_n == 1'b0) | (layer3_out_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer3_out_blk_n = layer3_out_empty_n;
    end else begin
        layer3_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (layer4_out_full_n == 1'b0) | (layer3_out_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer3_out_read = 1'b1;
    end else begin
        layer3_out_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer4_out_blk_n = layer4_out_full_n;
    end else begin
        layer4_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (layer4_out_full_n == 1'b0) | (layer3_out_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        layer4_out_write = 1'b1;
    end else begin
        layer4_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (layer4_out_full_n == 1'b0) | (layer3_out_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign icmp_ln51_10_fu_1171_p2 = (($signed(tmp_5_fu_417_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_11_fu_1227_p2 = (($signed(tmp_6_fu_427_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_12_fu_1283_p2 = (($signed(tmp_7_fu_437_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_13_fu_1339_p2 = (($signed(tmp_8_fu_447_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_14_fu_1395_p2 = (($signed(tmp_9_fu_457_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_15_fu_1451_p2 = (($signed(tmp_10_fu_467_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_16_fu_1507_p2 = (($signed(tmp_11_fu_477_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_17_fu_1563_p2 = (($signed(tmp_12_fu_487_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_18_fu_1619_p2 = (($signed(tmp_13_fu_497_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_19_fu_1675_p2 = (($signed(tmp_14_fu_507_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_1_fu_667_p2 = (($signed(in_data_1_fu_327_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_20_fu_1731_p2 = (($signed(tmp_15_fu_517_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_21_fu_1787_p2 = (($signed(tmp_16_fu_527_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_22_fu_1843_p2 = (($signed(tmp_17_fu_537_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_23_fu_1899_p2 = (($signed(tmp_18_fu_547_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_24_fu_1955_p2 = (($signed(tmp_19_fu_557_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_25_fu_2011_p2 = (($signed(tmp_20_fu_567_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_26_fu_2067_p2 = (($signed(tmp_21_fu_577_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_27_fu_2123_p2 = (($signed(tmp_22_fu_587_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_28_fu_2179_p2 = (($signed(tmp_23_fu_597_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_29_fu_2235_p2 = (($signed(tmp_24_fu_607_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_2_fu_723_p2 = (($signed(in_data_2_fu_337_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_30_fu_2291_p2 = (($signed(trunc_ln44_s_fu_307_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_31_fu_2347_p2 = (($signed(trunc_ln44_1_fu_317_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_3_fu_779_p2 = (($signed(in_data_3_fu_347_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_4_fu_835_p2 = (($signed(tmp_fu_357_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_5_fu_891_p2 = (($signed(tmp_s_fu_367_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_6_fu_947_p2 = (($signed(tmp_1_fu_377_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_7_fu_1003_p2 = (($signed(tmp_2_fu_387_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_8_fu_1059_p2 = (($signed(tmp_3_fu_397_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_9_fu_1115_p2 = (($signed(tmp_4_fu_407_p4) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln51_fu_617_p2 = (($signed(in_data_fu_303_p1) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln52_10_fu_1205_p2 = ((tmp_37_fu_1195_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_11_fu_1261_p2 = ((tmp_38_fu_1251_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_12_fu_1317_p2 = ((tmp_39_fu_1307_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_13_fu_1373_p2 = ((tmp_40_fu_1363_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_14_fu_1429_p2 = ((tmp_41_fu_1419_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_15_fu_1485_p2 = ((tmp_42_fu_1475_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_16_fu_1541_p2 = ((tmp_43_fu_1531_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_17_fu_1597_p2 = ((tmp_44_fu_1587_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_18_fu_1653_p2 = ((tmp_45_fu_1643_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_19_fu_1709_p2 = ((tmp_46_fu_1699_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_1_fu_701_p2 = ((tmp_27_fu_691_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_20_fu_1765_p2 = ((tmp_47_fu_1755_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_21_fu_1821_p2 = ((tmp_48_fu_1811_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_22_fu_1877_p2 = ((tmp_49_fu_1867_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_23_fu_1933_p2 = ((tmp_50_fu_1923_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_24_fu_1989_p2 = ((tmp_51_fu_1979_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_25_fu_2045_p2 = ((tmp_52_fu_2035_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_26_fu_2101_p2 = ((tmp_53_fu_2091_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_27_fu_2157_p2 = ((tmp_54_fu_2147_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_28_fu_2213_p2 = ((tmp_55_fu_2203_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_29_fu_2269_p2 = ((tmp_56_fu_2259_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_2_fu_757_p2 = ((tmp_29_fu_747_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_30_fu_2325_p2 = ((tmp_57_fu_2315_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_31_fu_2381_p2 = ((tmp_58_fu_2371_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_3_fu_813_p2 = ((tmp_30_fu_803_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_4_fu_869_p2 = ((tmp_31_fu_859_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_5_fu_925_p2 = ((tmp_32_fu_915_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_6_fu_981_p2 = ((tmp_33_fu_971_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_7_fu_1037_p2 = ((tmp_34_fu_1027_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_8_fu_1093_p2 = ((tmp_35_fu_1083_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_9_fu_1149_p2 = ((tmp_36_fu_1139_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln52_fu_645_p2 = ((tmp_25_fu_635_p4 != 6'd0) ? 1'b1 : 1'b0);

assign in_data_1_fu_327_p4 = {{layer3_out_dout[31:16]}};

assign in_data_2_fu_337_p4 = {{layer3_out_dout[47:32]}};

assign in_data_3_fu_347_p4 = {{layer3_out_dout[63:48]}};

assign in_data_fu_303_p1 = layer3_out_dout[15:0];

assign layer4_out_din = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{select_ln51_31_fu_2395_p3}, {select_ln51_30_fu_2339_p3}}, {select_ln51_29_fu_2283_p3}}, {select_ln51_28_fu_2227_p3}}, {select_ln51_27_fu_2171_p3}}, {select_ln51_26_fu_2115_p3}}, {select_ln51_25_fu_2059_p3}}, {select_ln51_24_fu_2003_p3}}, {select_ln51_23_fu_1947_p3}}, {select_ln51_22_fu_1891_p3}}, {select_ln51_21_fu_1835_p3}}, {select_ln51_20_fu_1779_p3}}, {select_ln51_19_fu_1723_p3}}, {select_ln51_18_fu_1667_p3}}, {select_ln51_17_fu_1611_p3}}, {select_ln51_16_fu_1555_p3}}, {select_ln51_15_fu_1499_p3}}, {select_ln51_14_fu_1443_p3}}, {select_ln51_13_fu_1387_p3}}, {select_ln51_12_fu_1331_p3}}, {select_ln51_11_fu_1275_p3}}, {select_ln51_10_fu_1219_p3}}, {select_ln51_9_fu_1163_p3}}, {select_ln51_8_fu_1107_p3}}, {select_ln51_7_fu_1051_p3}}, {select_ln51_6_fu_995_p3}}, {select_ln51_5_fu_939_p3}}, {select_ln51_4_fu_883_p3}}, {select_ln51_3_fu_827_p3}}, {select_ln51_2_fu_771_p3}}, {select_ln51_1_fu_715_p3}}, {select_ln51_fu_659_p3}};

assign select_ln51_10_fu_1219_p3 = ((icmp_ln51_10_fu_1171_p2[0:0] == 1'b1) ? select_ln52_10_fu_1211_p3 : 15'd0);

assign select_ln51_11_fu_1275_p3 = ((icmp_ln51_11_fu_1227_p2[0:0] == 1'b1) ? select_ln52_11_fu_1267_p3 : 15'd0);

assign select_ln51_12_fu_1331_p3 = ((icmp_ln51_12_fu_1283_p2[0:0] == 1'b1) ? select_ln52_12_fu_1323_p3 : 15'd0);

assign select_ln51_13_fu_1387_p3 = ((icmp_ln51_13_fu_1339_p2[0:0] == 1'b1) ? select_ln52_13_fu_1379_p3 : 15'd0);

assign select_ln51_14_fu_1443_p3 = ((icmp_ln51_14_fu_1395_p2[0:0] == 1'b1) ? select_ln52_14_fu_1435_p3 : 15'd0);

assign select_ln51_15_fu_1499_p3 = ((icmp_ln51_15_fu_1451_p2[0:0] == 1'b1) ? select_ln52_15_fu_1491_p3 : 15'd0);

assign select_ln51_16_fu_1555_p3 = ((icmp_ln51_16_fu_1507_p2[0:0] == 1'b1) ? select_ln52_16_fu_1547_p3 : 15'd0);

assign select_ln51_17_fu_1611_p3 = ((icmp_ln51_17_fu_1563_p2[0:0] == 1'b1) ? select_ln52_17_fu_1603_p3 : 15'd0);

assign select_ln51_18_fu_1667_p3 = ((icmp_ln51_18_fu_1619_p2[0:0] == 1'b1) ? select_ln52_18_fu_1659_p3 : 15'd0);

assign select_ln51_19_fu_1723_p3 = ((icmp_ln51_19_fu_1675_p2[0:0] == 1'b1) ? select_ln52_19_fu_1715_p3 : 15'd0);

assign select_ln51_1_fu_715_p3 = ((icmp_ln51_1_fu_667_p2[0:0] == 1'b1) ? select_ln52_1_fu_707_p3 : 15'd0);

assign select_ln51_20_fu_1779_p3 = ((icmp_ln51_20_fu_1731_p2[0:0] == 1'b1) ? select_ln52_20_fu_1771_p3 : 15'd0);

assign select_ln51_21_fu_1835_p3 = ((icmp_ln51_21_fu_1787_p2[0:0] == 1'b1) ? select_ln52_21_fu_1827_p3 : 15'd0);

assign select_ln51_22_fu_1891_p3 = ((icmp_ln51_22_fu_1843_p2[0:0] == 1'b1) ? select_ln52_22_fu_1883_p3 : 15'd0);

assign select_ln51_23_fu_1947_p3 = ((icmp_ln51_23_fu_1899_p2[0:0] == 1'b1) ? select_ln52_23_fu_1939_p3 : 15'd0);

assign select_ln51_24_fu_2003_p3 = ((icmp_ln51_24_fu_1955_p2[0:0] == 1'b1) ? select_ln52_24_fu_1995_p3 : 15'd0);

assign select_ln51_25_fu_2059_p3 = ((icmp_ln51_25_fu_2011_p2[0:0] == 1'b1) ? select_ln52_25_fu_2051_p3 : 15'd0);

assign select_ln51_26_fu_2115_p3 = ((icmp_ln51_26_fu_2067_p2[0:0] == 1'b1) ? select_ln52_26_fu_2107_p3 : 15'd0);

assign select_ln51_27_fu_2171_p3 = ((icmp_ln51_27_fu_2123_p2[0:0] == 1'b1) ? select_ln52_27_fu_2163_p3 : 15'd0);

assign select_ln51_28_fu_2227_p3 = ((icmp_ln51_28_fu_2179_p2[0:0] == 1'b1) ? select_ln52_28_fu_2219_p3 : 15'd0);

assign select_ln51_29_fu_2283_p3 = ((icmp_ln51_29_fu_2235_p2[0:0] == 1'b1) ? select_ln52_29_fu_2275_p3 : 15'd0);

assign select_ln51_2_fu_771_p3 = ((icmp_ln51_2_fu_723_p2[0:0] == 1'b1) ? select_ln52_2_fu_763_p3 : 15'd0);

assign select_ln51_30_fu_2339_p3 = ((icmp_ln51_30_fu_2291_p2[0:0] == 1'b1) ? select_ln52_30_fu_2331_p3 : 15'd0);

assign select_ln51_31_fu_2395_p3 = ((icmp_ln51_31_fu_2347_p2[0:0] == 1'b1) ? select_ln52_31_fu_2387_p3 : 15'd0);

assign select_ln51_3_fu_827_p3 = ((icmp_ln51_3_fu_779_p2[0:0] == 1'b1) ? select_ln52_3_fu_819_p3 : 15'd0);

assign select_ln51_4_fu_883_p3 = ((icmp_ln51_4_fu_835_p2[0:0] == 1'b1) ? select_ln52_4_fu_875_p3 : 15'd0);

assign select_ln51_5_fu_939_p3 = ((icmp_ln51_5_fu_891_p2[0:0] == 1'b1) ? select_ln52_5_fu_931_p3 : 15'd0);

assign select_ln51_6_fu_995_p3 = ((icmp_ln51_6_fu_947_p2[0:0] == 1'b1) ? select_ln52_6_fu_987_p3 : 15'd0);

assign select_ln51_7_fu_1051_p3 = ((icmp_ln51_7_fu_1003_p2[0:0] == 1'b1) ? select_ln52_7_fu_1043_p3 : 15'd0);

assign select_ln51_8_fu_1107_p3 = ((icmp_ln51_8_fu_1059_p2[0:0] == 1'b1) ? select_ln52_8_fu_1099_p3 : 15'd0);

assign select_ln51_9_fu_1163_p3 = ((icmp_ln51_9_fu_1115_p2[0:0] == 1'b1) ? select_ln52_9_fu_1155_p3 : 15'd0);

assign select_ln51_fu_659_p3 = ((icmp_ln51_fu_617_p2[0:0] == 1'b1) ? select_ln52_fu_651_p3 : 15'd0);

assign select_ln52_10_fu_1211_p3 = ((icmp_ln52_10_fu_1205_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_s_fu_1187_p3);

assign select_ln52_11_fu_1267_p3 = ((icmp_ln52_11_fu_1261_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_10_fu_1243_p3);

assign select_ln52_12_fu_1323_p3 = ((icmp_ln52_12_fu_1317_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_11_fu_1299_p3);

assign select_ln52_13_fu_1379_p3 = ((icmp_ln52_13_fu_1373_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_12_fu_1355_p3);

assign select_ln52_14_fu_1435_p3 = ((icmp_ln52_14_fu_1429_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_13_fu_1411_p3);

assign select_ln52_15_fu_1491_p3 = ((icmp_ln52_15_fu_1485_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_14_fu_1467_p3);

assign select_ln52_16_fu_1547_p3 = ((icmp_ln52_16_fu_1541_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_15_fu_1523_p3);

assign select_ln52_17_fu_1603_p3 = ((icmp_ln52_17_fu_1597_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_16_fu_1579_p3);

assign select_ln52_18_fu_1659_p3 = ((icmp_ln52_18_fu_1653_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_17_fu_1635_p3);

assign select_ln52_19_fu_1715_p3 = ((icmp_ln52_19_fu_1709_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_18_fu_1691_p3);

assign select_ln52_1_fu_707_p3 = ((icmp_ln52_1_fu_701_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_1_fu_683_p3);

assign select_ln52_20_fu_1771_p3 = ((icmp_ln52_20_fu_1765_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_19_fu_1747_p3);

assign select_ln52_21_fu_1827_p3 = ((icmp_ln52_21_fu_1821_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_20_fu_1803_p3);

assign select_ln52_22_fu_1883_p3 = ((icmp_ln52_22_fu_1877_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_21_fu_1859_p3);

assign select_ln52_23_fu_1939_p3 = ((icmp_ln52_23_fu_1933_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_22_fu_1915_p3);

assign select_ln52_24_fu_1995_p3 = ((icmp_ln52_24_fu_1989_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_23_fu_1971_p3);

assign select_ln52_25_fu_2051_p3 = ((icmp_ln52_25_fu_2045_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_24_fu_2027_p3);

assign select_ln52_26_fu_2107_p3 = ((icmp_ln52_26_fu_2101_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_25_fu_2083_p3);

assign select_ln52_27_fu_2163_p3 = ((icmp_ln52_27_fu_2157_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_26_fu_2139_p3);

assign select_ln52_28_fu_2219_p3 = ((icmp_ln52_28_fu_2213_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_27_fu_2195_p3);

assign select_ln52_29_fu_2275_p3 = ((icmp_ln52_29_fu_2269_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_28_fu_2251_p3);

assign select_ln52_2_fu_763_p3 = ((icmp_ln52_2_fu_757_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_2_fu_739_p3);

assign select_ln52_30_fu_2331_p3 = ((icmp_ln52_30_fu_2325_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_29_fu_2307_p3);

assign select_ln52_31_fu_2387_p3 = ((icmp_ln52_31_fu_2381_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_30_fu_2363_p3);

assign select_ln52_3_fu_819_p3 = ((icmp_ln52_3_fu_813_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_3_fu_795_p3);

assign select_ln52_4_fu_875_p3 = ((icmp_ln52_4_fu_869_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_4_fu_851_p3);

assign select_ln52_5_fu_931_p3 = ((icmp_ln52_5_fu_925_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_5_fu_907_p3);

assign select_ln52_6_fu_987_p3 = ((icmp_ln52_6_fu_981_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_6_fu_963_p3);

assign select_ln52_7_fu_1043_p3 = ((icmp_ln52_7_fu_1037_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_7_fu_1019_p3);

assign select_ln52_8_fu_1099_p3 = ((icmp_ln52_8_fu_1093_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_8_fu_1075_p3);

assign select_ln52_9_fu_1155_p3 = ((icmp_ln52_9_fu_1149_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln52_9_fu_1131_p3);

assign select_ln52_fu_651_p3 = ((icmp_ln52_fu_645_p2[0:0] == 1'b1) ? 15'd32767 : shl_ln_fu_627_p3);

assign shl_ln52_10_fu_1243_p3 = {{tmp_67_fu_1233_p4}, {5'd0}};

assign shl_ln52_11_fu_1299_p3 = {{tmp_68_fu_1289_p4}, {5'd0}};

assign shl_ln52_12_fu_1355_p3 = {{tmp_69_fu_1345_p4}, {5'd0}};

assign shl_ln52_13_fu_1411_p3 = {{tmp_70_fu_1401_p4}, {5'd0}};

assign shl_ln52_14_fu_1467_p3 = {{tmp_71_fu_1457_p4}, {5'd0}};

assign shl_ln52_15_fu_1523_p3 = {{tmp_72_fu_1513_p4}, {5'd0}};

assign shl_ln52_16_fu_1579_p3 = {{tmp_73_fu_1569_p4}, {5'd0}};

assign shl_ln52_17_fu_1635_p3 = {{tmp_74_fu_1625_p4}, {5'd0}};

assign shl_ln52_18_fu_1691_p3 = {{tmp_75_fu_1681_p4}, {5'd0}};

assign shl_ln52_19_fu_1747_p3 = {{tmp_76_fu_1737_p4}, {5'd0}};

assign shl_ln52_1_fu_683_p3 = {{tmp_26_fu_673_p4}, {5'd0}};

assign shl_ln52_20_fu_1803_p3 = {{tmp_77_fu_1793_p4}, {5'd0}};

assign shl_ln52_21_fu_1859_p3 = {{tmp_78_fu_1849_p4}, {5'd0}};

assign shl_ln52_22_fu_1915_p3 = {{tmp_79_fu_1905_p4}, {5'd0}};

assign shl_ln52_23_fu_1971_p3 = {{tmp_80_fu_1961_p4}, {5'd0}};

assign shl_ln52_24_fu_2027_p3 = {{tmp_81_fu_2017_p4}, {5'd0}};

assign shl_ln52_25_fu_2083_p3 = {{tmp_82_fu_2073_p4}, {5'd0}};

assign shl_ln52_26_fu_2139_p3 = {{tmp_83_fu_2129_p4}, {5'd0}};

assign shl_ln52_27_fu_2195_p3 = {{tmp_84_fu_2185_p4}, {5'd0}};

assign shl_ln52_28_fu_2251_p3 = {{tmp_85_fu_2241_p4}, {5'd0}};

assign shl_ln52_29_fu_2307_p3 = {{tmp_86_fu_2297_p4}, {5'd0}};

assign shl_ln52_2_fu_739_p3 = {{tmp_28_fu_729_p4}, {5'd0}};

assign shl_ln52_30_fu_2363_p3 = {{tmp_87_fu_2353_p4}, {5'd0}};

assign shl_ln52_3_fu_795_p3 = {{tmp_59_fu_785_p4}, {5'd0}};

assign shl_ln52_4_fu_851_p3 = {{tmp_60_fu_841_p4}, {5'd0}};

assign shl_ln52_5_fu_907_p3 = {{tmp_61_fu_897_p4}, {5'd0}};

assign shl_ln52_6_fu_963_p3 = {{tmp_62_fu_953_p4}, {5'd0}};

assign shl_ln52_7_fu_1019_p3 = {{tmp_63_fu_1009_p4}, {5'd0}};

assign shl_ln52_8_fu_1075_p3 = {{tmp_64_fu_1065_p4}, {5'd0}};

assign shl_ln52_9_fu_1131_p3 = {{tmp_65_fu_1121_p4}, {5'd0}};

assign shl_ln52_s_fu_1187_p3 = {{tmp_66_fu_1177_p4}, {5'd0}};

assign shl_ln_fu_627_p3 = {{trunc_ln52_fu_623_p1}, {5'd0}};

assign start_out = real_start;

assign tmp_10_fu_467_p4 = {{layer3_out_dout[255:240]}};

assign tmp_11_fu_477_p4 = {{layer3_out_dout[271:256]}};

assign tmp_12_fu_487_p4 = {{layer3_out_dout[287:272]}};

assign tmp_13_fu_497_p4 = {{layer3_out_dout[303:288]}};

assign tmp_14_fu_507_p4 = {{layer3_out_dout[319:304]}};

assign tmp_15_fu_517_p4 = {{layer3_out_dout[335:320]}};

assign tmp_16_fu_527_p4 = {{layer3_out_dout[351:336]}};

assign tmp_17_fu_537_p4 = {{layer3_out_dout[367:352]}};

assign tmp_18_fu_547_p4 = {{layer3_out_dout[383:368]}};

assign tmp_19_fu_557_p4 = {{layer3_out_dout[399:384]}};

assign tmp_1_fu_377_p4 = {{layer3_out_dout[111:96]}};

assign tmp_20_fu_567_p4 = {{layer3_out_dout[415:400]}};

assign tmp_21_fu_577_p4 = {{layer3_out_dout[431:416]}};

assign tmp_22_fu_587_p4 = {{layer3_out_dout[447:432]}};

assign tmp_23_fu_597_p4 = {{layer3_out_dout[463:448]}};

assign tmp_24_fu_607_p4 = {{layer3_out_dout[479:464]}};

assign tmp_25_fu_635_p4 = {{layer3_out_dout[15:10]}};

assign tmp_26_fu_673_p4 = {{layer3_out_dout[25:16]}};

assign tmp_27_fu_691_p4 = {{layer3_out_dout[31:26]}};

assign tmp_28_fu_729_p4 = {{layer3_out_dout[41:32]}};

assign tmp_29_fu_747_p4 = {{layer3_out_dout[47:42]}};

assign tmp_2_fu_387_p4 = {{layer3_out_dout[127:112]}};

assign tmp_30_fu_803_p4 = {{layer3_out_dout[63:58]}};

assign tmp_31_fu_859_p4 = {{layer3_out_dout[79:74]}};

assign tmp_32_fu_915_p4 = {{layer3_out_dout[95:90]}};

assign tmp_33_fu_971_p4 = {{layer3_out_dout[111:106]}};

assign tmp_34_fu_1027_p4 = {{layer3_out_dout[127:122]}};

assign tmp_35_fu_1083_p4 = {{layer3_out_dout[143:138]}};

assign tmp_36_fu_1139_p4 = {{layer3_out_dout[159:154]}};

assign tmp_37_fu_1195_p4 = {{layer3_out_dout[175:170]}};

assign tmp_38_fu_1251_p4 = {{layer3_out_dout[191:186]}};

assign tmp_39_fu_1307_p4 = {{layer3_out_dout[207:202]}};

assign tmp_3_fu_397_p4 = {{layer3_out_dout[143:128]}};

assign tmp_40_fu_1363_p4 = {{layer3_out_dout[223:218]}};

assign tmp_41_fu_1419_p4 = {{layer3_out_dout[239:234]}};

assign tmp_42_fu_1475_p4 = {{layer3_out_dout[255:250]}};

assign tmp_43_fu_1531_p4 = {{layer3_out_dout[271:266]}};

assign tmp_44_fu_1587_p4 = {{layer3_out_dout[287:282]}};

assign tmp_45_fu_1643_p4 = {{layer3_out_dout[303:298]}};

assign tmp_46_fu_1699_p4 = {{layer3_out_dout[319:314]}};

assign tmp_47_fu_1755_p4 = {{layer3_out_dout[335:330]}};

assign tmp_48_fu_1811_p4 = {{layer3_out_dout[351:346]}};

assign tmp_49_fu_1867_p4 = {{layer3_out_dout[367:362]}};

assign tmp_4_fu_407_p4 = {{layer3_out_dout[159:144]}};

assign tmp_50_fu_1923_p4 = {{layer3_out_dout[383:378]}};

assign tmp_51_fu_1979_p4 = {{layer3_out_dout[399:394]}};

assign tmp_52_fu_2035_p4 = {{layer3_out_dout[415:410]}};

assign tmp_53_fu_2091_p4 = {{layer3_out_dout[431:426]}};

assign tmp_54_fu_2147_p4 = {{layer3_out_dout[447:442]}};

assign tmp_55_fu_2203_p4 = {{layer3_out_dout[463:458]}};

assign tmp_56_fu_2259_p4 = {{layer3_out_dout[479:474]}};

assign tmp_57_fu_2315_p4 = {{layer3_out_dout[495:490]}};

assign tmp_58_fu_2371_p4 = {{layer3_out_dout[511:506]}};

assign tmp_59_fu_785_p4 = {{layer3_out_dout[57:48]}};

assign tmp_5_fu_417_p4 = {{layer3_out_dout[175:160]}};

assign tmp_60_fu_841_p4 = {{layer3_out_dout[73:64]}};

assign tmp_61_fu_897_p4 = {{layer3_out_dout[89:80]}};

assign tmp_62_fu_953_p4 = {{layer3_out_dout[105:96]}};

assign tmp_63_fu_1009_p4 = {{layer3_out_dout[121:112]}};

assign tmp_64_fu_1065_p4 = {{layer3_out_dout[137:128]}};

assign tmp_65_fu_1121_p4 = {{layer3_out_dout[153:144]}};

assign tmp_66_fu_1177_p4 = {{layer3_out_dout[169:160]}};

assign tmp_67_fu_1233_p4 = {{layer3_out_dout[185:176]}};

assign tmp_68_fu_1289_p4 = {{layer3_out_dout[201:192]}};

assign tmp_69_fu_1345_p4 = {{layer3_out_dout[217:208]}};

assign tmp_6_fu_427_p4 = {{layer3_out_dout[191:176]}};

assign tmp_70_fu_1401_p4 = {{layer3_out_dout[233:224]}};

assign tmp_71_fu_1457_p4 = {{layer3_out_dout[249:240]}};

assign tmp_72_fu_1513_p4 = {{layer3_out_dout[265:256]}};

assign tmp_73_fu_1569_p4 = {{layer3_out_dout[281:272]}};

assign tmp_74_fu_1625_p4 = {{layer3_out_dout[297:288]}};

assign tmp_75_fu_1681_p4 = {{layer3_out_dout[313:304]}};

assign tmp_76_fu_1737_p4 = {{layer3_out_dout[329:320]}};

assign tmp_77_fu_1793_p4 = {{layer3_out_dout[345:336]}};

assign tmp_78_fu_1849_p4 = {{layer3_out_dout[361:352]}};

assign tmp_79_fu_1905_p4 = {{layer3_out_dout[377:368]}};

assign tmp_7_fu_437_p4 = {{layer3_out_dout[207:192]}};

assign tmp_80_fu_1961_p4 = {{layer3_out_dout[393:384]}};

assign tmp_81_fu_2017_p4 = {{layer3_out_dout[409:400]}};

assign tmp_82_fu_2073_p4 = {{layer3_out_dout[425:416]}};

assign tmp_83_fu_2129_p4 = {{layer3_out_dout[441:432]}};

assign tmp_84_fu_2185_p4 = {{layer3_out_dout[457:448]}};

assign tmp_85_fu_2241_p4 = {{layer3_out_dout[473:464]}};

assign tmp_86_fu_2297_p4 = {{layer3_out_dout[489:480]}};

assign tmp_87_fu_2353_p4 = {{layer3_out_dout[505:496]}};

assign tmp_8_fu_447_p4 = {{layer3_out_dout[223:208]}};

assign tmp_9_fu_457_p4 = {{layer3_out_dout[239:224]}};

assign tmp_fu_357_p4 = {{layer3_out_dout[79:64]}};

assign tmp_s_fu_367_p4 = {{layer3_out_dout[95:80]}};

assign trunc_ln44_1_fu_317_p4 = {{layer3_out_dout[511:496]}};

assign trunc_ln44_s_fu_307_p4 = {{layer3_out_dout[495:480]}};

assign trunc_ln52_fu_623_p1 = layer3_out_dout[9:0];

endmodule //myproject_relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4_s
