;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit FullAdder : 
  module FullAdder : 
    input clock : Clock
    input reset : UInt<1>
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
    
