#include <hls_stream.h>
#include "Stencil.h"

#include "hls_target.h"
#include "hls_wrapper.h"
#include "dma.h"


void hls_wrapper(
    void *in,
    int in_stride_0, int in_extent_0,
    int in_stride_1, int in_extent_1,
    void *out,
    int out_stride_0, int out_extent_0,
    int out_stride_1, int out_extent_1
) {
#pragma HLS INTERFACE m_axi port=in
#pragma HLS INTERFACE s_axilite port=in_stride_0 bundle=control
#pragma HLS INTERFACE s_axilite port=in_extent_0 bundle=control
#pragma HLS INTERFACE s_axilite port=in_stride_1 bundle=control
#pragma HLS INTERFACE s_axilite port=in_extent_1 bundle=control

#pragma HLS INTERFACE m_axi port=out
#pragma HLS INTERFACE s_axilite port=out_stride_0 bundle=control
#pragma HLS INTERFACE s_axilite port=out_extent_0 bundle=control
#pragma HLS INTERFACE s_axilite port=out_stride_1 bundle=control
#pragma HLS INTERFACE s_axilite port=out_extent_1 bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS DATAFLOW
    static hls::stream<PackedStencil<uint8_t, 2, 1> > _padded_1_stencil_update_stream;
    static hls::stream<PackedStencil<uint8_t, 2, 1> > _hw_output_1_stencil_stream;

    dma::cpu2fpga(_padded_1_stencil_update_stream,
                  in,
                  in_stride_0, in_extent_0,
                  in_stride_1, in_extent_1);

    hls_target(_hw_output_1_stencil_stream, _padded_1_stencil_update_stream);

    dma::fpga2cpu(_hw_output_1_stencil_stream,
                  out,
                  out_stride_0, out_extent_0,
                  out_stride_1, out_extent_1);
}
