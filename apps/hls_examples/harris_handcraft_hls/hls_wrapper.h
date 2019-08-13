#ifndef HLS_WRAPPER_H
#define HLS_WRAPPER_H

void hls_wrapper(
    void *in,
    int in_stride_0, int in_extent_0,
    int in_stride_1, int in_extent_1,
    void *out,
    int out_stride_0, int out_extent_0,
    int out_stride_1, int out_extent_1
);

#endif
