;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit Mac : 
  module Mac : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<8>, flip b : UInt<8>, data_out : UInt<16>}
    
    reg reg : UInt<16>, clock with : (reset => (reset, UInt<16>("h00"))) @[Mac.scala 12:20]
    node _T = mul(io.a, io.b) @[Mac.scala 14:21]
    node _T_1 = add(reg, _T) @[Mac.scala 14:14]
    node _T_2 = tail(_T_1, 1) @[Mac.scala 14:14]
    reg <= _T_2 @[Mac.scala 14:7]
    io.data_out <= reg @[Mac.scala 15:15]
    
