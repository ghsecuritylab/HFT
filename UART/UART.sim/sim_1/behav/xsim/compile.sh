#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1.2 (64-bit)
#
# Filename    : compile.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Fri Nov 08 15:07:21 EST 2019
# SW Build 2615518 on Fri Aug  9 15:53:29 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xvlog --incr --relax -prj uart_sim_vlog.prj"
xvlog --incr --relax -prj uart_sim_vlog.prj 2>&1 | tee compile.log

echo "xvhdl --incr --relax -prj uart_sim_vhdl.prj"
xvhdl --incr --relax -prj uart_sim_vhdl.prj 2>&1 | tee -a compile.log

