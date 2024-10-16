-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_relu_array_ap_fixed_4u_array_ap_ufixed_10_0_4_0_0_4u_relu_config4_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    layer2_out_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    layer2_out_num_data_valid : IN STD_LOGIC_VECTOR (7 downto 0);
    layer2_out_fifo_cap : IN STD_LOGIC_VECTOR (7 downto 0);
    layer2_out_empty_n : IN STD_LOGIC;
    layer2_out_read : OUT STD_LOGIC;
    layer4_out_din : OUT STD_LOGIC_VECTOR (39 downto 0);
    layer4_out_num_data_valid : IN STD_LOGIC_VECTOR (7 downto 0);
    layer4_out_fifo_cap : IN STD_LOGIC_VECTOR (7 downto 0);
    layer4_out_full_n : IN STD_LOGIC;
    layer4_out_write : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC );
end;


architecture behav of myproject_relu_array_ap_fixed_4u_array_ap_ufixed_10_0_4_0_0_4u_relu_config4_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_68 : STD_LOGIC_VECTOR (6 downto 0) := "1101000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv10_3FF : STD_LOGIC_VECTOR (9 downto 0) := "1111111111";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
    constant ap_const_lv32_2A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101010";
    constant ap_const_lv32_39 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111001";
    constant ap_const_lv32_3A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111010";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal internal_ap_ready : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln41_fu_105_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal layer2_out_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal layer4_out_blk_n : STD_LOGIC;
    signal i_fu_80 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_8_fu_111_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_sig_allocacmp_i_7 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal in_data_fu_122_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_fu_166_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln52_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln52_fu_162_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln51_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_data_fu_182_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal in_data_7_fu_146_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_s_fu_214_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln52_13_fu_224_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln52_s_fu_204_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln51_13_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_data_9_fu_230_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal in_data_8_fu_126_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_9_fu_262_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln52_14_fu_272_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln52_3_fu_252_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln51_14_fu_246_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_data_11_fu_278_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal in_data_9_fu_136_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_1_fu_310_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln52_15_fu_320_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln52_4_fu_300_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln51_15_fu_294_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_data_13_fu_326_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal out_data_14_fu_334_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal out_data_12_fu_286_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal out_data_10_fu_238_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal out_data_8_fu_190_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_101 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component myproject_flow_control_loop_pipe IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_U : component myproject_flow_control_loop_pipe
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => real_start,
        ap_ready => internal_ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int,
        ap_continue => ap_continue);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_101)) then
                if ((icmp_ln41_fu_105_p2 = ap_const_lv1_0)) then 
                    i_fu_80 <= i_8_fu_111_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_80 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_done_reg, layer2_out_empty_n, layer4_out_full_n, ap_start_int)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((layer4_out_full_n = ap_const_logic_0) or (layer2_out_empty_n = ap_const_logic_0))) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_done_reg, layer2_out_empty_n, layer4_out_full_n, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((layer4_out_full_n = ap_const_logic_0) or (layer2_out_empty_n = ap_const_logic_0))) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_done_reg, layer2_out_empty_n, layer4_out_full_n, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((layer4_out_full_n = ap_const_logic_0) or (layer2_out_empty_n = ap_const_logic_0))) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_done_reg = ap_const_logic_1);
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(layer2_out_empty_n, layer4_out_full_n)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((layer4_out_full_n = ap_const_logic_0) or (layer2_out_empty_n = ap_const_logic_0));
    end process;


    ap_condition_101_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
                ap_condition_101 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, icmp_ln41_fu_105_p2, ap_start_int)
    begin
        if (((icmp_ln41_fu_105_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_done_reg, ap_block_pp0_stage0_subdone, ap_loop_exit_ready)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;
    ap_ready <= internal_ap_ready;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_7_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_80, ap_loop_init, ap_start_int)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i_7 <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_i_7 <= i_fu_80;
        end if; 
    end process;

    i_8_fu_111_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_7) + unsigned(ap_const_lv7_1));
    icmp_ln41_fu_105_p2 <= "1" when (ap_sig_allocacmp_i_7 = ap_const_lv7_68) else "0";
    icmp_ln51_13_fu_198_p2 <= "1" when (signed(in_data_7_fu_146_p4) > signed(ap_const_lv16_0)) else "0";
    icmp_ln51_14_fu_246_p2 <= "1" when (signed(in_data_8_fu_126_p4) > signed(ap_const_lv16_0)) else "0";
    icmp_ln51_15_fu_294_p2 <= "1" when (signed(in_data_9_fu_136_p4) > signed(ap_const_lv16_0)) else "0";
    icmp_ln51_fu_156_p2 <= "1" when (signed(in_data_fu_122_p1) > signed(ap_const_lv16_0)) else "0";
    icmp_ln52_13_fu_224_p2 <= "0" when (tmp_s_fu_214_p4 = ap_const_lv6_0) else "1";
    icmp_ln52_14_fu_272_p2 <= "0" when (tmp_9_fu_262_p4 = ap_const_lv6_0) else "1";
    icmp_ln52_15_fu_320_p2 <= "0" when (tmp_1_fu_310_p4 = ap_const_lv6_0) else "1";
    icmp_ln52_fu_176_p2 <= "0" when (tmp_fu_166_p4 = ap_const_lv6_0) else "1";
    in_data_7_fu_146_p4 <= layer2_out_dout(31 downto 16);
    in_data_8_fu_126_p4 <= layer2_out_dout(47 downto 32);
    in_data_9_fu_136_p4 <= layer2_out_dout(63 downto 48);
    in_data_fu_122_p1 <= layer2_out_dout(16 - 1 downto 0);

    layer2_out_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, layer2_out_empty_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            layer2_out_blk_n <= layer2_out_empty_n;
        else 
            layer2_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    layer2_out_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            layer2_out_read <= ap_const_logic_1;
        else 
            layer2_out_read <= ap_const_logic_0;
        end if; 
    end process;


    layer4_out_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, layer4_out_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            layer4_out_blk_n <= layer4_out_full_n;
        else 
            layer4_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    layer4_out_din <= (((out_data_14_fu_334_p3 & out_data_12_fu_286_p3) & out_data_10_fu_238_p3) & out_data_8_fu_190_p3);

    layer4_out_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            layer4_out_write <= ap_const_logic_1;
        else 
            layer4_out_write <= ap_const_logic_0;
        end if; 
    end process;

    out_data_10_fu_238_p3 <= 
        out_data_9_fu_230_p3 when (icmp_ln51_13_fu_198_p2(0) = '1') else 
        ap_const_lv10_0;
    out_data_11_fu_278_p3 <= 
        ap_const_lv10_3FF when (icmp_ln52_14_fu_272_p2(0) = '1') else 
        trunc_ln52_3_fu_252_p4;
    out_data_12_fu_286_p3 <= 
        out_data_11_fu_278_p3 when (icmp_ln51_14_fu_246_p2(0) = '1') else 
        ap_const_lv10_0;
    out_data_13_fu_326_p3 <= 
        ap_const_lv10_3FF when (icmp_ln52_15_fu_320_p2(0) = '1') else 
        trunc_ln52_4_fu_300_p4;
    out_data_14_fu_334_p3 <= 
        out_data_13_fu_326_p3 when (icmp_ln51_15_fu_294_p2(0) = '1') else 
        ap_const_lv10_0;
    out_data_8_fu_190_p3 <= 
        out_data_fu_182_p3 when (icmp_ln51_fu_156_p2(0) = '1') else 
        ap_const_lv10_0;
    out_data_9_fu_230_p3 <= 
        ap_const_lv10_3FF when (icmp_ln52_13_fu_224_p2(0) = '1') else 
        trunc_ln52_s_fu_204_p4;
    out_data_fu_182_p3 <= 
        ap_const_lv10_3FF when (icmp_ln52_fu_176_p2(0) = '1') else 
        trunc_ln52_fu_162_p1;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((real_start = ap_const_logic_1) and (start_once_reg = ap_const_logic_0))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_310_p4 <= layer2_out_dout(63 downto 58);
    tmp_9_fu_262_p4 <= layer2_out_dout(47 downto 42);
    tmp_fu_166_p4 <= layer2_out_dout(15 downto 10);
    tmp_s_fu_214_p4 <= layer2_out_dout(31 downto 26);
    trunc_ln52_3_fu_252_p4 <= layer2_out_dout(41 downto 32);
    trunc_ln52_4_fu_300_p4 <= layer2_out_dout(57 downto 48);
    trunc_ln52_fu_162_p1 <= layer2_out_dout(10 - 1 downto 0);
    trunc_ln52_s_fu_204_p4 <= layer2_out_dout(25 downto 16);
end behav;
