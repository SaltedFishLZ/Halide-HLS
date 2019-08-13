
open_project hls_prj
csim_design -compiler clang -O -ldflags ${LD_FLAGS} -argv $env(RUN_ARGS)
