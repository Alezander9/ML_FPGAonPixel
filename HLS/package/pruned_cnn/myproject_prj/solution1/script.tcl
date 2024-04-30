############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project myproject_prj
set_top myproject
add_files firmware/myproject.cpp -cflags "-std=c++0x"
add_files -tb tb_data -cflags "-Wno-unknown-pragmas"
add_files -tb firmware/weights -cflags "-Wno-unknown-pragmas"
add_files -tb myproject_test.cpp -cflags "-std=c++0x -Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu13p-flga2577-2-e}
create_clock -period 25 -name default
config_compile -name_max_length 80
config_schedule -enable_dsp_full_reg=0
config_cosim -tool xsim
set_clock_uncertainty 12.5%
source "./myproject_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
