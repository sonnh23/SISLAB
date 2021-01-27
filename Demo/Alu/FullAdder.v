module FullAdder(
  input        clock,
  input        reset,
  input  [7:0] io_a,
  input  [7:0] io_b,
  input  [7:0] io_cIn,
  output [7:0] io_s,
  output [7:0] io_cOut
);
  wire [7:0] _T; // @[alu.scala 14:16]
  wire [7:0] _T_3; // @[alu.scala 15:27]
  wire [7:0] _T_4; // @[alu.scala 15:20]
  wire [7:0] _T_6; // @[alu.scala 15:43]
  wire [7:0] _T_7; // @[alu.scala 15:34]
  assign _T = io_a ^ io_b; // @[alu.scala 14:16]
  assign _T_3 = io_b + io_a; // @[alu.scala 15:27]
  assign _T_4 = io_a & _T_3; // @[alu.scala 15:20]
  assign _T_6 = io_cIn + io_b; // @[alu.scala 15:43]
  assign _T_7 = _T_4 & _T_6; // @[alu.scala 15:34]
  assign io_s = _T ^ io_cIn; // @[alu.scala 14:8]
  assign io_cOut = _T_7 & io_cIn; // @[alu.scala 15:11]
endmodule
