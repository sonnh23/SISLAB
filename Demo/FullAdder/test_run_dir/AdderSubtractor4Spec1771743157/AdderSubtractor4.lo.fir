circuit AdderSubtractor4 :
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

  module AdderSubtractor4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<4>
    input io_b : UInt<4>
    input io_cIn : UInt<1>
    input io_fn : UInt<1>
    output io_s : UInt<4>
    output io_cOut : UInt<1>
  
    inst FA0 of FullAdder @[AdderSubtractor4.scala 15:19]
    inst FA1 of FullAdder @[AdderSubtractor4.scala 16:19]
    inst FA2 of FullAdder @[AdderSubtractor4.scala 17:19]
    inst FA3 of FullAdder @[AdderSubtractor4.scala 18:19]
    node _T = bits(io_a, 0, 0) @[AdderSubtractor4.scala 22:19]
    node _T_1 = bits(io_b, 0, 0) @[AdderSubtractor4.scala 23:19]
    node _T_2 = xor(_T_1, io_fn) @[AdderSubtractor4.scala 23:23]
    node _T_3 = bits(io_a, 1, 1) @[AdderSubtractor4.scala 26:19]
    node _T_4 = bits(io_b, 1, 1) @[AdderSubtractor4.scala 27:19]
    node _T_5 = xor(_T_4, io_fn) @[AdderSubtractor4.scala 27:23]
    node _T_6 = bits(io_a, 2, 2) @[AdderSubtractor4.scala 30:19]
    node _T_7 = bits(io_b, 2, 2) @[AdderSubtractor4.scala 31:19]
    node _T_8 = xor(_T_7, io_fn) @[AdderSubtractor4.scala 31:23]
    node _T_9 = bits(io_a, 3, 3) @[AdderSubtractor4.scala 34:19]
    node _T_10 = bits(io_b, 3, 3) @[AdderSubtractor4.scala 35:19]
    node _T_11 = xor(_T_10, io_fn) @[AdderSubtractor4.scala 35:23]
    node _T_12 = cat(FA1.io_s, FA0.io_s) @[Cat.scala 29:58]
    node _T_13 = cat(FA3.io_s, FA2.io_s) @[Cat.scala 29:58]
    node output = cat(_T_13, _T_12) @[Cat.scala 29:58]
    io_s <= output @[AdderSubtractor4.scala 38:8]
    io_cOut <= FA3.io_cOut @[AdderSubtractor4.scala 36:11]
    FA0.clock <= clock
    FA0.reset <= reset
    FA0.io_a <= _T @[AdderSubtractor4.scala 22:12]
    FA0.io_b <= _T_2 @[AdderSubtractor4.scala 23:12]
    FA0.io_cIn <= io_fn @[AdderSubtractor4.scala 21:14]
    FA1.clock <= clock
    FA1.reset <= reset
    FA1.io_a <= _T_3 @[AdderSubtractor4.scala 26:12]
    FA1.io_b <= _T_5 @[AdderSubtractor4.scala 27:12]
    FA1.io_cIn <= FA0.io_cOut @[AdderSubtractor4.scala 25:14]
    FA2.clock <= clock
    FA2.reset <= reset
    FA2.io_a <= _T_6 @[AdderSubtractor4.scala 30:12]
    FA2.io_b <= _T_8 @[AdderSubtractor4.scala 31:12]
    FA2.io_cIn <= FA1.io_cOut @[AdderSubtractor4.scala 29:14]
    FA3.clock <= clock
    FA3.reset <= reset
    FA3.io_a <= _T_9 @[AdderSubtractor4.scala 34:12]
    FA3.io_b <= _T_11 @[AdderSubtractor4.scala 35:12]
    FA3.io_cIn <= FA2.io_cOut @[AdderSubtractor4.scala 33:14]
