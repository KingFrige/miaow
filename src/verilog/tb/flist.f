+libext+.v +v2k
-sverilog
-timescale=1ns/1ns
+lint=all
../rtl/common/global_definitions.v
../rtl/common/issue_definitions.v
../rtl/alu/alu_definitions.v
../rtl/lsu/lsu_definitions.v
../rtl/decode/decode_definitions.v
gpu_tb.v
wave.c
./dispatcher_wrapper/dispatcher_hard_host.v
./dispatcher_wrapper/dispatcher_hard.v
./dispatcher_wrapper/dispatcher_soft.v
./dispatcher_wrapper/dispatcher_wrapper.v
../rtl/compute_unit/build/compute_unit.v
../rtl/decode/build/decode_core.v
../rtl/decode/build/decode_definitions.v
../rtl/decode/build/decode.v
../rtl/decode/build/flag_generator.v
../rtl/decode/build/instr_collate.v
../rtl/decode/build/PS_flops_wavepool_decode.v
../rtl/decode/build/reg_field_encoder.v
../rtl/exec/build/exec.v
../rtl/exec/build/rd_port_9_to_1.v
../rtl/exec/build/reg_40xX_1r_2w.v
../rtl/exec/build/reg_40xX_2r_2w.v
../rtl/exec/build/reg_40xX_2r_3w.v
../rtl/exec/build/wr_port_40x64b_8_to_1.v
../rtl/fetch/build/adder6bit.v
../rtl/fetch/build/adder7bit.v
../rtl/fetch/build/adder.v
../rtl/fetch/build/add_wraparound_after40.v
../rtl/fetch/build/decoder.v
../rtl/fetch/build/dff_clr.v
../rtl/fetch/build/dff_en_fixed_reset_value.v
../rtl/fetch/build/fetch_controller.v
../rtl/fetch/build/fetch.v
../rtl/fetch/build/incr_wraparound_at40.v
../rtl/fetch/build/mask_gen.v
../rtl/fetch/build/mux4to1_6bit.v
../rtl/fetch/build/pc_block.v
../rtl/fetch/build/regblock.v
../rtl/fetch/build/regfile_clr.v
../rtl/fetch/build/round_robin.v
../rtl/fetch/build/vacant_mask_gen.v
../rtl/fetch/build/wavegrp_info.v
../rtl/fetch/build/wfid_generator.v
../rtl/instr_buffer/build/instr_buffer.v
../rtl/issue/build/alu_issue_logic.v
../rtl/issue/build/arbiter.v
../rtl/issue/build/barrier_wait.v
../rtl/issue/build/branch_wait.v
../rtl/issue/build/busy_gpr_table.v
../rtl/issue/build/circular_barrel_shift_5b.v
../rtl/issue/build/finished_wf.v
../rtl/issue/build/functional_unit_reg_bank.v
../rtl/issue/build/functional_unit_reg.v
../rtl/issue/build/gpr_dependency_table.v
../rtl/issue/build/inflight_instr_counter.v
../rtl/issue/build/instr_info_table.v
../rtl/issue/build/instruction_arbiter.v
../rtl/issue/build/issue_flow_control.v
../rtl/issue/build/issue.v
../rtl/issue/build/mem_wait.v
../rtl/issue/build/mux_40xPARAMb_to_1xPARAMb.v
../rtl/issue/build/ready_bits_demux.v
../rtl/issue/build/scoreboard.v
../rtl/issue/build/sgpr_busy_table_decoder.v
../rtl/issue/build/sgpr_busy_table_mux.v
../rtl/issue/build/sgpr_comparator.v
../rtl/issue/build/spr_dependency_table.v
../rtl/issue/build/valid_entry.v
../rtl/issue/build/vgpr_busy_table_decoder.v
../rtl/issue/build/vgpr_busy_table_mux.v
../rtl/issue/build/vgpr_comparator.v
../rtl/memory/build/memory.v
../rtl/memory/cachesim.c
../rtl/salu/build/salu_controller.v
../rtl/salu/build/salu.v
../rtl/salu/build/scalar_alu.v
../rtl/sgpr/build/mux_128x32b_to_1x32b.v
../rtl/sgpr/build/reg_128x32b_3r_2w.v
../rtl/sgpr/build/reg_128x32b_3r_3w.v
../rtl/sgpr/build/reg_512x32b_3r_2w.v
../rtl/sgpr/build/reg_512x32b_3r_3w.v
../rtl/sgpr/build/sgpr_3to1_rd_port_mux.v
../rtl/sgpr/build/sgpr_simxlsu_wr_port_mux.v
../rtl/sgpr/build/sgpr_simx_rd_port_mux.v
../rtl/sgpr/build/sgpr_simx_wr_port_mux.v
../rtl/sgpr/build/sgpr.v
../rtl/alu/build/alu_controller.v
../rtl/alu/build/alu_definitions.v
../rtl/alu/build/alu_fsm.v
../rtl/alu/build/alu.v
../rtl/alu/build/alu_wb_queue.v
../rtl/alu/build/dest_shift_reg.v
../rtl/alu/build/mux_2_to_1.v
../rtl/alu/build/PS_flops_EX_WB_alu.v
../rtl/alu/build/PS_flops_issue_alu.v
../rtl/alu/build/shift_in.v
../rtl/alu/build/shift_out.v
../rtl/alu/build/src_mux.v
../rtl/alu/build/src_shift_reg.v
../rtl/alu/build/valu.v
../rtl/simd/build/amultp2_32x32.v
../rtl/simd/build/simd_alu.v
../rtl/simd/build/simd_instr_decoder.v
../rtl/simd/build/simd.v
../rtl/simf/build/fpu_addsub.v
../rtl/simf/build/fpu_arith.v
../rtl/simf/build/fpu_div.v
../rtl/simf/build/fpu_intfloat_conv_except.v
../rtl/simf/build/fpu_intfloat_conv.v
../rtl/simf/build/fpu_mul.v
../rtl/simf/build/fpu_post_norm_addsub.v
../rtl/simf/build/fpu_post_norm_div.v
../rtl/simf/build/fpu_post_norm_intfloat_conv.v
../rtl/simf/build/fpu_post_norm_mul.v
../rtl/simf/build/fpu_pre_norm_addsub.v
../rtl/simf/build/fpu_pre_norm_div.v
../rtl/simf/build/fpu_pre_norm_mul.v
../rtl/simf/build/simf_alu.v
../rtl/simf/build/simf_instr_decoder.v
../rtl/simf/build/simf.v
../rtl/rfa/build/circular_shift.v
../rtl/rfa/build/priority_encoder_16_to_4.v
../rtl/rfa/build/rfa.v
../rtl/tracemon/build/tracemon.v
../rtl/tracemon/build/vgpr_contention_tracker.v
../rtl/tracemon/tracemon.c
../rtl/vgpr/build/mux_256x32b_to_1x32b.v
../rtl/vgpr/build/rd_port_mux_8to1.v
../rtl/vgpr/build/reg_1024x32b_3r_1w.v
../rtl/vgpr/build/reg_1024x32b_3r_2w_banked.v
../rtl/vgpr/build/reg_1024x32b_3r_2w.v
../rtl/vgpr/build/reg_256x32b_3r_1w.v
../rtl/vgpr/build/reg_256x32b_3r_2w.v
../rtl/vgpr/build/reg_64page_1024x32b_3r_1w.v
../rtl/vgpr/build/reg_64page_1024x32b_3r_2w.v
../rtl/vgpr/build/vgpr_2to1_rd_port_mux.v
../rtl/vgpr/build/vgpr.v
../rtl/vgpr/build/wfid_mux_8to1.v
../rtl/vgpr/build/wfid_mux_9to1.v
../rtl/vgpr/build/wr_port_mux_8to1.v
../rtl/vgpr/build/wr_port_mux_9to1.v
../rtl/wavepool/build/adder3bit.v
../rtl/wavepool/build/decoder_3_to_8.v
../rtl/wavepool/build/mux_40x35b_to_1x35b.v
../rtl/wavepool/build/mux_8x64b_to_1x64b.v
../rtl/wavepool/build/PS_flops_fetch_wavepool.v
../rtl/wavepool/build/queue_controller.v
../rtl/wavepool/build/reg_35b.v
../rtl/wavepool/build/reg_3b.v
../rtl/wavepool/build/reg_40x35b_1r_1w.v
../rtl/wavepool/build/reg_8x64b_1r_1w.v
../rtl/wavepool/build/scbd_feeder.v
../rtl/wavepool/build/wavepool_controller.v
../rtl/wavepool/build/wavepool.v
../rtl/wavepool/build/wave_queue.v
../rtl/wavepool/build/wq_pool.v
../rtl/dispatcher/build/allocator.v
../rtl/dispatcher/build/cam_allocator.v
../rtl/dispatcher/build/cu_handler.v
../rtl/dispatcher/build/dis_controller.v
../rtl/dispatcher/build/dispatcher.v
../rtl/dispatcher/build/gds_resource_table.v
../rtl/dispatcher/build/global_resource_table.v
../rtl/dispatcher/build/gpu_interface.v
../rtl/dispatcher/build/inflight_wg_buffer.v
../rtl/dispatcher/build/ram_2_port.v
../rtl/dispatcher/build/resource_table.v
../rtl/dispatcher/build/resource_update_buffer.v
../rtl/dispatcher/build/wg_resource_table.v
../rtl/lsu/build/ds_addr_calc.v
../rtl/lsu/build/lsu_addr_calculator.v
../rtl/lsu/build/lsu_definitions.v
../rtl/lsu/build/lsu_opcode_decoder.v
../rtl/lsu/build/lsu_op_manager.v
../rtl/lsu/build/lsu.v
../rtl/lsu/build/mtbuf_addr_calc.v

// -y ../rtl/common/build/

../rtl/common/build/adder1bit.v
../rtl/common/build/adder_param.v
../rtl/common/build/circular_barrel_shift.v
../rtl/common/build/decoder_10_to_1024.v
../rtl/common/build/decoder_6b_40b_en.v
../rtl/common/build/decoder_6_to_40.v
../rtl/common/build/decoder_9_to_512.v
../rtl/common/build/decoder_param_en.v
../rtl/common/build/decoder_param.v
../rtl/common/build/dff_en.v
../rtl/common/build/dff_set_en_rst.v
../rtl/common/build/dff_set_en.v
../rtl/common/build/dff_set.v
../rtl/common/build/dff.v
../rtl/common/build/encoder_5b_3b.v
../rtl/common/build/encoder.v
../rtl/common/build/flop_32b.v
../rtl/common/build/flop_en.v
../rtl/common/build/flop.v
../rtl/common/build/global_definitions.v
../rtl/common/build/issue_definitions.v
../rtl/common/build/mux2_1.v
../rtl/common/build/mux_40x64b_to_1x64b.v
../rtl/common/build/mux_40xX_to_1xX.v
../rtl/common/build/mux_param.v
../rtl/common/build/nand2.v
../rtl/common/build/not1.v
../rtl/common/build/priority_encoder_40to6.v
../rtl/common/build/queue_param_1r_1w.v
../rtl/common/build/reg_32b.v
../rtl/common/build/reg_40b_set.v
../rtl/common/build/reg_40b.v
../rtl/common/build/reg_40xX_1r_1w.v
../rtl/common/build/reg_40xX_2r_1w.v
../rtl/common/build/reg_64b.v
../rtl/common/build/regfile.v
../rtl/common/build/register.v
../rtl/common/build/reg_param.v

