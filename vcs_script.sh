#!/bin/bash

i2c_path=../rtl/i2c_project/

bench=$i2c_path/bench
wave_dir=$i2c_path/sim/rtl_sim/i2c_verilog/waves

vcs	-debug_all							\
	-kdb							\
	-lca							\
	+incdir+$bench/verilog					\
	+incdir+$i2c_path/rtl/verilog				\
								\
	$i2c_path/rtl/verilog/i2c_master_bit_ctrl.v			\
	$i2c_path/rtl/verilog/i2c_master_byte_ctrl.v			\
	$i2c_path/rtl/verilog/i2c_master_top.v			\
								\
	$bench/verilog/i2c_slave_model.v			\
	$bench/verilog/wb_master_model.v			\
	$bench/verilog/tst_bench_top.v				\
								\
	-R
	




