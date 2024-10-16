-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    layer16_out_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    layer16_out_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    layer16_out_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    layer16_out_empty_n : IN STD_LOGIC;
    layer16_out_read : OUT STD_LOGIC;
    layer18_out_TDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
    layer18_out_TVALID : OUT STD_LOGIC;
    layer18_out_TREADY : IN STD_LOGIC );
end;


architecture behav of myproject_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv26_3FFFFF1 : STD_LOGIC_VECTOR (25 downto 0) := "11111111111111111111110001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv13_200 : STD_LOGIC_VECTOR (12 downto 0) := "0001000000000";
    constant ap_const_lv10_200 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_3FF : STD_LOGIC_VECTOR (9 downto 0) := "1111111111";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sigmoid_table_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal sigmoid_table_ce0 : STD_LOGIC;
    signal sigmoid_table_q0 : STD_LOGIC_VECTOR (9 downto 0);
    signal layer16_out_blk_n : STD_LOGIC;
    signal layer18_out_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal index_1_fu_226_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal index_1_reg_243 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln96_fu_234_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_6_fu_98_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal shl_ln_fu_90_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal trunc_ln90_fu_118_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_3_fu_122_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal sext_ln90_fu_108_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal icmp_ln90_1_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln90_fu_136_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal icmp_ln90_fu_112_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln90_fu_142_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal data_round_fu_150_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal trunc_ln91_fu_158_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal index_fu_162_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_1_fu_182_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_2_fu_198_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln92_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_174_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln94_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln92_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln92_fu_212_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal xor_ln91_fu_168_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal regslice_both_layer18_out_U_apdone_blk : STD_LOGIC;
    signal ap_block_state4 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal layer18_out_TDATA_int_regslice : STD_LOGIC_VECTOR (15 downto 0);
    signal layer18_out_TVALID_int_regslice : STD_LOGIC;
    signal layer18_out_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_layer18_out_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component myproject_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s_sigmoid_table_RKfY IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;


    component myproject_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    sigmoid_table_U : component myproject_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s_sigmoid_table_RKfY
    generic map (
        DataWidth => 10,
        AddressRange => 1024,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => sigmoid_table_address0,
        ce0 => sigmoid_table_ce0,
        q0 => sigmoid_table_q0);

    regslice_both_layer18_out_U : component myproject_regslice_both
    generic map (
        DataWidth => 16)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => layer18_out_TDATA_int_regslice,
        vld_in => layer18_out_TVALID_int_regslice,
        ack_in => layer18_out_TREADY_int_regslice,
        data_out => layer18_out_TDATA,
        vld_out => regslice_both_layer18_out_U_vld_out,
        ack_out => layer18_out_TREADY,
        apdone_blk => regslice_both_layer18_out_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((layer18_out_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_layer18_out_U_apdone_blk = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (layer16_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                index_1_reg_243 <= index_1_fu_226_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, layer16_out_empty_n, ap_CS_fsm_state3, ap_CS_fsm_state4, regslice_both_layer18_out_U_apdone_blk, layer18_out_TREADY_int_regslice)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (layer16_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((layer18_out_TREADY_int_regslice = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if ((not(((layer18_out_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_layer18_out_U_apdone_blk = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln90_fu_136_p2 <= std_logic_vector(signed(sext_ln90_fu_108_p1) + signed(ap_const_lv13_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg, layer16_out_empty_n)
    begin
        if (((ap_start = ap_const_logic_0) or (layer16_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(layer18_out_TREADY_int_regslice)
    begin
        if ((layer18_out_TREADY_int_regslice = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state4_blk_assign_proc : process(regslice_both_layer18_out_U_apdone_blk, layer18_out_TREADY_int_regslice)
    begin
        if (((layer18_out_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_layer18_out_U_apdone_blk = ap_const_logic_1))) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, layer16_out_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (layer16_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state4_assign_proc : process(regslice_both_layer18_out_U_apdone_blk, layer18_out_TREADY_int_regslice)
    begin
                ap_block_state4 <= ((layer18_out_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_layer18_out_U_apdone_blk = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4, regslice_both_layer18_out_U_apdone_blk, layer18_out_TREADY_int_regslice)
    begin
        if ((not(((layer18_out_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_layer18_out_U_apdone_blk = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4, regslice_both_layer18_out_U_apdone_blk, layer18_out_TREADY_int_regslice)
    begin
        if ((not(((layer18_out_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_layer18_out_U_apdone_blk = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    data_round_fu_150_p3 <= 
        select_ln90_fu_142_p3 when (icmp_ln90_fu_112_p2(0) = '1') else 
        sext_ln90_fu_108_p1;
    icmp_ln90_1_fu_130_p2 <= "1" when (tmp_3_fu_122_p3 = ap_const_lv10_0) else "0";
    icmp_ln90_fu_112_p2 <= "1" when (signed(shl_ln_fu_90_p3) < signed(ap_const_lv26_3FFFFF1)) else "0";
    icmp_ln94_fu_192_p2 <= "0" when (tmp_1_fu_182_p4 = ap_const_lv3_0) else "1";
    index_1_fu_226_p3 <= 
        select_ln92_fu_212_p3 when (or_ln92_fu_220_p2(0) = '1') else 
        xor_ln91_fu_168_p2;
    index_fu_162_p2 <= std_logic_vector(unsigned(data_round_fu_150_p3) + unsigned(ap_const_lv13_200));

    layer16_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, layer16_out_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            layer16_out_blk_n <= layer16_out_empty_n;
        else 
            layer16_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    layer16_out_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, layer16_out_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (layer16_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            layer16_out_read <= ap_const_logic_1;
        else 
            layer16_out_read <= ap_const_logic_0;
        end if; 
    end process;


    layer18_out_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, layer18_out_TREADY_int_regslice)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            layer18_out_TDATA_blk_n <= layer18_out_TREADY_int_regslice;
        else 
            layer18_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    layer18_out_TDATA_int_regslice <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sigmoid_table_q0),16));
    layer18_out_TVALID <= regslice_both_layer18_out_U_vld_out;

    layer18_out_TVALID_int_regslice_assign_proc : process(ap_CS_fsm_state3, layer18_out_TREADY_int_regslice)
    begin
        if (((layer18_out_TREADY_int_regslice = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            layer18_out_TVALID_int_regslice <= ap_const_logic_1;
        else 
            layer18_out_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    or_ln92_fu_220_p2 <= (tmp_fu_174_p3 or icmp_ln94_fu_192_p2);
    select_ln90_fu_142_p3 <= 
        sext_ln90_fu_108_p1 when (icmp_ln90_1_fu_130_p2(0) = '1') else 
        add_ln90_fu_136_p2;
    select_ln92_fu_212_p3 <= 
        ap_const_lv10_3FF when (xor_ln92_fu_206_p2(0) = '1') else 
        ap_const_lv10_0;
        sext_ln90_fu_108_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_6_fu_98_p4),13));

    shl_ln_fu_90_p3 <= (layer16_out_dout & ap_const_lv10_0);
    sigmoid_table_address0 <= zext_ln96_fu_234_p1(10 - 1 downto 0);

    sigmoid_table_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            sigmoid_table_ce0 <= ap_const_logic_1;
        else 
            sigmoid_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_182_p4 <= index_fu_162_p2(12 downto 10);
    tmp_2_fu_198_p3 <= index_fu_162_p2(12 downto 12);
    tmp_3_fu_122_p3 <= (trunc_ln90_fu_118_p1 & ap_const_lv6_0);
    tmp_6_fu_98_p4 <= layer16_out_dout(15 downto 4);
    tmp_fu_174_p3 <= index_fu_162_p2(12 downto 12);
    trunc_ln90_fu_118_p1 <= layer16_out_dout(4 - 1 downto 0);
    trunc_ln91_fu_158_p1 <= data_round_fu_150_p3(10 - 1 downto 0);
    xor_ln91_fu_168_p2 <= (trunc_ln91_fu_158_p1 xor ap_const_lv10_200);
    xor_ln92_fu_206_p2 <= (tmp_2_fu_198_p3 xor ap_const_lv1_1);
    zext_ln96_fu_234_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(index_1_reg_243),64));
end behav;
