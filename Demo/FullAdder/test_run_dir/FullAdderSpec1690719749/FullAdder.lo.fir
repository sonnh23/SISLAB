circuit FullAdder :
  module FullAdder :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<8>
    input io_b : UInt<8>
    input io_cIn : UInt<8>
    output io_s : UInt<8>
    output io_cOut : UInt<8>

    node _T = xor(io_a, io_b) @[FullAdder.scala 14:16]
    node _T_1 = xor(_T, io_cIn) @[FullAdder.scala 14:23]
    node _T_2 = add(io_b, io_a) @[FullAdder.scala 15:27]
    node _T_3 = tail(_T_2, 1) @[FullAdder.scala 15:27]
    node _T_4 = and(io_a, _T_3) @[FullAdder.scala 15:20]
    node _T_5 = add(io_cIn, io_b) @[FullAdder.scala 15:43]
    node _T_6 = tail(_T_5, 1) @[FullAdder.scala 15:43]
    node _T_7 = and(_T_4, _T_6) @[FullAdder.scala 15:34]
    node _T_8 = and(_T_7, io_cIn) @[FullAdder.scala 15:50]
    io_s <= _T_1 @[FullAdder.scala 14:8]
    io_cOut <= _T_8 @[FullAdder.scala 15:11]