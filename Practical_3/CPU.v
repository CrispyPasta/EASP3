module CPU ( MAR_value, MBR_value, clk);

output [7:0] MAR_value;
input [7:0] MBR_value;
input clk;

D0		my_D0(data_in, data_out);
IR		my_IR(data_in, data_out);
MAR	my_MAR(data_in, data_out);
MBR	my_MBR(data_in, data_out);
PC		my_PC(data_in, data_out);
ALU	my_ALU(data_in, operation, data_out);

endmodule