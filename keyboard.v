module keyboard(left,right,clk,kclk,kdata);

output reg left,right;
input clk,kclk,kdata;

reg C_state, N_state;
reg [21:0] key;
wire [1:0] check;

assign check[0]= key[1]^key[2]^key[3]^key[4]^key[5]^key[6]^key[7]^key[8]^key[9];
assign check[1]= key[12]^key[13]^key[14]^key[15]^key[16]^key[17]^key[18]^key[19]^key[20];

always @(posedge clk) begin
	C_state <= N_state;
	N_state <= kclk;
end

always @(posedge clk) begin
	left <= ((check[1] & (key[8:1]==8'he0)) & (check[0] & (key[19:12]==8'h6b))) ||
			((check[0] & (key[8:1]==8'he0)) & (check[1] & (key[19:12]==8'h6b))) ;
	right <= ((check[1] & (key[8:1]==8'he0)) & (check[0] & (key[19:12]==8'h74))) ||
			 ((check[0] & (key[8:1]==8'he0)) & (check[1] & (key[19:12]==8'h74))) ;    
end

always @(posedge clk) begin
	if  ({C_state,N_state}==2'b01)
		key <= {kdata,key[21:1]};
	else
		key <= key;
end

endmodule 