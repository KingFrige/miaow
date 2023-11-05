VCS_OPTIONS = -full64
VCS_OPTIONS += +libext+.v
VCS_OPTIONS += -debug_all
VCS_OPTIONS += +v2k
VCS_OPTIONS += -sverilog
VCS_OPTIONS += -l compile.log
VCS_OPTIONS += ${NOVAS_VCS_ARGS}

ifdef GATES
VCS_OPTIONS += -timescale=1ps/1ps
else
VCS_OPTIONS += -timescale=1ns/1ns
endif

ifndef GATES
VCS_OPTIONS += +lint=all
endif

ifdef GATES
VCS_OPTIONS += +define+GATES=1
endif

ifdef SAIF
VCS_OPTIONS += +define+SAIF
VCS_OPTIONS += +vcs+saif_libcell
endif

ifdef HARD_DISPATCHER
VCS_OPTIONS += +define+HARD_DISPATCHER
endif

build:
	cd ../rtl && make build

ifndef GATES
compile: build
	vcs $(VCS_OPTIONS) ../rtl/common/global_definitions.v ../rtl/common/issue_definitions.v ../rtl/alu/alu_definitions.v ../rtl/lsu/lsu_definitions.v ../rtl/decode/decode_definitions.v *.v *.c ./dispatcher_wrapper/*.v  ../rtl/compute_unit/build/*.v ../rtl/decode/build/*.v ../rtl/exec/build/*.v ../rtl/fetch/build/*.v ../rtl/instr_buffer/build/*.v ../rtl/issue/build/*.v ../rtl/lsu/build/*.v ../rtl/memory/build/*.v ../rtl/memory/*.c ../rtl/salu/build/*.v ../rtl/sgpr/build/*.v ../rtl/alu/build/*.v ../rtl/simd/build/*.v ../rtl/simf/build/*.v ../rtl/rfa/build/*.v ../rtl/tracemon/build/*.v ../rtl/tracemon/*.c ../rtl/vgpr/build/*.v ../rtl/wavepool/build/*.v ../rtl/dispatcher/build/*.v -y ../rtl/common/build/
else
compile: build
	vcs $(VCS_OPTIONS) *.v *.c ../../../syn/synopsys/synth/*.syn.v ../rtl/common/global_definitions.v ../rtl/vgpr/build/*.v ../rtl/sgpr/build/*.v ../rtl/instr_buffer/build/*.v ../rtl/memory/build/*.v ../rtl/tracemon/build/*.v ../rtl/tracemon/*.c -y ../rtl/common/build/ -v ../lib/saed32nm_modified.v
endif

run: simv
	# ./simv +print_outputs=1 +dump_fsdb=1 -l run.log
	./run.pl -f -r 1 -t test_000_branch  -o test_000_branch  -dumpfsdb
	./run.pl -f -r 1 -t test_005_add_i32 -o test_005_add_i32 -dumpfsdb

browse:
	dve -full64 -vpd vcdplus.vpd

debug:
	verdi -sv -vc wave.c -f flist.f -top gpu_tb -ssf results/test_005_add_i32/test_005_add_i32/tb.fsdb &

test:


clean:
	cd ../rtl && make clean
	rm -rf csrc/ simv simv.daidir/ compile.log DVE*
