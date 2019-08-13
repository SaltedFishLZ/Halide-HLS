#### Halide flags
HALIDE_BIN_PATH := ../../..
HALIDE_SRC_PATH := ../../..
include ../../support/Makefile.inc

#### HLS flags
include ../hls_support/Makefile.inc
HLS_LOG = vivado_hls.log

.PHONY: all
all: hls_syn

hls_prj: ../hls_support/hls_prj.tcl hls_target.cpp pipeline_hls.cpp run.cpp
	RUN_PATH=$(realpath ./) \
	RUN_ARGS=$(realpath ./../../images/benchmark_8mp_gray.png) \
	vivado_hls -f $< -l $(HLS_LOG)

hls_csim: ../hls_support/hls_csim.tcl hls_target.cpp pipeline_hls.cpp run.cpp hls_prj
	RUN_PATH=$(realpath ./) \
	RUN_ARGS=$(realpath ./../../images/benchmark_8mp_gray.png) \
	vivado_hls -f $< -l $(HLS_LOG)

hls_syn: ../hls_support/hls_syn.tcl hls_target.cpp pipeline_hls.cpp run.cpp hls_prj
	RUN_PATH=$(realpath ./) \
	vivado_hls -f $< -l $(HLS_LOG)

clean:
	rm -rf hls_prj
	rm -f $(HLS_LOG)