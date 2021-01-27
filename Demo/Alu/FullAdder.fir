;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit FullAdder : 
  module FullAdder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<8>, flip b : UInt<8>, flip cIn : UInt<8>, s : UInt<8>, cOut : UInt<8>}
    
    node _T = xor(io.a, io.b) @[alu.scala 14:16]
    node _T_1 = xor(_T, io.cIn) @[alu.scala 14:23]
    io.s <= _T_1 @[alu.scala 14:8]
    node _T_2 = add(io.b, io.a) @[alu.scala 15:27]
    node _T_3 = tail(_T_2, 1) @[alu.scala 15:27]
    node _T_4 = and(io.a, _T_3) @[alu.scala 15:20]
    node _T_5 = add(io.cIn, io.b) @[alu.scala 15:43]
    node _T_6 = tail(_T_5, 1) @[alu.scala 15:43]
    node _T_7 = and(_T_4, _T_6) @[alu.scala 15:34]
    node _T_8 = and(_T_7, io.cIn) @[alu.scala 15:50]
    io.cOut <= _T_8 @[alu.scala 15:11]
    
