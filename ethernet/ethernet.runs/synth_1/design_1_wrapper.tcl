# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
set_param tcl.collectionResultDisplayLimit 0
set_param chipscope.maxJobs 2
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.cache/wt [current_project]
set_property parent.project_path /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_repo_paths {
  /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ip_repo/k_bit_axi_stream_slave_1.0
  /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ip_repo/k_bit_axi_stream_master_1.0
  /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ip_repo/master_axi_test_1.0
  /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ip_repo/parser_feed_1.0
  /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/microblaze_com_axi
  /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/parser/parser.srcs
  /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/cordic
  /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/parser_book_interface
} [current_project]
update_ip_catalog
set_property ip_output_repo /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/imports/hdl/design_1_wrapper.v
add_files /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/constraints/design_1_mig_7series_0_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/constraints/design_1_mig_7series_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_mii_to_rmii_0_0/design_1_mii_to_rmii_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_mii_to_rmii_0_0/design_1_mii_to_rmii_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernetlite_0_0/design_1_axi_ethernetlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernetlite_0_0/design_1_axi_ethernetlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernetlite_0_0/design_1_axi_ethernetlite_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernetlite_0_0/design_1_axi_ethernetlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr0_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr0_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/bd_afc3_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/bd_afc3_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/bd_afc3_psr_aclk1_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/bd_afc3_psr_aclk1_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/bd_afc3_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/bd_afc3_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/bd_afc3_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/bd_afc3_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/bd_afc3_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/bd_afc3_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/bd_afc3_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/bd_afc3_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/bd_afc3_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/bd_afc3_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/bd_afc3_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/bd_afc3_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/bd_afc3_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/bd_afc3_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/bd_afc3_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/bd_afc3_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/bd_afc3_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/bd_afc3_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/bd_afc3_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/bd_afc3_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_rst_mig_7series_0_81M_0/design_1_rst_mig_7series_0_81M_0_board.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_rst_mig_7series_0_81M_0/design_1_rst_mig_7series_0_81M_0.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_rst_mig_7series_0_81M_0/design_1_rst_mig_7series_0_81M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_parser_top_0_0/constrs_1/imports/new/default.xdc]
set_property used_in_synthesis false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/bd_f60c_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_0/bd_0/bd_f60c_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_0/design_1_system_ila_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_parser_top_1_0/constrs_1/imports/new/default.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_ip_top_level_0_0/cordic.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_ip_top_level_0_0/cordic.srcs/constrs_1/imports/new/nexs4ddr_audio.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_parser_book_interface_0_0/constrs_1/imports/fpga_6115/nexys4_ddr.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/data/mb_bootloop_le.elf]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/constrs_1/imports/new/default.xdc
set_property used_in_implementation false [get_files /afs/athena.mit.edu/user/n/k/nkk/fpga_6115/HFT/ethernet/ethernet.srcs/constrs_1/imports/new/default.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
