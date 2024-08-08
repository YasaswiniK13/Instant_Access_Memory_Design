module TriState_Buffer#(parameter N=2)(data_in, enable, data_out);

  input [7:0]data_in;
  input enable;
  output [7:0]data_out;
  reg [7:0]data_out;

  always@(*) begin
  
  if(enable==1'b1) begin
    data_out = data_in;
  end
  else begin
     data_out = 8'bz;
  end
 end
endmodule

