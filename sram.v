module sram(
  input clk,
  input [3:0] addr,
  input [7:0] data_in,
  input wr,
  output reg [7:0] data_out);
  reg [7:0] mem [15:0];
  always@(posedge clk) begin
    if(wr) begin
      mem[addr]=data_in;
    end
    else begin
      data_out = mem[addr];
    end
  end
endmodule
