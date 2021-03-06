// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (lin64) Build 2615518 Fri Aug  9 15:53:29 MDT 2019
// Date        : Tue Nov 12 13:30:59 2019
// Host        : eecs-digital-32 running 64-bit Ubuntu 14.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /afs/athena.mit.edu/user/z/i/ziheng/cordic/cordic.srcs/sources_1/ip/cordic_0/cordic_0_stub.v
// Design      : cordic_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_15,Vivado 2019.1.2" *)
module cordic_0(aclk, s_axis_phase_tvalid, 
  s_axis_phase_tdata, s_axis_cartesian_tvalid, s_axis_cartesian_tuser, 
  s_axis_cartesian_tdata, m_axis_dout_tvalid, m_axis_dout_tuser, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_phase_tvalid,s_axis_phase_tdata[15:0],s_axis_cartesian_tvalid,s_axis_cartesian_tuser[3:0],s_axis_cartesian_tdata[31:0],m_axis_dout_tvalid,m_axis_dout_tuser[3:0],m_axis_dout_tdata[31:0]" */;
  input aclk;
  input s_axis_phase_tvalid;
  input [15:0]s_axis_phase_tdata;
  input s_axis_cartesian_tvalid;
  input [3:0]s_axis_cartesian_tuser;
  input [31:0]s_axis_cartesian_tdata;
  output m_axis_dout_tvalid;
  output [3:0]m_axis_dout_tuser;
  output [31:0]m_axis_dout_tdata;
endmodule
