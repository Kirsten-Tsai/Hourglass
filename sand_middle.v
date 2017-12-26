module sand_middle (clk,BTN_S,visible_col,visible_row,col,row_1,row_2,middle_sand);

input clk,BTN_S;
input [10:0] row_1,row_2,col,visible_col,visible_row;
output reg middle_sand;


always @(posedge clk or posedge BTN_S) begin
	if (BTN_S)
		middle_sand <= 0;
	else if ((visible_col==col) && (visible_row >= row_1) && (visible_row<=row_2))
		middle_sand <= 1;
	else 
		middle_sand <= 0;
end

endmodule 