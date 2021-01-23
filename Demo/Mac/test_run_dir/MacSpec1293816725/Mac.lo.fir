circuit Mac :
  module Mac :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<8>
    input io_b : UInt<8>
    output io_data_out : UInt<16>
  
    reg reg : UInt<16>, clock with :
      reset => (UInt<1>("h0"), reg) @[Mac.scala 12:20]
    node _T = mul(io_a, io_b) @[Mac.scala 14:21]
    node _T_1 = add(reg, _T) @[Mac.scala 14:14]
    node _T_2 = tail(_T_1, 1) @[Mac.scala 14:14]
    io_data_out <= reg @[Mac.scala 15:15]
    reg <= mux(reset, UInt<16>("h0"), _T_2) @[Mac.scala 14:7]
