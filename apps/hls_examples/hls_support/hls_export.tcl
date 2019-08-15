
open_project hls_prj

open_solution "solution1"
export_design -format ip_catalog
export_design -evaluate verilog -format ip_catalog

exit
