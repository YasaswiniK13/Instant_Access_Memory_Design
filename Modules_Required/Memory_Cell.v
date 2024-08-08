module Memory_Cell#(parameter N=2)(Rd, Wr, column, data_in, row, data_out, enable);

  input Rd, Wr;
  input column, row;
  input [7:0]data_in;
  output [7:0]data_out;
  reg [7:0]data_out;
  output enable;
  reg enable;
  reg [7:0]data=8'bz;

  always@(*) begin

  if(column<2**N-1 & row<2**N-1) begin
    enable=1'b1;
    if(Wr==1) begin
       data=data_in;
    end
    if(Rd==1) begin
      data_out=data;
    end
  end   
 end
endmodule

         
