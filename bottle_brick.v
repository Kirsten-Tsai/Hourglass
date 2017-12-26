module bottle_brick (clk,BTN_S,visible_col,visible_row,col,row,neck_side,neck_in);

input clk,BTN_S;
input [10:0]visible_col,visible_row,col,row;
output reg neck_side,neck_in;

always @(posedge clk or posedge BTN_S) begin
	if (BTN_S)
		neck_side <= 0;
	else if (visible_row >= row && visible_row < row + 10 && visible_col >= col-5 && visible_col < col + 5)
		neck_side <= 1;
	else begin
		neck_side <= 0;
	end
end

always @(posedge clk or posedge BTN_S) begin
	if (BTN_S)
		neck_in <= 0;
	else if (visible_row >= row && visible_row < row + 10 && visible_col == col)
		neck_in <= 1;
	else begin
		neck_in <= 0;
	end

end
endmodule