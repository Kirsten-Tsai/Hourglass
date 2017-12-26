module upper_side(ball_side,visible_col,visible_row,col,row,clk,BTN_S);

input clk,BTN_S;
input[10:0]row,col,visible_col,visible_row;
output reg ball_side;

wire upper_side;

assign upper_side = ( (((visible_col-col)*(visible_col-col) + (visible_row-row)*(visible_row-row)) <= 11025) & (visible_row >= row) );

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)ball_side<=1'b0;
	else if(upper_side)ball_side<=1'b1;
	else ball_side<=1'b0;
end

endmodule