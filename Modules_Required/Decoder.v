module Decoder(decoder_in, decoder_out);

 input [1:0]decoder_in;
 output [3:0]decoder_out;
 reg [3:0]decoder_out;

 always@(decoder_in) begin
   case(decoder_in)
      2'b00:   begin decoder_out = 4'b0001; end
      2'b01:   begin decoder_out = 4'b0010; end
      2'b10:   begin decoder_out = 4'b0100; end
      2'b11:   begin decoder_out = 4'b1000; end
      default: begin decoder_out = 4'b0000; end
  endcase
 end
endmodule

