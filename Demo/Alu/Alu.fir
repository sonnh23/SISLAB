;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.11.12, sbtVersion: 1.3.2
circuit Alu : 
  module Alu : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<8>, flip b : UInt<8>, flip fn : UInt<2>, y : UInt<16>}
    
    io.y <= UInt<1>("h00") @[alu.scala 13:9]
    node _T = eq(UInt<1>("h00"), io.fn) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      node _T_1 = add(io.a, io.b) @[alu.scala 15:29]
      node _T_2 = tail(_T_1, 1) @[alu.scala 15:29]
      io.y <= _T_2 @[alu.scala 15:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_3 = eq(UInt<1>("h01"), io.fn) @[Conditional.scala 37:30]
      when _T_3 : @[Conditional.scala 39:67]
        node _T_4 = sub(io.a, io.b) @[alu.scala 16:29]
        node _T_5 = tail(_T_4, 1) @[alu.scala 16:29]
        io.y <= _T_5 @[alu.scala 16:21]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_6 = eq(UInt<2>("h02"), io.fn) @[Conditional.scala 37:30]
        when _T_6 : @[Conditional.scala 39:67]
          node _T_7 = div(io.a, io.b) @[alu.scala 17:29]
          io.y <= _T_7 @[alu.scala 17:21]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_8 = eq(UInt<2>("h03"), io.fn) @[Conditional.scala 37:30]
          when _T_8 : @[Conditional.scala 39:67]
            node _T_9 = mul(io.a, io.b) @[alu.scala 18:29]
            io.y <= _T_9 @[alu.scala 18:21]
            skip @[Conditional.scala 39:67]
    
