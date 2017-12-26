`timescale 1ns / 1ps

`include "upper_ball.v"
`include "lower_ball.v"
`include "upper_side.v"
`include "lower_side.v"
`include "bottle_brick.v"
`include "bottle_wood.v"
`include "lower_sand.v"
`include "sand_middle.v"
`include "gameover.v"
`include "keyboard.v"
`include "one.v"
`include "two.v"
`include "three.v"
`include "four.v"
`include "five.v"
`include "six.v"
`include "seven.v"
`include "eight.v"
`include "nine.v"
`include "zero.v"
`include "star.v"


module hourglass(hsync,vsync,RGB,clk,kclk,kdata,BTN_S,BTN_N);

input BTN_S,BTN_N,kdata,kclk,clk;
output hsync,vsync;
output reg [2:0]RGB;
wire visible,left,right,G,A,M,E,O,V,E2,R;
reg [10:0]pixel_col,pixel_row;
wire [10:0]visible_col,visible_row;
reg [25:0]cnt,neck_cnt;
wire upper_side,upper_in,lower_side,lower_in,upper_wood,lower_wood,neck_side,neck_in,sand_1,sand_2,mid_sand;
reg [10:0]up_row,up_wide,ori_wide,wide_cnt,neck_up_row,neck_down_row;
reg [11:0]down_row,down_wide,ori_wide_down,wide_cnt_down;
reg flag,game,over,left_flag,right_flag;

reg[8:0]left_cnt,right_cnt;
reg[3:0]left_score1,left_score2,left_score3;
wire left3_0,left3_1,left3_2,left3_3,left3_4,left3_5,left3_6,left3_7,left3_8,left3_9;
wire left2_0,left2_1,left2_2,left2_3,left2_4,left2_5,left2_6,left2_7,left2_8,left2_9;
wire left1_0,left1_1,left1_2,left1_3,left1_4,left1_5,left1_6,left1_7,left1_8,left1_9;

reg[3:0]right_score1,right_score2,right_score3;
wire right3_0,right3_1,right3_2,right3_3,right3_4,right3_5,right3_6,right3_7,right3_8,right3_9;
wire right2_0,right2_1,right2_2,right2_3,right2_4,right2_5,right2_6,right2_7,right2_8,right2_9;
wire right1_0,right1_1,right1_2,right1_3,right1_4,right1_5,right1_6,right1_7,right1_8,right1_9;

//wire left_w,left_i,left_n,right_w,right_i,right_n;
wire star_left,star_right;

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)pixel_col<=0;
	else if(pixel_col==1039)pixel_col<=0;
	else pixel_col<=pixel_col+1;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)pixel_row<=0;
	else if(pixel_row==665)pixel_row<=0;
	else if(pixel_col==1039)pixel_row<=pixel_row+1;
	else pixel_row<=pixel_row;
end

assign hsync  = ~( (pixel_col>=919) & (pixel_col<1039) );
assign vsync  = ~( (pixel_row>=659) & (pixel_row<665) );
assign visible=  ( (pixel_col>=104) & (pixel_col<904) & (pixel_row>=23) & (pixel_row<623) );
assign visible_col = pixel_col - 104;
assign visible_row = pixel_row - 23;
keyboard k1(left,right,clk,kclk,kdata);

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)RGB<=3'b000;
	else if(visible)begin
		if(over)begin
			if(G||A||M||E||O||V||E2||R)RGB<=3'b100;
			else if(((left_cnt>right_cnt) && star_left) || ((right_cnt>left_cnt) && star_right))RGB<=3'b110;
			else if((left_score3==0&&left3_0)||(left_score3==1&&left3_1)||(left_score3==2&&left3_2)||
					  (left_score3==3&&left3_3)||(left_score3==4&&left3_4)||(left_score3==5&&left3_5)||
					  (left_score3==6&&left3_6)||(left_score3==7&&left3_7)||(left_score3==8&&left3_8)||(left_score3==9&&left3_9))RGB<=3'b011;
			else if((left_score2==0&&left2_0)||(left_score2==1&&left2_1)||(left_score2==2&&left2_2)||
					  (left_score2==3&&left2_3)||(left_score2==4&&left2_4)||(left_score2==5&&left2_5)||
					  (left_score2==6&&left2_6)||(left_score2==7&&left2_7)||(left_score2==8&&left2_8)||(left_score2==9&&left2_9))RGB<=3'b011;
			else if((left_score1==0&&left1_0)||(left_score1==1&&left1_1)||(left_score1==2&&left1_2)||
					  (left_score1==3&&left1_3)||(left_score1==4&&left1_4)||(left_score1==5&&left1_5)||
					  (left_score1==6&&left1_6)||(left_score1==7&&left1_7)||(left_score1==8&&left1_8)||(left_score1==9&&left1_9))RGB<=3'b011;
			else if((right_score3==0&&right3_0)||(right_score3==1&&right3_1)||(right_score3==2&&right3_2)||
					  (right_score3==3&&right3_3)||(right_score3==4&&right3_4)||(right_score3==5&&right3_5)||
					  (right_score3==6&&right3_6)||(right_score3==7&&right3_7)||(right_score3==8&&right3_8)||(right_score3==9&&right3_9))RGB<=3'b011;
			else if((right_score2==0&&right2_0)||(right_score2==1&&right2_1)||(right_score2==2&&right2_2)||
					  (right_score2==3&&right2_3)||(right_score2==4&&right2_4)||(right_score2==5&&right2_5)||
					  (right_score2==6&&right2_6)||(right_score2==7&&right2_7)||(right_score2==8&&right2_8)||(right_score2==9&&right2_9))RGB<=3'b011;
			else if((right_score1==0&&right1_0)||(right_score1==1&&right1_1)||(right_score1==2&&right1_2)||
					  (right_score1==3&&right1_3)||(right_score1==4&&right1_4)||(right_score1==5&&right1_5)||
					  (right_score1==6&&right1_6)||(right_score1==7&&right1_7)||(right_score1==8&&right1_8)||(right_score1==9&&right1_9))RGB<=3'b011;
			else RGB<=3'b000;
		end
		else if((left_score3==0&&left3_0)||(left_score3==1&&left3_1)||(left_score3==2&&left3_2)||
				  (left_score3==3&&left3_3)||(left_score3==4&&left3_4)||(left_score3==5&&left3_5)||
				  (left_score3==6&&left3_6)||(left_score3==7&&left3_7)||(left_score3==8&&left3_8)||(left_score3==9&&left3_9))RGB<=3'b011;
		else if((left_score2==0&&left2_0)||(left_score2==1&&left2_1)||(left_score2==2&&left2_2)||
				  (left_score2==3&&left2_3)||(left_score2==4&&left2_4)||(left_score2==5&&left2_5)||
				  (left_score2==6&&left2_6)||(left_score2==7&&left2_7)||(left_score2==8&&left2_8)||(left_score2==9&&left2_9))RGB<=3'b011;
		else if((left_score1==0&&left1_0)||(left_score1==1&&left1_1)||(left_score1==2&&left1_2)||
				  (left_score1==3&&left1_3)||(left_score1==4&&left1_4)||(left_score1==5&&left1_5)||
				  (left_score1==6&&left1_6)||(left_score1==7&&left1_7)||(left_score1==8&&left1_8)||(left_score1==9&&left1_9))RGB<=3'b011;
		else if((right_score3==0&&right3_0)||(right_score3==1&&right3_1)||(right_score3==2&&right3_2)||
				  (right_score3==3&&right3_3)||(right_score3==4&&right3_4)||(right_score3==5&&right3_5)||
				  (right_score3==6&&right3_6)||(right_score3==7&&right3_7)||(right_score3==8&&right3_8)||(right_score3==9&&right3_9))RGB<=3'b011;
		else if((right_score2==0&&right2_0)||(right_score2==1&&right2_1)||(right_score2==2&&right2_2)||
				  (right_score2==3&&right2_3)||(right_score2==4&&right2_4)||(right_score2==5&&right2_5)||
				  (right_score2==6&&right2_6)||(right_score2==7&&right2_7)||(right_score2==8&&right2_8)||(right_score2==9&&right2_9))RGB<=3'b011;
		else if((right_score1==0&&right1_0)||(right_score1==1&&right1_1)||(right_score1==2&&right1_2)||
				  (right_score1==3&&right1_3)||(right_score1==4&&right1_4)||(right_score1==5&&right1_5)||
				  (right_score1==6&&right1_6)||(right_score1==7&&right1_7)||(right_score1==8&&right1_8)||(right_score1==9&&right1_9))RGB<=3'b011;
		else if(sand_1 || sand_2 || mid_sand)RGB<=3'b001;
		else if(upper_in || lower_in || neck_in)RGB<=3'b111;
		else if(upper_side || lower_side || neck_side)RGB<=3'b000;
		else if(upper_wood || lower_wood)RGB<=3'b000;
		else RGB<=3'b111;
	end
	else RGB<=3'b000;
end

bottle_wood BROWN1 (clk,BTN_S,visible_col,visible_row,280,150,upper_wood);
upper_side u1(upper_side,visible_col,visible_row,400,195,clk,BTN_S);
upper_ball u2(upper_in,visible_col,visible_row,400,195,clk,BTN_S);
bottle_brick BRICK(clk,BTN_S,visible_col,visible_row,400,295,neck_side,neck_in);
lower_side l1(lower_side,visible_col,visible_row,400,405,clk,BTN_S);
lower_ball l2(lower_in,visible_col,visible_row,400,405,clk,BTN_S);
bottle_wood BROWN2 (clk,BTN_S,visible_col,visible_row,280,406,lower_wood);

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)cnt<=0;
	else if(cnt<10000)cnt<=cnt+1;
	else if(cnt==10000)cnt<=0;
	else cnt<=cnt;
end

upper_sand s1(sand_1,visible_col,visible_row,up_row,400,195,clk,BTN_S);
lower_sand s2(sand_2,visible_col,visible_row,down_row,400,405,clk,BTN_S);
sand_middle MID(clk,BTN_S,visible_col,visible_row,400,neck_up_row,neck_down_row,mid_sand);

always @(posedge clk or posedge BTN_S) begin
	if (BTN_S)
		down_row <= 406;
	else if (game && down_wide>=2400 && down_row > 330) 
		down_row <= down_row - 1;
	else
		down_row <= down_row;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)down_wide<=ori_wide_down;
	else if(game && down_wide>=2400)down_wide<=ori_wide_down; 
	else if(game && flag && (cnt==5000||cnt==10000))down_wide<=down_wide+1;
	else down_wide<=down_wide;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)ori_wide_down<=0;
	else if(game && down_wide>=2400)ori_wide_down<=ori_wide_down+(wide_cnt_down*(wide_cnt_down)); 
	else ori_wide_down<=ori_wide_down;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)wide_cnt_down<=0;
	else if(game && down_wide>=2400)wide_cnt_down<=wide_cnt_down+1;
	else wide_cnt_down<=wide_cnt_down;
end

////////////=========================

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)up_row<=220;
	else if(game && up_wide<=0 && up_row<295)up_row<=up_row+1;
	else up_row<=up_row;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)up_wide<=ori_wide;
	else if(game && up_wide<=0)up_wide<=ori_wide; 
	else if(game && (cnt==5000||cnt==10000))up_wide<=up_wide-1; 
	else up_wide<=up_wide;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)ori_wide<=2000;
	else if(game && up_wide<=0)ori_wide<=ori_wide-wide_cnt*wide_cnt;
	else ori_wide<=ori_wide;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)wide_cnt<=0;
	else if(game && up_wide<=0)wide_cnt<=wide_cnt+1;
	else wide_cnt<=wide_cnt;
end

////////////=========================

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)neck_cnt<=0;
	else if(game && cnt==10000 && neck_cnt<100)neck_cnt<=neck_cnt+1;
	else if(game && neck_cnt==100)neck_cnt<=0;
	else neck_cnt<=neck_cnt;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)neck_up_row<=up_row;
	else if(!neck_up_row)neck_up_row<=up_row;
	else if(game && up_row<295)neck_up_row<=up_row;
	else if(game && up_row>=295 && neck_up_row<=down_row && neck_cnt==100)neck_up_row<=neck_up_row+1;
	else neck_up_row<=neck_up_row;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)neck_down_row<=295;
	else if(!neck_down_row)neck_down_row<=295;
	else if(game && flag)neck_down_row<=down_row-1;
	else if(game && neck_down_row<406 && neck_cnt==100)neck_down_row<=neck_down_row+1;
	else neck_down_row<=neck_down_row;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)flag<=0;
	else if(game && neck_down_row==405)flag<=1;
	else flag<=flag;
end

////////////=========================

gameover g1(G,A,M,E,O,V,E2,R,clk,pixel_row,pixel_col);

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)left_cnt<=0;
	else if(game && left==left_flag && left==1)left_cnt<=left_cnt+1;
	else left_cnt<=left_cnt;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)right_cnt<=0;
	else if(game && right==right_flag && right==1)right_cnt<=right_cnt+1;
	else right_cnt<=right_cnt;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)game<=0;
	else if(BTN_N)game<=1;
	else if(neck_up_row==down_row+1)game<=0;
	else game<=game;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)over<=0;
	else if(neck_up_row==down_row+1)over<=1;
	else over<=over;
end

zero left30(clk,BTN_S,visible_col,visible_row,120,40,left3_0);
one left31(clk,BTN_S,visible_col,visible_row,120,40,left3_1);
two left32(clk,BTN_S,visible_col,visible_row,120,40,left3_2);
three left33(clk,BTN_S,visible_col,visible_row,120,40,left3_3);
four left34(clk,BTN_S,visible_col,visible_row,120,40,left3_4);
five left35(clk,BTN_S,visible_col,visible_row,120,40,left3_5);
six left36(clk,BTN_S,visible_col,visible_row,120,40,left3_6);
seven left37(clk,BTN_S,visible_col,visible_row,120,40,left3_7);
eight left38(clk,BTN_S,visible_col,visible_row,120,40,left3_8);
nine left39(clk,BTN_S,visible_col,visible_row,120,40,left3_9);

zero left20(clk,BTN_S,visible_col,visible_row,80,40,left2_0);
one left21(clk,BTN_S,visible_col,visible_row,80,40,left2_1);
two left22(clk,BTN_S,visible_col,visible_row,80,40,left2_2);
three left23(clk,BTN_S,visible_col,visible_row,80,40,left2_3);
four left24(clk,BTN_S,visible_col,visible_row,80,40,left2_4);
five left25(clk,BTN_S,visible_col,visible_row,80,40,left2_5);
six left26(clk,BTN_S,visible_col,visible_row,80,40,left2_6);
seven left27(clk,BTN_S,visible_col,visible_row,80,40,left2_7);
eight left28(clk,BTN_S,visible_col,visible_row,80,40,left2_8);
nine left29(clk,BTN_S,visible_col,visible_row,80,40,left2_9);

zero left10(clk,BTN_S,visible_col,visible_row,40,40,left1_0);
one left11(clk,BTN_S,visible_col,visible_row,40,40,left1_1);
two left12(clk,BTN_S,visible_col,visible_row,40,40,left1_2);
three left13(clk,BTN_S,visible_col,visible_row,40,40,left1_3);
four left14(clk,BTN_S,visible_col,visible_row,40,40,left1_4);
five left15(clk,BTN_S,visible_col,visible_row,40,40,left1_5);
six left16(clk,BTN_S,visible_col,visible_row,40,40,left1_6);
seven left17(clk,BTN_S,visible_col,visible_row,40,40,left1_7);
eight left18(clk,BTN_S,visible_col,visible_row,40,40,left1_8);
nine left19(clk,BTN_S,visible_col,visible_row,40,40,left1_9);

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)left_score3<=0;
	else if(game && left==1 && left==left_flag && left_score3<9)left_score3<=left_score3+1;
	else if(left==1 && left==left_flag && left_score3==9)left_score3<=0;
	else left_score3<=left_score3;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)left_score2<=0;
	else if(game && left==1 && left==left_flag && left_score3==9)left_score2<=left_score2+1;
	else if(left==1 && left==left_flag && left_score2==9)left_score2<=0;
	else left_score2<=left_score2;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)left_score1<=0;
	else if(game && left==1 && left==left_flag && left_score2==9)left_score1<=left_score1+1;
	else if(left==1 && left==left_flag && left_score1==9)left_score1<=0;
	else left_score1<=left_score1;
end

zero right30(clk,BTN_S,visible_col,visible_row,720,40,right3_0);
one right31(clk,BTN_S,visible_col,visible_row,720,40,right3_1);
two right32(clk,BTN_S,visible_col,visible_row,720,40,right3_2);
three right33(clk,BTN_S,visible_col,visible_row,720,40,right3_3);
four right34(clk,BTN_S,visible_col,visible_row,720,40,right3_4);
five right35(clk,BTN_S,visible_col,visible_row,720,40,right3_5);
six right36(clk,BTN_S,visible_col,visible_row,720,40,right3_6);
seven right37(clk,BTN_S,visible_col,visible_row,720,40,right3_7);
eight right38(clk,BTN_S,visible_col,visible_row,720,40,right3_8);
nine right39(clk,BTN_S,visible_col,visible_row,720,40,right3_9);

zero right20(clk,BTN_S,visible_col,visible_row,680,40,right2_0);
one right21(clk,BTN_S,visible_col,visible_row,680,40,right2_1);
two right22(clk,BTN_S,visible_col,visible_row,680,40,right2_2);
three right23(clk,BTN_S,visible_col,visible_row,680,40,right2_3);
four right24(clk,BTN_S,visible_col,visible_row,680,40,right2_4);
five right25(clk,BTN_S,visible_col,visible_row,680,40,right2_5);
six right26(clk,BTN_S,visible_col,visible_row,680,40,right2_6);
seven right27(clk,BTN_S,visible_col,visible_row,680,40,right2_7);
eight right28(clk,BTN_S,visible_col,visible_row,680,40,right2_8);
nine right29(clk,BTN_S,visible_col,visible_row,680,40,right2_9);

zero right10(clk,BTN_S,visible_col,visible_row,640,40,right1_0);
one right11(clk,BTN_S,visible_col,visible_row,640,40,right1_1);
two right12(clk,BTN_S,visible_col,visible_row,640,40,right1_2);
three right13(clk,BTN_S,visible_col,visible_row,640,40,right1_3);
four right14(clk,BTN_S,visible_col,visible_row,640,40,right1_4);
five right15(clk,BTN_S,visible_col,visible_row,640,40,right1_5);
six right16(clk,BTN_S,visible_col,visible_row,640,40,right1_6);
seven right17(clk,BTN_S,visible_col,visible_row,640,40,right1_7);
eight right18(clk,BTN_S,visible_col,visible_row,640,40,right1_8);
nine right19(clk,BTN_S,visible_col,visible_row,640,40,right1_9);

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)right_score3<=0;
	else if(game && right==1 && right==right_flag && right_score3<9)right_score3<=right_score3+1;
	else if(right==1 && right==right_flag && right_score3==9)right_score3<=0;
	else right_score3<=right_score3;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)right_score2<=0;
	else if(game && right==1 && right==right_flag && right_score3==9)right_score2<=right_score2+1;
	else if(right==1 && right==right_flag && right_score2==9)right_score2<=0;
	else right_score2<=right_score2;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)right_score1<=0;
	else if(game && right==1 && right==right_flag && right_score2==9)right_score1<=right_score1+1;
	else if(right==1 && right==right_flag && right_score1==9)right_score1<=0;
	else right_score1<=right_score1;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)left_flag<=!left;
	else if(game)left_flag<=!left;
	else left_flag<=left_flag;
end

always@(posedge clk or posedge BTN_S)begin
	if(BTN_S)right_flag<=!right;
	else if(game)right_flag<=!right;
	else right_flag<=right_flag;
end

star s_l(clk,BTN_S,visible_col,visible_row,40,300,star_left);
star s_r(clk,BTN_S,visible_col,visible_row,660,300,star_right);


endmodule
