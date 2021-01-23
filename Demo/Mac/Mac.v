module Mac(
  input         clock,
  input         reset,
  input  [7:0]  io_a,
  input  [7:0]  io_b,
  output [15:0] io_data_out
);
  reg [15:0] reg_; // @[Mac.scala 12:20]
  reg [31:0] _RAND_0;
  wire [15:0] _T; // @[Mac.scala 14:21]
  wire [15:0] _T_2; // @[Mac.scala 14:14]
  assign _T = io_a * io_b; // @[Mac.scala 14:21]
  assign _T_2 = reg_ + _T; // @[Mac.scala 14:14]
  assign io_data_out = reg_; // @[Mac.scala 15:15]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_ = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_ <= 16'h0;
    end else begin
      reg_ <= _T_2;
    end
  end
endmodule
