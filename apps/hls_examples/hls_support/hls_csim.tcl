set HALIDE_PATH $env(RUN_PATH)/../../..
set HLS_INC_FLAGS "-I${HALIDE_PATH}/include -I$env(RUN_PATH)/../hls_support"
set INC_FLAGS "-I${HALIDE_PATH}/include -I${HALIDE_PATH}/tools -I$env(RUN_PATH)/../../support -I$env(RUN_PATH)/../hls_support"

set LD_FLAGS "$env(RUN_PATH)/pipeline_native.o -lpthread -ldl -lpng16 -ljpeg"

open_project hls_prj

open_solution "solution1"

csim_design -compiler clang -O -ldflags ${LD_FLAGS} -argv $env(RUN_ARGS)

exit
