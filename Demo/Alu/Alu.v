module Alu(
  input         clock,
  input         reset,
  input  [7:0]  io_a,
  input  [7:0]  io_b,
  input  [1:0]  io_fn,
  output [15:0] io_y
);
  wire  _T; // @[Conditional.scala 37:30]
  wire [7:0] _T_2; // @[alu.scala 15:29]
  wire  _T_3; // @[Conditional.scala 37:30]
  wire [7:0] _T_5; // @[alu.scala 16:29]
  wire  _T_6; // @[Conditional.scala 37:30]
  wire [7:0] _T_7; // @[alu.scala 17:29]
  wire  _T_8; // @[Conditional.scala 37:30]
  wire [15:0] _T_9; // @[alu.scala 18:29]
  wire [15:0] _GEN_0; // @[Conditional.scala 39:67]
  wire [15:0] _GEN_1; // @[Conditional.scala 39:67]
  wire [15:0] _GEN_2; // @[Conditional.scala 39:67]
  assign _T = 2'h0 == io_fn; // @[Conditional.scala 37:30]
  assign _T_2 = io_a + io_b; // @[alu.scala 15:29]
  assign _T_3 = 2'h1 == io_fn; // @[Conditional.scala 37:30]
  assign _T_5 = io_a - io_b; // @[alu.scala 16:29]
  assign _T_6 = 2'h2 == io_fn; // @[Conditional.scala 37:30]
  assign _T_7 = io_a / io_b; // @[alu.scala 17:29]
  assign _T_8 = 2'h3 == io_fn; // @[Conditional.scala 37:30]
  assign _T_9 = io_a * io_b; // @[alu.scala 18:29]
  assign _GEN_0 = _T_8 ? _T_9 : 16'h0; // @[Conditional.scala 39:67]
  assign _GEN_1 = _T_6 ? {{8'd0}, _T_7} : _GEN_0; // @[Conditional.scala 39:67]
  assign _GEN_2 = _T_3 ? {{8'd0}, _T_5} : _GEN_1; // @[Conditional.scala 39:67]
  assign io_y = _T ? {{8'd0}, _T_2} : _GEN_2; // @[alu.scala 13:9 alu.scala 15:21 alu.scala 16:21 alu.scala 17:21 alu.scala 18:21]
endmodule
