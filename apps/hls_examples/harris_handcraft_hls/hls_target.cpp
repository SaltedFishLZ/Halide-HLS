#include "hls_target.h"

#include "addrgen.h"
#include "unifiedbuffer.h"

#define DATAWIDTH 2

#include "halide_math.h"
void hls_target(
hls::stream<AxiPackedStencil<uint8_t, 2, 1> > &arg_0,
hls::stream<AxiPackedStencil<uint8_t, 2, 1> > &arg_1)
{
#pragma HLS DATAFLOW
#pragma HLS INLINE region
// #pragma HLS INTERFACE s_axilite port=return bundle=config
// #pragma HLS INTERFACE axis register port=arg_0
// #pragma HLS INTERFACE axis register port=arg_1

 // alias the arguments
 hls::stream<AxiPackedStencil<uint8_t, 2, 1> > &_hw_output_1_stencil_stream = arg_0;
 hls::stream<AxiPackedStencil<uint8_t, 2, 1> > &_padded_1_stencil_update_stream = arg_1;

 hls::stream<PackedStencil<uint8_t, 4, 3> > _padded_1_stencil_stream;
#pragma HLS STREAM variable=_padded_1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_padded_1_stencil_stream core=FIFO_SRL


   // ---------------------------------------------------------------- //
   // Zheng Hack Begins
   // ---------------------------------------------------------------- //

   // linebuffer<70, 70>(_padded_1_stencil_update_stream, _padded_1_stencil_stream);
   hls::stream<uint32_t> addr_in_2D_0("addr_in_2D_0");
   hls::stream<uint32_t> addr_out_2D_0("addr_out_2D_0");
   hls::stream<PackedStencil<uint32_t, 1, 1, 1, 1> > bank_in_2D_0("bank_in_2D_0");
   hls::stream<PackedStencil<uint32_t, 3, 1, 1, 1> > bank_out_2D_0("bank_out_2D_0");
#pragma HLS STREAM variable = addr_in_2D depth = 1
#pragma HLS STREAM variable = addr_out_2D depth = 1
#pragma HLS STREAM variable = bank_in_2D depth = 1
#pragma HLS STREAM variable = bank_out_2D depth = 1

   uint16_t rng_in_2d_0[2] = {70, 70};
   uint16_t st_in_2d_0[2] = {1,0};
   uint16_t rng_out_2d_0[2] = {70, 70};
   uint16_t st_out_2d_0[2] = {1,0};

   Stencil<uint32_t, 1> write_start_0;
   write_start_0(0) = 0;
   Stencil<uint32_t, 3> read_start_0;
   read_start_0(0) = 0;
   read_start_0(1) = 1;
   read_start_0(2) = 2;

   uint16_t rng_write_bank_2d_0[3] = {70, 3, 6};
   uint16_t st_write_bank_2d_0[3] = {0, 1, 0};
   uint16_t rng_read_bank_2d_0[3] = {70, 3, 5};
   uint16_t st_read_bank_2d_0[3] = {0, 1, 0};

   AddrGenTemp<2>(addr_in_2D_0, 70 * 70 , rng_in_2d_0, st_in_2d_0);
   AddrGenTemp<2>(addr_out_2D_0, 68 * 68, rng_out_2d_0, st_out_2d_0);

   BankIDGenCircular<uint32_t, 3, 1, 1, 1, 1>(bank_in_2D_0, write_start_0,
                                              70 * 70, 3,
                                              rng_write_bank_2d_0, st_write_bank_2d_0);
   BankIDGenCircular<uint32_t, 3, 3, 1, 1, 1>(bank_out_2D_0, read_start_0,
                                              70 * 70, 3,
                                              rng_read_bank_2d_0, st_read_bank_2d_0);

   U_BUFFER<70, 3, DATAWIDTH, 1, 1, 1, 3, dtype>::call(_padded_1_stencil_update_stream,
                                                       _padded_1_stencil_stream,
                                                       bank_in_2D_0, bank_out_2D_0,
                                                       addr_in_2D_0, addr_out_2D_0,
                                                       2 * 70 + 1,
                                                       70 * 70 + 1,
                                                       70 * 70, 1, 1);

   // ---------------------------------------------------------------- //
   // Zheng Hack Ends
   // ---------------------------------------------------------------- //



 (void)0;
 // dispatch_stream(_padded_1_stencil_stream, 2, 4, 2, 70, 3, 1, 70, 2, "grad_x$1", 0, 0, 70, 0, 70, "grad_y$1", 0, 0, 70, 0, 70);
 hls::stream<PackedStencil<uint8_t, 4, 3> > _padded_1_stencil_stream_to_grad_x_1;
#pragma HLS STREAM variable=_padded_1_stencil_stream_to_grad_x_1 depth=1
#pragma HLS RESOURCE variable=_padded_1_stencil_stream_to_grad_x_1 core=FIFO_SRL

 hls::stream<PackedStencil<uint8_t, 4, 3> > _padded_1_stencil_stream_to_grad_y_1;
#pragma HLS STREAM variable=_padded_1_stencil_stream_to_grad_y_1 depth=1
#pragma HLS RESOURCE variable=_padded_1_stencil_stream_to_grad_y_1 core=FIFO_SRL

 for (int _dim_1 = 0; _dim_1 <= 67; _dim_1 += 1)
 for (int _dim_0 = 0; _dim_0 <= 66; _dim_0 += 2)
 {
#pragma HLS PIPELINE
  PackedStencil<uint8_t, 4, 3> _tmp_stencil = _padded_1_stencil_stream.read();
  if (_dim_0 >= 0 && _dim_0 <= 66 && _dim_1 >= 0 && _dim_1 <= 67)
  {
   _padded_1_stencil_stream_to_grad_x_1.write(_tmp_stencil);
  }
  if (_dim_0 >= 0 && _dim_0 <= 66 && _dim_1 >= 0 && _dim_1 <= 67)
  {
   _padded_1_stencil_stream_to_grad_y_1.write(_tmp_stencil);
  }
 }
 (void)0;
 hls::stream<PackedStencil<int16_t, 2, 1> > _grad_x_1_stencil_stream;
#pragma HLS STREAM variable=_grad_x_1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_grad_x_1_stencil_stream core=FIFO_SRL

 // produce grad_x$1.stencil.stream
 for (int _grad_x_1_y___scan_dim_1 = 0; _grad_x_1_y___scan_dim_1 < 0 + 68; _grad_x_1_y___scan_dim_1++)
 {
  for (int _grad_x_1_x___scan_dim_0 = 0; _grad_x_1_x___scan_dim_0 < 0 + 34; _grad_x_1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<uint8_t, 4, 3> _padded_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_padded_1_stencil.value complete dim=0

   _padded_1_stencil = _padded_1_stencil_stream_to_grad_x_1.read();
   (void)0;
   Stencil<int16_t, 2, 1> _grad_x_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_x_1_stencil.value complete dim=0

   uint8_t _315 = _padded_1_stencil(2, 0);
   int16_t _316 = (int16_t)(_315);
   uint8_t _317 = _padded_1_stencil(0, 0);
   int16_t _318 = (int16_t)(_317);
   int16_t _319 = _316 - _318;
   uint8_t _320 = _padded_1_stencil(0, 1);
   int16_t _321 = (int16_t)(_320);
   int16_t _322 = (int16_t)(2);
   int16_t _323 = _321 * _322;
   int16_t _324 = _319 - _323;
   uint8_t _325 = _padded_1_stencil(2, 1);
   int16_t _326 = (int16_t)(_325);
   int16_t _327 = _326 * _322;
   int16_t _328 = _324 + _327;
   uint8_t _329 = _padded_1_stencil(0, 2);
   int16_t _330 = (int16_t)(_329);
   int16_t _331 = _328 - _330;
   uint8_t _332 = _padded_1_stencil(2, 2);
   int16_t _333 = (int16_t)(_332);
   int16_t _334 = _331 + _333;
   _grad_x_1_stencil(0, 0) = _334;
   uint8_t _335 = _padded_1_stencil(3, 0);
   int16_t _336 = (int16_t)(_335);
   uint8_t _337 = _padded_1_stencil(1, 0);
   int16_t _338 = (int16_t)(_337);
   int16_t _339 = _336 - _338;
   uint8_t _340 = _padded_1_stencil(1, 1);
   int16_t _341 = (int16_t)(_340);
   int16_t _342 = (int16_t)(2);
   int16_t _343 = _341 * _342;
   int16_t _344 = _339 - _343;
   uint8_t _345 = _padded_1_stencil(3, 1);
   int16_t _346 = (int16_t)(_345);
   int16_t _347 = _346 * _342;
   int16_t _348 = _344 + _347;
   uint8_t _349 = _padded_1_stencil(1, 2);
   int16_t _350 = (int16_t)(_349);
   int16_t _351 = _348 - _350;
   uint8_t _352 = _padded_1_stencil(3, 2);
   int16_t _353 = (int16_t)(_352);
   int16_t _354 = _351 + _353;
   _grad_x_1_stencil(1, 0) = _354;
   _grad_x_1_stencil_stream.write(_grad_x_1_stencil);
   (void)0;
  } // for _grad_x_1_x___scan_dim_0
 } // for _grad_x_1_y___scan_dim_1
 // consume grad_x$1.stencil.stream
 // dispatch_stream(_grad_x_1_stencil_stream, 2, 2, 2, 68, 1, 1, 68, 2, "grad_xx$1", 0, 0, 68, 0, 68, "grad_xy$1", 0, 0, 68, 0, 68);
 hls::stream<PackedStencil<int16_t, 2, 1> > _grad_x_1_stencil_stream_to_grad_xx_1;
#pragma HLS STREAM variable=_grad_x_1_stencil_stream_to_grad_xx_1 depth=1
#pragma HLS RESOURCE variable=_grad_x_1_stencil_stream_to_grad_xx_1 core=FIFO_SRL

 hls::stream<PackedStencil<int16_t, 2, 1> > _grad_x_1_stencil_stream_to_grad_xy_1;
#pragma HLS STREAM variable=_grad_x_1_stencil_stream_to_grad_xy_1 depth=1
#pragma HLS RESOURCE variable=_grad_x_1_stencil_stream_to_grad_xy_1 core=FIFO_SRL

 for (int _dim_1 = 0; _dim_1 <= 67; _dim_1 += 1)
 for (int _dim_0 = 0; _dim_0 <= 66; _dim_0 += 2)
 {
#pragma HLS PIPELINE
  PackedStencil<int16_t, 2, 1> _tmp_stencil = _grad_x_1_stencil_stream.read();
  if (_dim_0 >= 0 && _dim_0 <= 66 && _dim_1 >= 0 && _dim_1 <= 67)
  {
   _grad_x_1_stencil_stream_to_grad_xx_1.write(_tmp_stencil);
  }
  if (_dim_0 >= 0 && _dim_0 <= 66 && _dim_1 >= 0 && _dim_1 <= 67)
  {
   _grad_x_1_stencil_stream_to_grad_xy_1.write(_tmp_stencil);
  }
 }
 (void)0;
 hls::stream<PackedStencil<int32_t, 2, 1> > _grad_xx_1_stencil_update_stream;
#pragma HLS STREAM variable=_grad_xx_1_stencil_update_stream depth=1
#pragma HLS RESOURCE variable=_grad_xx_1_stencil_update_stream core=FIFO_SRL

 // produce grad_xx$1.stencil_update.stream
 for (int _grad_xx_1_y___scan_dim_1 = 0; _grad_xx_1_y___scan_dim_1 < 0 + 68; _grad_xx_1_y___scan_dim_1++)
 {
  for (int _grad_xx_1_x___scan_dim_0 = 0; _grad_xx_1_x___scan_dim_0 < 0 + 34; _grad_xx_1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int16_t, 2, 1> _grad_x_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_x_1_stencil.value complete dim=0

   _grad_x_1_stencil = _grad_x_1_stencil_stream_to_grad_xx_1.read();
   (void)0;
   Stencil<int32_t, 2, 1> _grad_xx_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_xx_1_stencil.value complete dim=0

   int16_t _355 = _grad_x_1_stencil(0, 0);
   int32_t _356 = (int32_t)(_355);
   int32_t _357 = _356 * _356;
   _grad_xx_1_stencil(0, 0) = _357;
   int16_t _358 = _grad_x_1_stencil(1, 0);
   int32_t _359 = (int32_t)(_358);
   int32_t _360 = _359 * _359;
   _grad_xx_1_stencil(1, 0) = _360;
   _grad_xx_1_stencil_update_stream.write(_grad_xx_1_stencil);
   (void)0;
  } // for _grad_xx_1_x___scan_dim_0
 } // for _grad_xx_1_y___scan_dim_1
 // consume grad_xx$1.stencil_update.stream
 hls::stream<PackedStencil<int32_t, 4, 3> > _grad_xx_1_stencil_stream;
#pragma HLS STREAM variable=_grad_xx_1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_grad_xx_1_stencil_stream core=FIFO_SRL


   // ---------------------------------------------------------------- //
   // Zheng Hack Begins
   // ---------------------------------------------------------------- //

   // linebuffer<68, 68>(_grad_xx_1_stencil_update_stream, _grad_xx_1_stencil_stream);

   hls::stream<uint32_t> addr_in_2D_1("addr_in_2D_1");
   hls::stream<uint32_t> addr_out_2D_1("addr_out_2D_1");
   hls::stream<PackedStencil<uint32_t, 1, 1, 1, 1> > bank_in_2D_1("bank_in_2D_1");
   hls::stream<PackedStencil<uint32_t, 3, 1, 1, 1> > bank_out_2D_1("bank_out_2D_1");
#pragma HLS STREAM variable = addr_in_2D_1 depth = 1
#pragma HLS STREAM variable = addr_out_2D_1 depth = 1
#pragma HLS STREAM variable = bank_in_2D_1 depth = 1
#pragma HLS STREAM variable = bank_out_2D_1 depth = 1

   uint16_t rng_in_2d_1[2] = {68, 68};
   uint16_t st_in_2d_1[2] = {1, 0};
   uint16_t rng_out_2d_1[2] = {68, 68};
   uint16_t st_out_2d_1[2] = {1, 0};

   Stencil<uint32_t, 1> write_start_1;
   write_start_1(0) = 0;
   Stencil<uint32_t, 3> read_start_1;
   read_start_1(0) = 0;
   read_start_1(1) = 1;
   read_start_1(2) = 2;

   uint16_t rng_write_bank_2d_1[3] = {68, 3, 6};
   uint16_t st_write_bank_2d_1[3] = {0, 1, 0};
   uint16_t rng_read_bank_2d_1[3] = {68, 3, 5};
   uint16_t st_read_bank_2d_1[3] = {0, 1, 0};

   AddrGenTemp<2>(addr_in_2D_1, 68 * 68 , rng_in_2d_1, st_in_2d_1);
   AddrGenTemp<2>(addr_out_2D_1, 66 * 66, rng_out_2d_1, st_out_2d_1);

   BankIDGenCircular<uint32_t, 3, 1, 1, 1, 1>(bank_in_2D_1, write_start_1,
                                              68 * 68, 3,
                                              rng_write_bank_2d_1, st_write_bank_2d_1);
   BankIDGenCircular<uint32_t, 3, 3, 1, 1, 1>(bank_out_2D_1, read_start_1,
                                              68 * 68, 3,
                                              rng_read_bank_2d_1, st_read_bank_2d_1);

   U_BUFFER<68, 3, DATAWIDTH, 1, 1, 1, 3, dtype>::call(_grad_xx_1_stencil_update_stream,
                                                       _grad_xx_1_stencil_stream,
                                                       bank_in_2D_1, bank_out_2D_1,
                                                       addr_in_2D_1, addr_out_2D_1,
                                                       2 * 68 + 1,
                                                       68 * 68 + 1,
                                                       68 * 68, 1, 1);

   // ---------------------------------------------------------------- //
   // Zheng Hack Ends
   // ---------------------------------------------------------------- //

 (void)0;
 // dispatch_stream(_grad_xx_1_stencil_stream, 2, 4, 2, 68, 3, 1, 68, 1, "grad_gx$1", 0, 0, 68, 0, 68);
 hls::stream<PackedStencil<int32_t, 4, 3> > &_grad_xx_1_stencil_stream_to_grad_gx_1 = _grad_xx_1_stencil_stream;
 (void)0;
 hls::stream<PackedStencil<int32_t, 2, 1> > _grad_gx_1_stencil_stream;
#pragma HLS STREAM variable=_grad_gx_1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_grad_gx_1_stencil_stream core=FIFO_SRL

 // produce grad_gx$1.stencil.stream
 for (int _grad_gx_1_y___scan_dim_1 = 0; _grad_gx_1_y___scan_dim_1 < 0 + 66; _grad_gx_1_y___scan_dim_1++)
 {
  for (int _grad_gx_1_x___scan_dim_0 = 0; _grad_gx_1_x___scan_dim_0 < 0 + 33; _grad_gx_1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int32_t, 4, 3> _grad_xx_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_xx_1_stencil.value complete dim=0

   _grad_xx_1_stencil = _grad_xx_1_stencil_stream_to_grad_gx_1.read();
   (void)0;
   Stencil<int32_t, 2, 1> _grad_gx_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_gx_1_stencil.value complete dim=0

   _grad_gx_1_stencil(0, 0) = 0;
   _grad_gx_1_stencil(1, 0) = 0;
   int32_t _361 = _grad_gx_1_stencil(0, 0);
   int32_t _362 = _grad_xx_1_stencil(0, 0);
   int32_t _363 = _361 + _362;
   _grad_gx_1_stencil(0, 0) = _363;
   int32_t _364 = _grad_gx_1_stencil(0, 0);
   int32_t _365 = _grad_xx_1_stencil(1, 0);
   int32_t _366 = _364 + _365;
   _grad_gx_1_stencil(0, 0) = _366;
   int32_t _367 = _grad_gx_1_stencil(0, 0);
   int32_t _368 = _grad_xx_1_stencil(2, 0);
   int32_t _369 = _367 + _368;
   _grad_gx_1_stencil(0, 0) = _369;
   int32_t _370 = _grad_gx_1_stencil(0, 0);
   int32_t _371 = _grad_xx_1_stencil(0, 1);
   int32_t _372 = _370 + _371;
   _grad_gx_1_stencil(0, 0) = _372;
   int32_t _373 = _grad_gx_1_stencil(0, 0);
   int32_t _374 = _grad_xx_1_stencil(1, 1);
   int32_t _375 = _373 + _374;
   _grad_gx_1_stencil(0, 0) = _375;
   int32_t _376 = _grad_gx_1_stencil(0, 0);
   int32_t _377 = _grad_xx_1_stencil(2, 1);
   int32_t _378 = _376 + _377;
   _grad_gx_1_stencil(0, 0) = _378;
   int32_t _379 = _grad_gx_1_stencil(0, 0);
   int32_t _380 = _grad_xx_1_stencil(0, 2);
   int32_t _381 = _379 + _380;
   _grad_gx_1_stencil(0, 0) = _381;
   int32_t _382 = _grad_gx_1_stencil(0, 0);
   int32_t _383 = _grad_xx_1_stencil(1, 2);
   int32_t _384 = _382 + _383;
   _grad_gx_1_stencil(0, 0) = _384;
   int32_t _385 = _grad_gx_1_stencil(0, 0);
   int32_t _386 = _grad_xx_1_stencil(2, 2);
   int32_t _387 = _385 + _386;
   _grad_gx_1_stencil(0, 0) = _387;
   int32_t _388 = _grad_gx_1_stencil(1, 0);
   int32_t _389 = _grad_xx_1_stencil(1, 0);
   int32_t _390 = _388 + _389;
   _grad_gx_1_stencil(1, 0) = _390;
   int32_t _391 = _grad_gx_1_stencil(1, 0);
   int32_t _392 = _grad_xx_1_stencil(2, 0);
   int32_t _393 = _391 + _392;
   _grad_gx_1_stencil(1, 0) = _393;
   int32_t _394 = _grad_gx_1_stencil(1, 0);
   int32_t _395 = _grad_xx_1_stencil(3, 0);
   int32_t _396 = _394 + _395;
   _grad_gx_1_stencil(1, 0) = _396;
   int32_t _397 = _grad_gx_1_stencil(1, 0);
   int32_t _398 = _grad_xx_1_stencil(1, 1);
   int32_t _399 = _397 + _398;
   _grad_gx_1_stencil(1, 0) = _399;
   int32_t _400 = _grad_gx_1_stencil(1, 0);
   int32_t _401 = _grad_xx_1_stencil(2, 1);
   int32_t _402 = _400 + _401;
   _grad_gx_1_stencil(1, 0) = _402;
   int32_t _403 = _grad_gx_1_stencil(1, 0);
   int32_t _404 = _grad_xx_1_stencil(3, 1);
   int32_t _405 = _403 + _404;
   _grad_gx_1_stencil(1, 0) = _405;
   int32_t _406 = _grad_gx_1_stencil(1, 0);
   int32_t _407 = _grad_xx_1_stencil(1, 2);
   int32_t _408 = _406 + _407;
   _grad_gx_1_stencil(1, 0) = _408;
   int32_t _409 = _grad_gx_1_stencil(1, 0);
   int32_t _410 = _grad_xx_1_stencil(2, 2);
   int32_t _411 = _409 + _410;
   _grad_gx_1_stencil(1, 0) = _411;
   int32_t _412 = _grad_gx_1_stencil(1, 0);
   int32_t _413 = _grad_xx_1_stencil(3, 2);
   int32_t _414 = _412 + _413;
   _grad_gx_1_stencil(1, 0) = _414;
   _grad_gx_1_stencil_stream.write(_grad_gx_1_stencil);
   (void)0;
  } // for _grad_gx_1_x___scan_dim_0
 } // for _grad_gx_1_y___scan_dim_1
 // consume grad_gx$1.stencil.stream
 // dispatch_stream(_grad_gx_1_stencil_stream, 2, 2, 2, 66, 1, 1, 66, 1, "p2:cim", 0, 0, 66, 0, 66);
 hls::stream<PackedStencil<int32_t, 2, 1> > &_grad_gx_1_stencil_stream_to_p2_cim = _grad_gx_1_stencil_stream;
 (void)0;
 hls::stream<PackedStencil<int16_t, 2, 1> > _grad_y_1_stencil_stream;
#pragma HLS STREAM variable=_grad_y_1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_grad_y_1_stencil_stream core=FIFO_SRL

 // produce grad_y$1.stencil.stream
 for (int _grad_y_1_y___scan_dim_1 = 0; _grad_y_1_y___scan_dim_1 < 0 + 68; _grad_y_1_y___scan_dim_1++)
 {
  for (int _grad_y_1_x___scan_dim_0 = 0; _grad_y_1_x___scan_dim_0 < 0 + 34; _grad_y_1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<uint8_t, 4, 3> _padded_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_padded_1_stencil.value complete dim=0

   _padded_1_stencil = _padded_1_stencil_stream_to_grad_y_1.read();
   (void)0;
   Stencil<int16_t, 2, 1> _grad_y_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_y_1_stencil.value complete dim=0

   uint8_t _415 = _padded_1_stencil(0, 2);
   int16_t _416 = (int16_t)(_415);
   uint8_t _417 = _padded_1_stencil(0, 0);
   int16_t _418 = (int16_t)(_417);
   int16_t _419 = _416 - _418;
   uint8_t _420 = _padded_1_stencil(1, 2);
   int16_t _421 = (int16_t)(_420);
   int16_t _422 = (int16_t)(2);
   int16_t _423 = _421 * _422;
   int16_t _424 = _419 + _423;
   uint8_t _425 = _padded_1_stencil(1, 0);
   int16_t _426 = (int16_t)(_425);
   int16_t _427 = _426 * _422;
   int16_t _428 = _424 - _427;
   uint8_t _429 = _padded_1_stencil(2, 2);
   int16_t _430 = (int16_t)(_429);
   int16_t _431 = _428 + _430;
   uint8_t _432 = _padded_1_stencil(2, 0);
   int16_t _433 = (int16_t)(_432);
   int16_t _434 = _431 - _433;
   _grad_y_1_stencil(0, 0) = _434;
   uint8_t _435 = _padded_1_stencil(1, 2);
   int16_t _436 = (int16_t)(_435);
   uint8_t _437 = _padded_1_stencil(1, 0);
   int16_t _438 = (int16_t)(_437);
   int16_t _439 = _436 - _438;
   uint8_t _440 = _padded_1_stencil(2, 2);
   int16_t _441 = (int16_t)(_440);
   int16_t _442 = (int16_t)(2);
   int16_t _443 = _441 * _442;
   int16_t _444 = _439 + _443;
   uint8_t _445 = _padded_1_stencil(2, 0);
   int16_t _446 = (int16_t)(_445);
   int16_t _447 = _446 * _442;
   int16_t _448 = _444 - _447;
   uint8_t _449 = _padded_1_stencil(3, 2);
   int16_t _450 = (int16_t)(_449);
   int16_t _451 = _448 + _450;
   uint8_t _452 = _padded_1_stencil(3, 0);
   int16_t _453 = (int16_t)(_452);
   int16_t _454 = _451 - _453;
   _grad_y_1_stencil(1, 0) = _454;
   _grad_y_1_stencil_stream.write(_grad_y_1_stencil);
   (void)0;
  } // for _grad_y_1_x___scan_dim_0
 } // for _grad_y_1_y___scan_dim_1
 // consume grad_y$1.stencil.stream
 // dispatch_stream(_grad_y_1_stencil_stream, 2, 2, 2, 68, 1, 1, 68, 2, "grad_xy$1", 0, 0, 68, 0, 68, "grad_yy$1", 0, 0, 68, 0, 68);
 hls::stream<PackedStencil<int16_t, 2, 1> > _grad_y_1_stencil_stream_to_grad_xy_1;
#pragma HLS STREAM variable=_grad_y_1_stencil_stream_to_grad_xy_1 depth=1
#pragma HLS RESOURCE variable=_grad_y_1_stencil_stream_to_grad_xy_1 core=FIFO_SRL

 hls::stream<PackedStencil<int16_t, 2, 1> > _grad_y_1_stencil_stream_to_grad_yy_1;
#pragma HLS STREAM variable=_grad_y_1_stencil_stream_to_grad_yy_1 depth=1
#pragma HLS RESOURCE variable=_grad_y_1_stencil_stream_to_grad_yy_1 core=FIFO_SRL

 for (int _dim_1 = 0; _dim_1 <= 67; _dim_1 += 1)
 for (int _dim_0 = 0; _dim_0 <= 66; _dim_0 += 2)
 {
#pragma HLS PIPELINE
  PackedStencil<int16_t, 2, 1> _tmp_stencil = _grad_y_1_stencil_stream.read();
  if (_dim_0 >= 0 && _dim_0 <= 66 && _dim_1 >= 0 && _dim_1 <= 67)
  {
   _grad_y_1_stencil_stream_to_grad_xy_1.write(_tmp_stencil);
  }
  if (_dim_0 >= 0 && _dim_0 <= 66 && _dim_1 >= 0 && _dim_1 <= 67)
  {
   _grad_y_1_stencil_stream_to_grad_yy_1.write(_tmp_stencil);
  }
 }
 (void)0;
 hls::stream<PackedStencil<int32_t, 2, 1> > _grad_xy_1_stencil_update_stream;
#pragma HLS STREAM variable=_grad_xy_1_stencil_update_stream depth=1
#pragma HLS RESOURCE variable=_grad_xy_1_stencil_update_stream core=FIFO_SRL

 // produce grad_xy$1.stencil_update.stream
 for (int _grad_xy_1_y___scan_dim_1 = 0; _grad_xy_1_y___scan_dim_1 < 0 + 68; _grad_xy_1_y___scan_dim_1++)
 {
  for (int _grad_xy_1_x___scan_dim_0 = 0; _grad_xy_1_x___scan_dim_0 < 0 + 34; _grad_xy_1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int16_t, 2, 1> _grad_y_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_y_1_stencil.value complete dim=0

   _grad_y_1_stencil = _grad_y_1_stencil_stream_to_grad_xy_1.read();
   (void)0;
   Stencil<int16_t, 2, 1> _grad_x_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_x_1_stencil.value complete dim=0

   _grad_x_1_stencil = _grad_x_1_stencil_stream_to_grad_xy_1.read();
   (void)0;
   Stencil<int32_t, 2, 1> _grad_xy_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_xy_1_stencil.value complete dim=0

   int16_t _455 = _grad_x_1_stencil(0, 0);
   int32_t _456 = (int32_t)(_455);
   int16_t _457 = _grad_y_1_stencil(0, 0);
   int32_t _458 = (int32_t)(_457);
   int32_t _459 = _456 * _458;
   _grad_xy_1_stencil(0, 0) = _459;
   int16_t _460 = _grad_x_1_stencil(1, 0);
   int32_t _461 = (int32_t)(_460);
   int16_t _462 = _grad_y_1_stencil(1, 0);
   int32_t _463 = (int32_t)(_462);
   int32_t _464 = _461 * _463;
   _grad_xy_1_stencil(1, 0) = _464;
   _grad_xy_1_stencil_update_stream.write(_grad_xy_1_stencil);
   (void)0;
  } // for _grad_xy_1_x___scan_dim_0
 } // for _grad_xy_1_y___scan_dim_1
 // consume grad_xy$1.stencil_update.stream
 hls::stream<PackedStencil<int32_t, 4, 3> > _grad_xy_1_stencil_stream;
#pragma HLS STREAM variable=_grad_xy_1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_grad_xy_1_stencil_stream core=FIFO_SRL



   // ---------------------------------------------------------------- //
   // Zheng Hack Begins
   // ---------------------------------------------------------------- //
   
   // linebuffer<68, 68>(_grad_xy_1_stencil_update_stream, _grad_xy_1_stencil_stream);

   hls::stream<uint32_t> addr_in_2D_2("addr_in_2D_2");
   hls::stream<uint32_t> addr_out_2D_2("addr_out_2D_2");
   hls::stream<PackedStencil<uint32_t, 1, 1, 1, 1> > bank_in_2D_2("bank_in_2D_2");
   hls::stream<PackedStencil<uint32_t, 3, 1, 1, 1> > bank_out_2D_2("bank_out_2D_2");
#pragma HLS STREAM variable = addr_in_2D_2 depth = 1
#pragma HLS STREAM variable = addr_out_2D_2 depth = 1
#pragma HLS STREAM variable = bank_in_2D_2 depth = 1
#pragma HLS STREAM variable = bank_out_2D_2 depth = 1

   uint16_t rng_in_2d_2[2] = {68, 68};
   uint16_t st_in_2d_2[2] = {1, 0};
   uint16_t rng_out_2d_2[2] = {68, 68};
   uint16_t st_out_2d_2[2] = {1, 0};

   Stencil<uint32_t, 1> write_start_2;
   write_start_2(0) = 0;
   Stencil<uint32_t, 3> read_start_2;
   read_start_2(0) = 0;
   read_start_2(1) = 1;
   read_start_2(2) = 2;

   uint16_t rng_write_bank_2d_2[3] = {68, 3, 6};
   uint16_t st_write_bank_2d_2[3] = {0, 1, 0};
   uint16_t rng_read_bank_2d_2[3] = {68, 3, 5};
   uint16_t st_read_bank_2d_2[3] = {0, 1, 0};

   AddrGenTemp<2>(addr_in_2D_2, 68 * 68 , rng_in_2d_2, st_in_2d_2);
   AddrGenTemp<2>(addr_out_2D_2, 66 * 66, rng_out_2d_2, st_out_2d_2);

   BankIDGenCircular<uint32_t, 3, 1, 1, 1, 1>(bank_in_2D_2, write_start_2,
                                              68 * 68, 3,
                                              rng_write_bank_2d_2, st_write_bank_2d_2);
   BankIDGenCircular<uint32_t, 3, 3, 1, 1, 1>(bank_out_2D_2, read_start_2,
                                              68 * 68, 3,
                                              rng_read_bank_2d_2, st_read_bank_2d_2);

   U_BUFFER<68, 3, DATAWIDTH, 1, 1, 1, 3, dtype>::call(_grad_xy_1_stencil_update_stream,
                                                       _grad_xy_1_stencil_stream,
                                                       bank_in_2D_2, bank_out_2D_2,
                                                       addr_in_2D_2, addr_out_2D_2,
                                                       2 * 68 + 1,
                                                       68 * 68 + 1,
                                                       68 * 68, 1, 1);

   // ---------------------------------------------------------------- //
   // Zheng Hack Ends
   // ---------------------------------------------------------------- //



 (void)0;
 // dispatch_stream(_grad_xy_1_stencil_stream, 2, 4, 2, 68, 3, 1, 68, 1, "grad_gxy$1", 0, 0, 68, 0, 68);
 hls::stream<PackedStencil<int32_t, 4, 3> > &_grad_xy_1_stencil_stream_to_grad_gxy_1 = _grad_xy_1_stencil_stream;
 (void)0;
 hls::stream<PackedStencil<int32_t, 2, 1> > _grad_gxy_1_stencil_stream;
#pragma HLS STREAM variable=_grad_gxy_1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_grad_gxy_1_stencil_stream core=FIFO_SRL

 // produce grad_gxy$1.stencil.stream
 for (int _grad_gxy_1_y___scan_dim_1 = 0; _grad_gxy_1_y___scan_dim_1 < 0 + 66; _grad_gxy_1_y___scan_dim_1++)
 {
  for (int _grad_gxy_1_x___scan_dim_0 = 0; _grad_gxy_1_x___scan_dim_0 < 0 + 33; _grad_gxy_1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int32_t, 4, 3> _grad_xy_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_xy_1_stencil.value complete dim=0

   _grad_xy_1_stencil = _grad_xy_1_stencil_stream_to_grad_gxy_1.read();
   (void)0;
   Stencil<int32_t, 2, 1> _grad_gxy_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_gxy_1_stencil.value complete dim=0

   _grad_gxy_1_stencil(0, 0) = 0;
   _grad_gxy_1_stencil(1, 0) = 0;
   int32_t _465 = _grad_gxy_1_stencil(0, 0);
   int32_t _466 = _grad_xy_1_stencil(0, 0);
   int32_t _467 = _465 + _466;
   _grad_gxy_1_stencil(0, 0) = _467;
   int32_t _468 = _grad_gxy_1_stencil(0, 0);
   int32_t _469 = _grad_xy_1_stencil(1, 0);
   int32_t _470 = _468 + _469;
   _grad_gxy_1_stencil(0, 0) = _470;
   int32_t _471 = _grad_gxy_1_stencil(0, 0);
   int32_t _472 = _grad_xy_1_stencil(2, 0);
   int32_t _473 = _471 + _472;
   _grad_gxy_1_stencil(0, 0) = _473;
   int32_t _474 = _grad_gxy_1_stencil(0, 0);
   int32_t _475 = _grad_xy_1_stencil(0, 1);
   int32_t _476 = _474 + _475;
   _grad_gxy_1_stencil(0, 0) = _476;
   int32_t _477 = _grad_gxy_1_stencil(0, 0);
   int32_t _478 = _grad_xy_1_stencil(1, 1);
   int32_t _479 = _477 + _478;
   _grad_gxy_1_stencil(0, 0) = _479;
   int32_t _480 = _grad_gxy_1_stencil(0, 0);
   int32_t _481 = _grad_xy_1_stencil(2, 1);
   int32_t _482 = _480 + _481;
   _grad_gxy_1_stencil(0, 0) = _482;
   int32_t _483 = _grad_gxy_1_stencil(0, 0);
   int32_t _484 = _grad_xy_1_stencil(0, 2);
   int32_t _485 = _483 + _484;
   _grad_gxy_1_stencil(0, 0) = _485;
   int32_t _486 = _grad_gxy_1_stencil(0, 0);
   int32_t _487 = _grad_xy_1_stencil(1, 2);
   int32_t _488 = _486 + _487;
   _grad_gxy_1_stencil(0, 0) = _488;
   int32_t _489 = _grad_gxy_1_stencil(0, 0);
   int32_t _490 = _grad_xy_1_stencil(2, 2);
   int32_t _491 = _489 + _490;
   _grad_gxy_1_stencil(0, 0) = _491;
   int32_t _492 = _grad_gxy_1_stencil(1, 0);
   int32_t _493 = _grad_xy_1_stencil(1, 0);
   int32_t _494 = _492 + _493;
   _grad_gxy_1_stencil(1, 0) = _494;
   int32_t _495 = _grad_gxy_1_stencil(1, 0);
   int32_t _496 = _grad_xy_1_stencil(2, 0);
   int32_t _497 = _495 + _496;
   _grad_gxy_1_stencil(1, 0) = _497;
   int32_t _498 = _grad_gxy_1_stencil(1, 0);
   int32_t _499 = _grad_xy_1_stencil(3, 0);
   int32_t _500 = _498 + _499;
   _grad_gxy_1_stencil(1, 0) = _500;
   int32_t _501 = _grad_gxy_1_stencil(1, 0);
   int32_t _502 = _grad_xy_1_stencil(1, 1);
   int32_t _503 = _501 + _502;
   _grad_gxy_1_stencil(1, 0) = _503;
   int32_t _504 = _grad_gxy_1_stencil(1, 0);
   int32_t _505 = _grad_xy_1_stencil(2, 1);
   int32_t _506 = _504 + _505;
   _grad_gxy_1_stencil(1, 0) = _506;
   int32_t _507 = _grad_gxy_1_stencil(1, 0);
   int32_t _508 = _grad_xy_1_stencil(3, 1);
   int32_t _509 = _507 + _508;
   _grad_gxy_1_stencil(1, 0) = _509;
   int32_t _510 = _grad_gxy_1_stencil(1, 0);
   int32_t _511 = _grad_xy_1_stencil(1, 2);
   int32_t _512 = _510 + _511;
   _grad_gxy_1_stencil(1, 0) = _512;
   int32_t _513 = _grad_gxy_1_stencil(1, 0);
   int32_t _514 = _grad_xy_1_stencil(2, 2);
   int32_t _515 = _513 + _514;
   _grad_gxy_1_stencil(1, 0) = _515;
   int32_t _516 = _grad_gxy_1_stencil(1, 0);
   int32_t _517 = _grad_xy_1_stencil(3, 2);
   int32_t _518 = _516 + _517;
   _grad_gxy_1_stencil(1, 0) = _518;
   _grad_gxy_1_stencil_stream.write(_grad_gxy_1_stencil);
   (void)0;
  } // for _grad_gxy_1_x___scan_dim_0
 } // for _grad_gxy_1_y___scan_dim_1
 // consume grad_gxy$1.stencil.stream
 // dispatch_stream(_grad_gxy_1_stencil_stream, 2, 2, 2, 66, 1, 1, 66, 1, "p2:cim", 0, 0, 66, 0, 66);
 hls::stream<PackedStencil<int32_t, 2, 1> > &_grad_gxy_1_stencil_stream_to_p2_cim = _grad_gxy_1_stencil_stream;
 (void)0;
 hls::stream<PackedStencil<int32_t, 2, 1> > _grad_yy_1_stencil_update_stream;
#pragma HLS STREAM variable=_grad_yy_1_stencil_update_stream depth=1
#pragma HLS RESOURCE variable=_grad_yy_1_stencil_update_stream core=FIFO_SRL

 // produce grad_yy$1.stencil_update.stream
 for (int _grad_yy_1_y___scan_dim_1 = 0; _grad_yy_1_y___scan_dim_1 < 0 + 68; _grad_yy_1_y___scan_dim_1++)
 {
  for (int _grad_yy_1_x___scan_dim_0 = 0; _grad_yy_1_x___scan_dim_0 < 0 + 34; _grad_yy_1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int16_t, 2, 1> _grad_y_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_y_1_stencil.value complete dim=0

   _grad_y_1_stencil = _grad_y_1_stencil_stream_to_grad_yy_1.read();
   (void)0;
   Stencil<int32_t, 2, 1> _grad_yy_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_yy_1_stencil.value complete dim=0

   int16_t _519 = _grad_y_1_stencil(0, 0);
   int32_t _520 = (int32_t)(_519);
   int32_t _521 = _520 * _520;
   _grad_yy_1_stencil(0, 0) = _521;
   int16_t _522 = _grad_y_1_stencil(1, 0);
   int32_t _523 = (int32_t)(_522);
   int32_t _524 = _523 * _523;
   _grad_yy_1_stencil(1, 0) = _524;
   _grad_yy_1_stencil_update_stream.write(_grad_yy_1_stencil);
   (void)0;
  } // for _grad_yy_1_x___scan_dim_0
 } // for _grad_yy_1_y___scan_dim_1
 // consume grad_yy$1.stencil_update.stream
 hls::stream<PackedStencil<int32_t, 4, 3> > _grad_yy_1_stencil_stream;
#pragma HLS STREAM variable=_grad_yy_1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_grad_yy_1_stencil_stream core=FIFO_SRL


   // ---------------------------------------------------------------- //
   // Zheng Hack Begins
   // ---------------------------------------------------------------- //

   // linebuffer<68, 68>(_grad_yy_1_stencil_update_stream, _grad_yy_1_stencil_stream);

   hls::stream<uint32_t> addr_in_2D_3("addr_in_2D_3");
   hls::stream<uint32_t> addr_out_2D_3("addr_out_2D_3");
   hls::stream<PackedStencil<uint32_t, 1, 1, 1, 1> > bank_in_2D_3("bank_in_2D_3");
   hls::stream<PackedStencil<uint32_t, 3, 1, 1, 1> > bank_out_2D_3("bank_out_2D_3");
#pragma HLS STREAM variable = addr_in_2D_3 depth = 1
#pragma HLS STREAM variable = addr_out_2D_3 depth = 1
#pragma HLS STREAM variable = bank_in_2D_3 depth = 1
#pragma HLS STREAM variable = bank_out_2D_3 depth = 1

   uint16_t rng_in_2d_3[2] = {68, 68};
   uint16_t st_in_2d_3[2] = {1, 0};
   uint16_t rng_out_2d_3[2] = {68, 68};
   uint16_t st_out_2d_3[2] = {1, 0};

   Stencil<uint32_t, 1> write_start_3;
   write_start_3(0) = 0;
   Stencil<uint32_t, 3> read_start_3;
   read_start_3(0) = 0;
   read_start_3(1) = 1;
   read_start_3(2) = 2;

   uint16_t rng_write_bank_2d_3[3] = {68, 3, 6};
   uint16_t st_write_bank_2d_3[3] = {0, 1, 0};
   uint16_t rng_read_bank_2d_3[3] = {68, 3, 5};
   uint16_t st_read_bank_2d_3[3] = {0, 1, 0};

   AddrGenTemp<2>(addr_in_2D_3, 68 * 68 , rng_in_2d_3, st_in_2d_3);
   AddrGenTemp<2>(addr_out_2D_3, 66 * 66, rng_out_2d_3, st_out_2d_3);

   BankIDGenCircular<uint32_t, 3, 1, 1, 1, 1>(bank_in_2D_3, write_start_3,
                                              68 * 68, 3,
                                              rng_write_bank_2d_3, st_write_bank_2d_3);
   BankIDGenCircular<uint32_t, 3, 3, 1, 1, 1>(bank_out_2D_3, read_start_3,
                                              68 * 68, 3,
                                              rng_read_bank_2d_3, st_read_bank_2d_3);

   U_BUFFER<68, 3, DATAWIDTH, 1, 1, 1, 3, dtype>::call(_grad_yy_1_stencil_stream,
                                                       _grad_yy_1_stencil_stream,
                                                       bank_in_2D_3, bank_out_2D_3,
                                                       addr_in_2D_3, addr_out_2D_3,
                                                       2 * 68 + 1,
                                                       68 * 68 + 1,
                                                       68 * 68, 1, 1);

   // ---------------------------------------------------------------- //
   // Zheng Hack Ends
   // ---------------------------------------------------------------- //



 (void)0;
 // dispatch_stream(_grad_yy_1_stencil_stream, 2, 4, 2, 68, 3, 1, 68, 1, "grad_gy$1", 0, 0, 68, 0, 68);
 hls::stream<PackedStencil<int32_t, 4, 3> > &_grad_yy_1_stencil_stream_to_grad_gy_1 = _grad_yy_1_stencil_stream;
 (void)0;
 hls::stream<PackedStencil<int32_t, 2, 1> > _grad_gy_1_stencil_stream;
#pragma HLS STREAM variable=_grad_gy_1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_grad_gy_1_stencil_stream core=FIFO_SRL

 // produce grad_gy$1.stencil.stream
 for (int _grad_gy_1_y___scan_dim_1 = 0; _grad_gy_1_y___scan_dim_1 < 0 + 66; _grad_gy_1_y___scan_dim_1++)
 {
  for (int _grad_gy_1_x___scan_dim_0 = 0; _grad_gy_1_x___scan_dim_0 < 0 + 33; _grad_gy_1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int32_t, 4, 3> _grad_yy_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_yy_1_stencil.value complete dim=0

   _grad_yy_1_stencil = _grad_yy_1_stencil_stream_to_grad_gy_1.read();
   (void)0;
   Stencil<int32_t, 2, 1> _grad_gy_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_gy_1_stencil.value complete dim=0

   _grad_gy_1_stencil(0, 0) = 0;
   _grad_gy_1_stencil(1, 0) = 0;
   int32_t _525 = _grad_gy_1_stencil(0, 0);
   int32_t _526 = _grad_yy_1_stencil(0, 0);
   int32_t _527 = _525 + _526;
   _grad_gy_1_stencil(0, 0) = _527;
   int32_t _528 = _grad_gy_1_stencil(0, 0);
   int32_t _529 = _grad_yy_1_stencil(1, 0);
   int32_t _530 = _528 + _529;
   _grad_gy_1_stencil(0, 0) = _530;
   int32_t _531 = _grad_gy_1_stencil(0, 0);
   int32_t _532 = _grad_yy_1_stencil(2, 0);
   int32_t _533 = _531 + _532;
   _grad_gy_1_stencil(0, 0) = _533;
   int32_t _534 = _grad_gy_1_stencil(0, 0);
   int32_t _535 = _grad_yy_1_stencil(0, 1);
   int32_t _536 = _534 + _535;
   _grad_gy_1_stencil(0, 0) = _536;
   int32_t _537 = _grad_gy_1_stencil(0, 0);
   int32_t _538 = _grad_yy_1_stencil(1, 1);
   int32_t _539 = _537 + _538;
   _grad_gy_1_stencil(0, 0) = _539;
   int32_t _540 = _grad_gy_1_stencil(0, 0);
   int32_t _541 = _grad_yy_1_stencil(2, 1);
   int32_t _542 = _540 + _541;
   _grad_gy_1_stencil(0, 0) = _542;
   int32_t _543 = _grad_gy_1_stencil(0, 0);
   int32_t _544 = _grad_yy_1_stencil(0, 2);
   int32_t _545 = _543 + _544;
   _grad_gy_1_stencil(0, 0) = _545;
   int32_t _546 = _grad_gy_1_stencil(0, 0);
   int32_t _547 = _grad_yy_1_stencil(1, 2);
   int32_t _548 = _546 + _547;
   _grad_gy_1_stencil(0, 0) = _548;
   int32_t _549 = _grad_gy_1_stencil(0, 0);
   int32_t _550 = _grad_yy_1_stencil(2, 2);
   int32_t _551 = _549 + _550;
   _grad_gy_1_stencil(0, 0) = _551;
   int32_t _552 = _grad_gy_1_stencil(1, 0);
   int32_t _553 = _grad_yy_1_stencil(1, 0);
   int32_t _554 = _552 + _553;
   _grad_gy_1_stencil(1, 0) = _554;
   int32_t _555 = _grad_gy_1_stencil(1, 0);
   int32_t _556 = _grad_yy_1_stencil(2, 0);
   int32_t _557 = _555 + _556;
   _grad_gy_1_stencil(1, 0) = _557;
   int32_t _558 = _grad_gy_1_stencil(1, 0);
   int32_t _559 = _grad_yy_1_stencil(3, 0);
   int32_t _560 = _558 + _559;
   _grad_gy_1_stencil(1, 0) = _560;
   int32_t _561 = _grad_gy_1_stencil(1, 0);
   int32_t _562 = _grad_yy_1_stencil(1, 1);
   int32_t _563 = _561 + _562;
   _grad_gy_1_stencil(1, 0) = _563;
   int32_t _564 = _grad_gy_1_stencil(1, 0);
   int32_t _565 = _grad_yy_1_stencil(2, 1);
   int32_t _566 = _564 + _565;
   _grad_gy_1_stencil(1, 0) = _566;
   int32_t _567 = _grad_gy_1_stencil(1, 0);
   int32_t _568 = _grad_yy_1_stencil(3, 1);
   int32_t _569 = _567 + _568;
   _grad_gy_1_stencil(1, 0) = _569;
   int32_t _570 = _grad_gy_1_stencil(1, 0);
   int32_t _571 = _grad_yy_1_stencil(1, 2);
   int32_t _572 = _570 + _571;
   _grad_gy_1_stencil(1, 0) = _572;
   int32_t _573 = _grad_gy_1_stencil(1, 0);
   int32_t _574 = _grad_yy_1_stencil(2, 2);
   int32_t _575 = _573 + _574;
   _grad_gy_1_stencil(1, 0) = _575;
   int32_t _576 = _grad_gy_1_stencil(1, 0);
   int32_t _577 = _grad_yy_1_stencil(3, 2);
   int32_t _578 = _576 + _577;
   _grad_gy_1_stencil(1, 0) = _578;
   _grad_gy_1_stencil_stream.write(_grad_gy_1_stencil);
   (void)0;
  } // for _grad_gy_1_x___scan_dim_0
 } // for _grad_gy_1_y___scan_dim_1
 // consume grad_gy$1.stencil.stream
 // dispatch_stream(_grad_gy_1_stencil_stream, 2, 2, 2, 66, 1, 1, 66, 1, "p2:cim", 0, 0, 66, 0, 66);
 hls::stream<PackedStencil<int32_t, 2, 1> > &_grad_gy_1_stencil_stream_to_p2_cim = _grad_gy_1_stencil_stream;
 (void)0;
 hls::stream<PackedStencil<float, 2, 1> > _p2_cim_stencil_update_stream;
#pragma HLS STREAM variable=_p2_cim_stencil_update_stream depth=1
#pragma HLS RESOURCE variable=_p2_cim_stencil_update_stream core=FIFO_SRL

 // produce p2:cim.stencil_update.stream
 for (int _p2_cim_y___scan_dim_1 = 0; _p2_cim_y___scan_dim_1 < 0 + 66; _p2_cim_y___scan_dim_1++)
 {
  for (int _p2_cim_x___scan_dim_0 = 0; _p2_cim_x___scan_dim_0 < 0 + 33; _p2_cim_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int32_t, 2, 1> _grad_gy_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_gy_1_stencil.value complete dim=0

   _grad_gy_1_stencil = _grad_gy_1_stencil_stream_to_p2_cim.read();
   (void)0;
   Stencil<int32_t, 2, 1> _grad_gxy_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_gxy_1_stencil.value complete dim=0

   _grad_gxy_1_stencil = _grad_gxy_1_stencil_stream_to_p2_cim.read();
   (void)0;
   Stencil<int32_t, 2, 1> _grad_gx_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_grad_gx_1_stencil.value complete dim=0

   _grad_gx_1_stencil = _grad_gx_1_stencil_stream_to_p2_cim.read();
   (void)0;
   Stencil<float, 2, 1> _p2_cim_stencil;
#pragma HLS ARRAY_PARTITION variable=_p2_cim_stencil.value complete dim=0

   int32_t _579 = _grad_gx_1_stencil(0, 0);
   int32_t _580 = _579 / 144;
   int32_t _581 = _580 * 144;
   int32_t _582 = _579 - _581;
   int32_t _583 = _582 >> 31;
   int32_t _584 = 144 >> 31;
   int32_t _585 = _583 & _584;
   int32_t _586 = _580 - _585;
   int32_t _587 = ~_584;
   int32_t _588 = _583 & _587;
   int32_t _589 = _586 + _588;
   float _590 = (float)(_589);
   int32_t _591 = _grad_gy_1_stencil(0, 0);
   int32_t _592 = _591 / 144;
   int32_t _593 = _592 * 144;
   int32_t _594 = _591 - _593;
   int32_t _595 = _594 >> 31;
   int32_t _596 = _595 & _584;
   int32_t _597 = _592 - _596;
   int32_t _598 = _595 & _587;
   int32_t _599 = _597 + _598;
   float _600 = (float)(_599);
   float _601 = _590 + _600;
   float _602 = _590 * _600;
   int32_t _603 = _grad_gxy_1_stencil(0, 0);
   int32_t _604 = _603 / 144;
   int32_t _605 = _604 * 144;
   int32_t _606 = _603 - _605;
   int32_t _607 = _606 >> 31;
   int32_t _608 = _607 & _584;
   int32_t _609 = _604 - _608;
   int32_t _610 = _607 & _587;
   int32_t _611 = _609 + _610;
   float _612 = (float)(_611);
   float _613 = _612 * _612;
   float _614 = _602 - _613;
   float _615 = _601 * float_from_bits(1025758986 /* 0.04 */);
   float _616 = _615 * _601;
   float _617 = _614 - _616;
   _p2_cim_stencil(0, 0) = _617;
   int32_t _618 = _grad_gx_1_stencil(1, 0);
   int32_t _619 = _618 / 144;
   int32_t _620 = _619 * 144;
   int32_t _621 = _618 - _620;
   int32_t _622 = _621 >> 31;
   int32_t _623 = 144 >> 31;
   int32_t _624 = _622 & _623;
   int32_t _625 = _619 - _624;
   int32_t _626 = ~_623;
   int32_t _627 = _622 & _626;
   int32_t _628 = _625 + _627;
   float _629 = (float)(_628);
   int32_t _630 = _grad_gy_1_stencil(1, 0);
   int32_t _631 = _630 / 144;
   int32_t _632 = _631 * 144;
   int32_t _633 = _630 - _632;
   int32_t _634 = _633 >> 31;
   int32_t _635 = _634 & _623;
   int32_t _636 = _631 - _635;
   int32_t _637 = _634 & _626;
   int32_t _638 = _636 + _637;
   float _639 = (float)(_638);
   float _640 = _629 + _639;
   float _641 = _629 * _639;
   int32_t _642 = _grad_gxy_1_stencil(1, 0);
   int32_t _643 = _642 / 144;
   int32_t _644 = _643 * 144;
   int32_t _645 = _642 - _644;
   int32_t _646 = _645 >> 31;
   int32_t _647 = _646 & _623;
   int32_t _648 = _643 - _647;
   int32_t _649 = _646 & _626;
   int32_t _650 = _648 + _649;
   float _651 = (float)(_650);
   float _652 = _651 * _651;
   float _653 = _641 - _652;
   float _654 = _640 * float_from_bits(1025758986 /* 0.04 */);
   float _655 = _654 * _640;
   float _656 = _653 - _655;
   _p2_cim_stencil(1, 0) = _656;
   _p2_cim_stencil_update_stream.write(_p2_cim_stencil);
   (void)0;
  } // for _p2_cim_x___scan_dim_0
 } // for _p2_cim_y___scan_dim_1
 // consume p2:cim.stencil_update.stream
 hls::stream<PackedStencil<float, 4, 3> > _p2_cim_stencil_stream;
#pragma HLS STREAM variable=_p2_cim_stencil_stream depth=1
#pragma HLS RESOURCE variable=_p2_cim_stencil_stream core=FIFO_SRL



   // ---------------------------------------------------------------- //
   // Zheng Hack Begins
   // ---------------------------------------------------------------- //

   // linebuffer<66, 66>(_p2_cim_stencil_update_stream, _p2_cim_stencil_stream);

   hls::stream<uint32_t> addr_in_2D_4("addr_in_2D_4");
   hls::stream<uint32_t> addr_out_2D_4("addr_out_2D_4");
   hls::stream<PackedStencil<uint32_t, 1, 1, 1, 1> > bank_in_2D_4("bank_in_2D_4");
   hls::stream<PackedStencil<uint32_t, 3, 1, 1, 1> > bank_out_2D_4("bank_out_2D_4");
#pragma HLS STREAM variable = addr_in_2D_4 depth = 1
#pragma HLS STREAM variable = addr_out_2D_4 depth = 1
#pragma HLS STREAM variable = bank_in_2D_4 depth = 1
#pragma HLS STREAM variable = bank_out_2D_4 depth = 1

   uint16_t rng_in_2d_4[2] = {66, 66};
   uint16_t st_in_2d_4[2] = {1, 0};
   uint16_t rng_out_2d_4[2] = {66, 66};
   uint16_t st_out_2d_4[2] = {1, 0};

   Stencil<uint32_t, 1> write_start_4;
   write_start_4(0) = 0;
   Stencil<uint32_t, 3> read_start_4;
   read_start_4(0) = 0;
   read_start_4(1) = 1;
   read_start_4(2) = 2;

   uint16_t rng_write_bank_2d_4[3] = {66, 3, 6};
   uint16_t st_write_bank_2d_4[3] = {0, 1, 0};
   uint16_t rng_read_bank_2d_4[3] = {66, 3, 5};
   uint16_t st_read_bank_2d_4[3] = {0, 1, 0};

   AddrGenTemp<2>(addr_in_2D_4, 66 * 66 , rng_in_2d_4, st_in_2d_4);
   AddrGenTemp<2>(addr_out_2D_4, 64 * 64, rng_out_2d_4, st_out_2d_4);

   BankIDGenCircular<uint32_t, 3, 1, 1, 1, 1>(bank_in_2D_4, write_start_4,
                                              66 * 66, 3,
                                              rng_write_bank_2d_4, st_write_bank_2d_4);
   BankIDGenCircular<uint32_t, 3, 3, 1, 1, 1>(bank_out_2D_4, read_start_4,
                                              66 * 66, 3,
                                              rng_read_bank_2d_4, st_read_bank_2d_4);

   U_BUFFER<66, 3, DATAWIDTH, 1, 1, 1, 3, dtype>::call(_p2_cim_stencil_update_stream,
                                                       _p2_cim_stencil_stream,
                                                       bank_in_2D_4, bank_out_2D_4,
                                                       addr_in_2D_4, addr_out_2D_4,
                                                       2 * 66 + 1,
                                                       66 * 66 + 1,
                                                       66 * 66, 1, 1);

   // ---------------------------------------------------------------- //
   // Zheng Hack Ends
   // ---------------------------------------------------------------- //




 (void)0;
 // dispatch_stream(_p2_cim_stencil_stream, 2, 4, 2, 66, 3, 1, 66, 1, "hw_output$1", 0, 0, 66, 0, 66);
 hls::stream<PackedStencil<float, 4, 3> > &_p2_cim_stencil_stream_to_hw_output_1 = _p2_cim_stencil_stream;
 (void)0;
 // produce hw_output$1.stencil.stream
 for (int _hw_output_1_y___scan_dim_1 = 0; _hw_output_1_y___scan_dim_1 < 0 + 64; _hw_output_1_y___scan_dim_1++)
 {
  for (int _hw_output_1_x___scan_dim_0 = 0; _hw_output_1_x___scan_dim_0 < 0 + 32; _hw_output_1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<float, 4, 3> _p2_cim_stencil;
#pragma HLS ARRAY_PARTITION variable=_p2_cim_stencil.value complete dim=0

   _p2_cim_stencil = _p2_cim_stencil_stream_to_hw_output_1.read();
   (void)0;
   Stencil<uint8_t, 2, 1> _hw_output_1_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_output_1_stencil.value complete dim=0

   uint8_t _657 = (uint8_t)(255);
   uint8_t _658 = (uint8_t)(0);
   float _659 = _p2_cim_stencil(0, 0);
   float _660 = _p2_cim_stencil(1, 0);
   float _661 = max(_659, _660);
   float _662 = _p2_cim_stencil(2, 0);
   float _663 = max(_661, _662);
   float _664 = _p2_cim_stencil(0, 1);
   float _665 = max(_663, _664);
   float _666 = _p2_cim_stencil(2, 1);
   float _667 = max(_665, _666);
   float _668 = _p2_cim_stencil(0, 2);
   float _669 = max(_667, _668);
   float _670 = _p2_cim_stencil(1, 2);
   float _671 = max(_669, _670);
   float _672 = _p2_cim_stencil(2, 2);
   float _673 = max(_671, _672);
   float _674 = _p2_cim_stencil(1, 1);
   bool _675 = _673 < _674;
   bool _676 = float_from_bits(1120403456 /* 100 */) <= _674;
   bool _677 = _675 && _676;
   uint8_t _678 = (uint8_t)(_677 ? _657 : _658);
   _hw_output_1_stencil(0, 0) = _678;
   uint8_t _679 = (uint8_t)(255);
   uint8_t _680 = (uint8_t)(0);
   float _681 = _p2_cim_stencil(1, 0);
   float _682 = _p2_cim_stencil(2, 0);
   float _683 = max(_681, _682);
   float _684 = _p2_cim_stencil(3, 0);
   float _685 = max(_683, _684);
   float _686 = _p2_cim_stencil(1, 1);
   float _687 = max(_685, _686);
   float _688 = _p2_cim_stencil(3, 1);
   float _689 = max(_687, _688);
   float _690 = _p2_cim_stencil(1, 2);
   float _691 = max(_689, _690);
   float _692 = _p2_cim_stencil(2, 2);
   float _693 = max(_691, _692);
   float _694 = _p2_cim_stencil(3, 2);
   float _695 = max(_693, _694);
   float _696 = _p2_cim_stencil(2, 1);
   bool _697 = _695 < _696;
   bool _698 = float_from_bits(1120403456 /* 100 */) <= _696;
   bool _699 = _697 && _698;
   uint8_t _700 = (uint8_t)(_699 ? _679 : _680);
   _hw_output_1_stencil(1, 0) = _700;
   AxiPackedStencil<uint8_t, 2, 1> _hw_output_1_stencil_packed = _hw_output_1_stencil;
   if (_hw_output_1_x___scan_dim_0 == 31 && _hw_output_1_y___scan_dim_1 == 63) {
    _hw_output_1_stencil_packed.last = 1;
   } else {
    _hw_output_1_stencil_packed.last = 0;
   }
   _hw_output_1_stencil_stream.write(_hw_output_1_stencil_packed);
   (void)0;
  } // for _hw_output_1_x___scan_dim_0
 } // for _hw_output_1_y___scan_dim_1
} // kernel hls_target_hls_target


