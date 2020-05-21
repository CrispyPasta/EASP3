module ALU(clk, control, in1, in2, out);

input clk;
input[1:0]  control;
input[7:0]  in1;
input[7:0]  in2;
output[7:0] out;

wire added[7:0];
wire subtr[7:0];
wire fetch[7:0];
reg temp[7:0];



always @(posedge clk)
begin
	
end



assign out = in1 + in2;		

endmodule