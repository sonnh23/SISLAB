module FullAdder(
  input   io_a,
  input   io_b,
  input   io_cIn,
  output  io_s,
  output  io_cOut
);
  wire  _T; // @[FullAdder.scala 14:19]
  wire  _T_2; // @[FullAdder.scala 15:22]
  wire  _T_3; // @[FullAdder.scala 15:38]
  wire  _T_5; // @[FullAdder.scala 15:30]
  wire  _T_6; // @[FullAdder.scala 15:56]
  assign _T = io_a ^ io_b; // @[FullAdder.scala 14:19]
  assign _T_2 = io_a & io_b; // @[FullAdder.scala 15:22]
  assign _T_3 = io_a & io_cIn; // @[FullAdder.scala 15:38]
  assign _T_5 = _T_2 + _T_3; // @[FullAdder.scala 15:30]
  assign _T_6 = io_b & io_cIn; // @[FullAdder.scala 15:56]
  assign io_s = _T ^ io_cIn; // @[FullAdder.scala 14:10]
  assign io_cOut = _T_5 + _T_6; // @[FullAdder.scala 15:13]
endmodule
module AdderSubtractor4bits(
  input        clock,
  input        reset,
  input  [3:0] io_a,
  input  [3:0] io_b,
  input        io_cIn,
  input        io_fn,
  output [3:0] io_s,
  output       io_cOut
);
  wire  FA0_io_a; // @[AdderSubtractor4bits.scala 15:19]
  wire  FA0_io_b; // @[AdderSubtractor4bits.scala 15:19]
  wire  FA0_io_cIn; // @[AdderSubtractor4bits.scala 15:19]
  wire  FA0_io_s; // @[AdderSubtractor4bits.scala 15:19]
  wire  FA0_io_cOut; // @[AdderSubtractor4bits.scala 15:19]
  wire  FA1_io_a; // @[AdderSubtractor4bits.scala 16:19]
  wire  FA1_io_b; // @[AdderSubtractor4bits.scala 16:19]
  wire  FA1_io_cIn; // @[AdderSubtractor4bits.scala 16:19]
  wire  FA1_io_s; // @[AdderSubtractor4bits.scala 16:19]
  wire  FA1_io_cOut; // @[AdderSubtractor4bits.scala 16:19]
  wire  FA2_io_a; // @[AdderSubtractor4bits.scala 17:19]
  wire  FA2_io_b; // @[AdderSubtractor4bits.scala 17:19]
  wire  FA2_io_cIn; // @[AdderSubtractor4bits.scala 17:19]
  wire  FA2_io_s; // @[AdderSubtractor4bits.scala 17:19]
  wire  FA2_io_cOut; // @[AdderSubtractor4bits.scala 17:19]
  wire  FA3_io_a; // @[AdderSubtractor4bits.scala 18:19]
  wire  FA3_io_b; // @[AdderSubtractor4bits.scala 18:19]
  wire  FA3_io_cIn; // @[AdderSubtractor4bits.scala 18:19]
  wire  FA3_io_s; // @[AdderSubtractor4bits.scala 18:19]
  wire  FA3_io_cOut; // @[AdderSubtractor4bits.scala 18:19]
  wire  _T_1; // @[AdderSubtractor4bits.scala 23:19]
  wire  _T_7; // @[AdderSubtractor4bits.scala 31:19]
  wire  _T_10; // @[AdderSubtractor4bits.scala 35:19]
  FullAdder FA0 ( // @[AdderSubtractor4bits.scala 15:19]
    .io_a(FA0_io_a),
    .io_b(FA0_io_b),
    .io_cIn(FA0_io_cIn),
    .io_s(FA0_io_s),
    .io_cOut(FA0_io_cOut)
  );
  FullAdder FA1 ( // @[AdderSubtractor4bits.scala 16:19]
    .io_a(FA1_io_a),
    .io_b(FA1_io_b),
    .io_cIn(FA1_io_cIn),
    .io_s(FA1_io_s),
    .io_cOut(FA1_io_cOut)
  );
  FullAdder FA2 ( // @[AdderSubtractor4bits.scala 17:19]
    .io_a(FA2_io_a),
    .io_b(FA2_io_b),
    .io_cIn(FA2_io_cIn),
    .io_s(FA2_io_s),
    .io_cOut(FA2_io_cOut)
  );
  FullAdder FA3 ( // @[AdderSubtractor4bits.scala 18:19]
    .io_a(FA3_io_a),
    .io_b(FA3_io_b),
    .io_cIn(FA3_io_cIn),
    .io_s(FA3_io_s),
    .io_cOut(FA3_io_cOut)
  );
  assign _T_1 = io_b[0]; // @[AdderSubtractor4bits.scala 23:19]
  assign _T_7 = io_b[2]; // @[AdderSubtractor4bits.scala 31:19]
  assign _T_10 = io_b[3]; // @[AdderSubtractor4bits.scala 35:19]
  assign io_s = {{3'd0}, FA0_io_s}; // @[AdderSubtractor4bits.scala 38:8]
  assign io_cOut = FA3_io_cOut; // @[AdderSubtractor4bits.scala 37:11]
  assign FA0_io_a = io_a[0]; // @[AdderSubtractor4bits.scala 22:12]
  assign FA0_io_b = _T_1 ^ io_fn; // @[AdderSubtractor4bits.scala 23:12]
  assign FA0_io_cIn = io_fn; // @[AdderSubtractor4bits.scala 21:14]
  assign FA1_io_a = io_a[0]; // @[AdderSubtractor4bits.scala 26:12]
  assign FA1_io_b = _T_1 ^ io_fn; // @[AdderSubtractor4bits.scala 27:12]
  assign FA1_io_cIn = FA0_io_cOut; // @[AdderSubtractor4bits.scala 25:14]
  assign FA2_io_a = io_a[2]; // @[AdderSubtractor4bits.scala 30:12]
  assign FA2_io_b = _T_7 ^ io_fn; // @[AdderSubtractor4bits.scala 31:12]
  assign FA2_io_cIn = FA1_io_cOut; // @[AdderSubtractor4bits.scala 29:14]
  assign FA3_io_a = io_a[3]; // @[AdderSubtractor4bits.scala 34:12]
  assign FA3_io_b = _T_10 ^ io_fn; // @[AdderSubtractor4bits.scala 35:12]
  assign FA3_io_cIn = FA2_io_cOut; // @[AdderSubtractor4bits.scala 33:14]
endmodule
