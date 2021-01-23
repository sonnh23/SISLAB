circuit Alu :
  module Alu :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<8>
    input io_b : UInt<8>
    input io_fn : UInt<2>
    output io_y : UInt<16>
  
    node _T = eq(UInt<1>("h0"), io_fn) @[Conditional.scala 37:30]
    node _T_1 = add(io_a, io_b) @[alu.scala 15:29]
    node _T_2 = tail(_T_1, 1) @[alu.scala 15:29]
    node _T_3 = eq(UInt<1>("h1"), io_fn) @[Conditional.scala 37:30]
    node _T_4 = sub(io_a, io_b) @[alu.scala 16:29]
    node _T_5 = tail(_T_4, 1) @[alu.scala 16:29]
    node _T_6 = eq(UInt<2>("h2"), io_fn) @[Conditional.scala 37:30]
    node _T_7 = div(io_a, io_b) @[alu.scala 17:29]
    node _T_8 = eq(UInt<2>("h3"), io_fn) @[Conditional.scala 37:30]
    node _T_9 = mul(io_a, io_b) @[alu.scala 18:29]
    node _GEN_0 = mux(_T_8, _T_9, UInt<1>("h0")) @[Conditional.scala 39:67]
    node _GEN_1 = mux(_T_6, _T_7, _GEN_0) @[Conditional.scala 39:67]
    node _GEN_2 = mux(_T_3, _T_5, _GEN_1) @[Conditional.scala 39:67]
    node _GEN_3 = mux(_T, _T_2, _GEN_2) @[Conditional.scala 40:58]
    io_y <= _GEN_3 @[alu.scala 13:9 alu.scala 15:21 alu.scala 16:21 alu.scala 17:21 alu.scala 18:21]
