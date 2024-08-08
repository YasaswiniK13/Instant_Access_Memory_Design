module Memory_Design#(parameter N=2)(Data_in, addr, Wr, Rd, Data_out);

 input [7:0]Data_in;
 input [N-1:0]addr;
 input Wr, Rd;
 output [7:0]Data_out;
 wire [N-1:0]row=addr[N/2-1:0];
 wire [N-1:0]column=addr[N-1:N/2];
 wire enable;
 wire [2**N-1:0]row_decoder_output;
 wire [2**N-1:0]column_decoder_output;
 wire [7:0]data;

 generate
   genvar k;
   for(k=0; k<N; k=k+1) begin

 Decoder row_decoder(row, row_decoder_output);
 Decoder column_decoder(column, column_decoder_output);
 Memory_Cell #(.N(N))memory_cell(Rd, Wr, column_decoder_output, Data_in, row_decoder_output, data, enable);
 TriState_Buffer #(.N(N))TriStateBuffer(data, enable, Data_out);
 
end
endgenerate
endmodule

