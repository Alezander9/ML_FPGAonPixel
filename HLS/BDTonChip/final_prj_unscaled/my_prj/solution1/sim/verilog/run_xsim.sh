
/afs/slac.stanford.edu/g/reseng/vol37/xilinx/2022.2/Vivado/2022.2/bin/xelab xil_defaultlib.apatb_my_prj_top glbl -Oenable_linking_all_libraries  -prj my_prj.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_15 --lib "ieee_proposed=./ieee_proposed" -s my_prj -debug wave
/afs/slac.stanford.edu/g/reseng/vol37/xilinx/2022.2/Vivado/2022.2/bin/xsim --noieeewarnings my_prj -tclbatch my_prj.tcl -view my_prj_dataflow_ana.wcfg -protoinst my_prj.protoinst

