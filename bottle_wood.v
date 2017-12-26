module bottle_wood(clk,BTN_S,visible_col,visible_row,col,row,wood);

input clk,BTN_S;
input [10:0]visible_col,visible_row,col,row;
output reg wood;

always @(posedge clk or posedge BTN_S) begin
	if (BTN_S) begin
		wood <= 0;
	end
	else if ( visible_row >= row && visible_row < row + 45 && visible_col >= col && visible_col < col + 240)
		wood <= 1;
	else begin
		wood <= 0;
	end
end

endmodule