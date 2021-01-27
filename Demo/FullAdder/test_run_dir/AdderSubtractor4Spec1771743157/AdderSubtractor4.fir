;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit AdderSubtractor4 : 
  module FullAdder : 
    input clock : Clock
    input reset : Reset
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip cIn : UInt<1>, s : UInt<1>, cOut : UInt<1>}
    
    node _T = xor(io.a, io.b) @[FullAdder.scala 14:19]
    node _T_1 = xor(_T, io.cIn) @[FullAdder.scala 14:27]
    io.s <= _T_1 @[FullAdder.scala 14:10]
    node _T_2 = and(io.a, io.b) @[FullAdder.scala 15:22]
    node _T_3 = and(io.a, io.cIn) @[FullAdder.scala 15:38]
    node _T_4 = add(_T_2, _T_3) @[FullAdder.scala 15:30]
    node _T_5 = tail(_T_4, 1) @[FullAdder.scala 15:30]
    node _T_6 = and(io.b, io.cIn) @[FullAdder.scala 15:56]
    node _T_7 = add(_T_5, _T_6) @[FullAdder.scala 15:48]
    node _T_8 = tail(_T_7, 1) @[FullAdder.scala 15:48]
    io.cOut <= _T_8 @[FullAdder.scala 15:13]
    
  module FullAdder_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip cIn : UInt<1>, s : UInt<1>, cOut : UInt<1>}
    
    node _T = xor(io.a, io.b) @[FullAdder.scala 14:19]
    node _T_1 = xor(_T, io.cIn) @[FullAdder.scala 14:27]
    io.s <= _T_1 @[FullAdder.scala 14:10]
    node _T_2 = and(io.a, io.b) @[FullAdder.scala 15:22]
    node _T_3 = and(io.a, io.cIn) @[FullAdder.scala 15:38]
    node _T_4 = add(_T_2, _T_3) @[FullAdder.scala 15:30]
    node _T_5 = tail(_T_4, 1) @[FullAdder.scala 15:30]
    node _T_6 = and(io.b, io.cIn) @[FullAdder.scala 15:56]
    node _T_7 = add(_T_5, _T_6) @[FullAdder.scala 15:48]
    node _T_8 = tail(_T_7, 1) @[FullAdder.scala 15:48]
    io.cOut <= _T_8 @[FullAdder.scala 15:13]
    
  module FullAdder_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip cIn : UInt<1>, s : UInt<1>, cOut : UInt<1>}
    
    node _T = xor(io.a, io.b) @[FullAdder.scala 14:19]
    node _T_1 = xor(_T, io.cIn) @[FullAdder.scala 14:27]
    io.s <= _T_1 @[FullAdder.scala 14:10]
    node _T_2 = and(io.a, io.b) @[FullAdder.scala 15:22]
    node _T_3 = and(io.a, io.cIn) @[FullAdder.scala 15:38]
    node _T_4 = add(_T_2, _T_3) @[FullAdder.scala 15:30]
    node _T_5 = tail(_T_4, 1) @[FullAdder.scala 15:30]
    node _T_6 = and(io.b, io.cIn) @[FullAdder.scala 15:56]
    node _T_7 = add(_T_5, _T_6) @[FullAdder.scala 15:48]
    node _T_8 = tail(_T_7, 1) @[FullAdder.scala 15:48]
    io.cOut <= _T_8 @[FullAdder.scala 15:13]
    
  module FullAdder_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip cIn : UInt<1>, s : UInt<1>, cOut : UInt<1>}
    
    node _T = xor(io.a, io.b) @[FullAdder.scala 14:19]
    node _T_1 = xor(_T, io.cIn) @[FullAdder.scala 14:27]
    io.s <= _T_1 @[FullAdder.scala 14:10]
    node _T_2 = and(io.a, io.b) @[FullAdder.scala 15:22]
    node _T_3 = and(io.a, io.cIn) @[FullAdder.scala 15:38]
    node _T_4 = add(_T_2, _T_3) @[FullAdder.scala 15:30]
    node _T_5 = tail(_T_4, 1) @[FullAdder.scala 15:30]
    node _T_6 = and(io.b, io.cIn) @[FullAdder.scala 15:56]
    node _T_7 = add(_T_5, _T_6) @[FullAdder.scala 15:48]
    node _T_8 = tail(_T_7, 1) @[FullAdder.scala 15:48]
    io.cOut <= _T_8 @[FullAdder.scala 15:13]
    
  module AdderSubtractor4 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<4>, flip b : UInt<4>, flip cIn : UInt<1>, flip fn : UInt<1>, s : UInt<4>, cOut : UInt<1>}
    
    inst FA0 of FullAdder @[AdderSubtractor4.scala 15:19]
    FA0.clock <= clock
    FA0.reset <= reset
    inst FA1 of FullAdder_1 @[AdderSubtractor4.scala 16:19]
    FA1.clock <= clock
    FA1.reset <= reset
    inst FA2 of FullAdder_2 @[AdderSubtractor4.scala 17:19]
    FA2.clock <= clock
    FA2.reset <= reset
    inst FA3 of FullAdder_3 @[AdderSubtractor4.scala 18:19]
    FA3.clock <= clock
    FA3.reset <= reset
    FA0.io.cIn <= io.fn @[AdderSubtractor4.scala 21:14]
    node _T = bits(io.a, 0, 0) @[AdderSubtractor4.scala 22:19]
    FA0.io.a <= _T @[AdderSubtractor4.scala 22:12]
    node _T_1 = bits(io.b, 0, 0) @[AdderSubtractor4.scala 23:19]
    node _T_2 = xor(_T_1, io.fn) @[AdderSubtractor4.scala 23:23]
    FA0.io.b <= _T_2 @[AdderSubtractor4.scala 23:12]
    FA1.io.cIn <= FA0.io.cOut @[AdderSubtractor4.scala 25:14]
    node _T_3 = bits(io.a, 1, 1) @[AdderSubtractor4.scala 26:19]
    FA1.io.a <= _T_3 @[AdderSubtractor4.scala 26:12]
    node _T_4 = bits(io.b, 1, 1) @[AdderSubtractor4.scala 27:19]
    node _T_5 = xor(_T_4, io.fn) @[AdderSubtractor4.scala 27:23]
    FA1.io.b <= _T_5 @[AdderSubtractor4.scala 27:12]
    FA2.io.cIn <= FA1.io.cOut @[AdderSubtractor4.scala 29:14]
    node _T_6 = bits(io.a, 2, 2) @[AdderSubtractor4.scala 30:19]
    FA2.io.a <= _T_6 @[AdderSubtractor4.scala 30:12]
    node _T_7 = bits(io.b, 2, 2) @[AdderSubtractor4.scala 31:19]
    node _T_8 = xor(_T_7, io.fn) @[AdderSubtractor4.scala 31:23]
    FA2.io.b <= _T_8 @[AdderSubtractor4.scala 31:12]
    FA3.io.cIn <= FA2.io.cOut @[AdderSubtractor4.scala 33:14]
    node _T_9 = bits(io.a, 3, 3) @[AdderSubtractor4.scala 34:19]
    FA3.io.a <= _T_9 @[AdderSubtractor4.scala 34:12]
    node _T_10 = bits(io.b, 3, 3) @[AdderSubtractor4.scala 35:19]
    node _T_11 = xor(_T_10, io.fn) @[AdderSubtractor4.scala 35:23]
    FA3.io.b <= _T_11 @[AdderSubtractor4.scala 35:12]
    io.cOut <= FA3.io.cOut @[AdderSubtractor4.scala 36:11]
    node _T_12 = cat(FA1.io.s, FA0.io.s) @[Cat.scala 29:58]
    node _T_13 = cat(FA3.io.s, FA2.io.s) @[Cat.scala 29:58]
    node output = cat(_T_13, _T_12) @[Cat.scala 29:58]
    io.s <= output @[AdderSubtractor4.scala 38:8]
    
