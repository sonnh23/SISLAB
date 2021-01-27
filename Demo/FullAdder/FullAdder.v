module FullAdder(
  input   clock,
  input   reset,
  input   io_a,
  input   io_b,
  input   io_cIn,
  input   io_fn,
  output  io_s,
  output  io_cOut
);
  wire  _T; // @[FullAdder.scala 15:19]
  wire  _T_2; // @[FullAdder.scala 16:22]
  wire  _T_3; // @[FullAdder.scala 16:38]
  wire  _T_5; // @[FullAdder.scala 16:30]
  wire  _T_6; // @[FullAdder.scala 16:56]
  assign _T = io_a ^ io_b; // @[FullAdder.scala 15:19]
  assign _T_2 = io_a & io_b; // @[FullAdder.scala 16:22]
  assign _T_3 = io_a & io_cIn; // @[FullAdder.scala 16:38]
  assign _T_5 = _T_2 + _T_3; // @[FullAdder.scala 16:30]
  assign _T_6 = io_b & io_cIn; // @[FullAdder.scala 16:56]
  assign io_s = _T ^ io_cIn; // @[FullAdder.scala 15:10]
  assign io_cOut = _T_5 + _T_6; // @[FullAdder.scala 16:13]
endmodule
