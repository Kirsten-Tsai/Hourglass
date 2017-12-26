module lower_sand(sand,visible_col,visible_row,row,ori_col,ori_row,clk,BTN_S);

input BTN_S,clk;
input[10:0]visible_col,visible_row,row,ori_col,ori_row;
output reg sand;

wire is_sand;

assign is_sand = ( ((visible_col-ori_col)*(visible_col-ori_col) + (visible_row-ori_row)*(visible_row-ori_row) <= 10000) & (visible_row >= ori_row - 68) & (visible_row <= ori_row)& (visible_row >= row) );

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)sand<=1'b0;
	else if(is_sand)sand<=1'b1;
	else sand<=1'b0;
end

endmodule