#include <hls_stream.h>
#include "Stencil.h"

namespace dma
{
    template <typename T, size_t EXTENT_0, size_t EXTENT_1, size_t EXTENT_2, size_t EXTENT_3>
    void cpu2fpga(hls::stream<AxiPackedStencil<T, EXTENT_0, EXTENT_1, EXTENT_2, EXTENT_3> > &stream,
                  void *subimage,
                  int stride_0, int subimage_extent_0,
                  int stride_1 = 1, int subimage_extent_1 = 1) {

        for(size_t idx_1 = 0; idx_1 < (unsigned)subimage_extent_1; idx_1 += EXTENT_1)
            for(size_t idx_0 = 0; idx_0 < (unsigned)subimage_extent_0; idx_0 += EXTENT_0) {
                // assemble stencil
                Stencil<T, EXTENT_0, EXTENT_1, EXTENT_2, EXTENT_3> stencil;

                for(size_t st_idx_1 = 0; st_idx_1 < EXTENT_1; st_idx_1++)
                    for(size_t st_idx_0 = 0; st_idx_0 < EXTENT_0; st_idx_0++) {
                        int offset = (idx_0 + st_idx_0) * stride_0 +
                            (idx_1 + st_idx_1) * stride_1 +
                            (idx_2 + st_idx_2) * stride_2 +
                            (idx_3 + st_idx_3) * stride_3;
                        stencil(st_idx_0,
                                st_idx_1,
                                st_idx_2,
                                st_idx_3) = *((T *)subimage + offset);
                    }

                // push to stream
                stream.write(stencil);
        }
    }

    template <typename T, size_t EXTENT_0, size_t EXTENT_1, size_t EXTENT_2, size_t EXTENT_3>
    void fpga2cpu(hls::stream<AxiPackedStencil<T, EXTENT_0, EXTENT_1, EXTENT_2, EXTENT_3> > &stream,
                  void *subimage,
                  int stride_0, int subimage_extent_0,
                  int stride_1 = 1, int subimage_extent_1 = 1) {

        for(size_t idx_1 = 0; idx_1 < (unsigned)subimage_extent_1; idx_1 += EXTENT_1)
            for(size_t idx_0 = 0; idx_0 < (unsigned)subimage_extent_0; idx_0 += EXTENT_0) {
                // pop from stream
                AxiPackedStencil<T, EXTENT_0, EXTENT_1, EXTENT_2, EXTENT_3> axi_stencil = stream.read();
                // disassemble stencil
                Stencil<T, EXTENT_0, EXTENT_1, EXTENT_2, EXTENT_3> stencil = axi_stencil;

                for(size_t st_idx_1 = 0; st_idx_1 < EXTENT_1; st_idx_1++)
                    for(size_t st_idx_0 = 0; st_idx_0 < EXTENT_0; st_idx_0++) {
                        int offset = (idx_0 + st_idx_0) * stride_0 +
                            (idx_1 + st_idx_1) * stride_1 +
                            (idx_2 + st_idx_2) * stride_2 +
                            (idx_3 + st_idx_3) * stride_3;
                        *((T *)subimage + offset) = stencil(st_idx_0,
                                                            st_idx_1,
                                                            st_idx_2,
                                                            st_idx_3);
                    }
            }
    }

}

