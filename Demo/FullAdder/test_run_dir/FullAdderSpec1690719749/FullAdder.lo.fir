circuit FullAdder :
  module FullAdder :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_cIn : UInt<1>
    output io_s : UInt<1>
    output io_cOut : UInt<1>
  
    node _T = xor(io_a, io_b) @[FullAdder.scala 14:19]
    node _T_1 = xor(_T, io_cIn) @[FullAdder.scala 14:27]
    node _T_2 = and(io_a, io_b) @[FullAdder.scala 15:22]
    node _T_3 = and(io_a, io_cIn) @[FullAdder.scala 15:38]
    node _T_4 = add(_T_2, _T_3) @[FullAdder.scala 15:30]
    node _T_5 = tail(_T_4, 1) @[FullAdder.scala 15:30]
    node _T_6 = and(io_b, io_cIn) @[FullAdder.scala 15:56]
    node _T_7 = add(_T_5, _T_6) @[FullAdder.scala 15:48]
    node _T_8 = tail(_T_7, 1) @[FullAdder.scala 15:48]
    io_s <= _T_1 @[FullAdder.scala 14:10]
    io_cOut <= _T_8 @[FullAdder.scala 15:13]
