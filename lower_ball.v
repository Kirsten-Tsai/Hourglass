module lower_ball(ball_in,visible_col,visible_row,col,row,clk,BTN_S);

input clk,BTN_S;
input[10:0]row,col,visible_col,visible_row;
output reg ball_in;

wire lower_side,lower_in;

assign lower_in = ( (((visible_col-col)*(visible_col-col) + (visible_row-row)*(visible_row-row)) <= 10000) & (visible_row <= row) );

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)ball_in<=1'b0;
	else if(lower_in)ball_in<=1'b1;
	else ball_in<=1'b0;
end

endmodule