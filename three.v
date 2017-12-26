module three (clk,BTN_S,visible_col,visible_row,col,row,out);

input clk,BTN_S;
input [10:0]visible_col,visible_row,col,row;
output reg out;

wire [39:0] line_01,line_02,line_03,line_04,line_05,line_06,line_07,line_08,line_09,line_10;
wire [39:0] line_11,line_12,line_13,line_14,line_15,line_16,line_17,line_18,line_19,line_20;
wire [39:0] line_21,line_22,line_23,line_24,line_25,line_26,line_27;

assign line_01 = 40'b0000000001111111111111111111110000000000;
assign line_02 = 40'b0000011111111111111111111111111100000000;
assign line_03 = 40'b0000111111111111111111111111111111000000;
assign line_04 = 40'b0000111111111111111111111111111111100000;
assign line_05 = 40'b0000111111111111111111111111111111110000;
assign line_06 = 40'b0000111111000000000000111111111111110000;
assign line_07 = 40'b0000000000000000000000011111111111110000;
assign line_08 = 40'b0000000000000000000000011111111111110000;
assign line_09 = 40'b0000000000000000000000011111111111110000;
assign line_10 = 40'b0000000000000000000001111111111111100000;
assign line_11 = 40'b0000000000000000111111111111111111000000;
assign line_12 = 40'b0000000011111111111111111111111100000000;
assign line_13 = 40'b0000000111111111111111111111110000000000;
assign line_14 = 40'b0000000111111111111111111111111110000000;
assign line_15 = 40'b0000000011111111111111111111111111100000;
assign line_16 = 40'b0000000001111111111111111111111111111000;
assign line_17 = 40'b0000000000000000000000111111111111111100;
assign line_18 = 40'b0000000000000000000000001111111111111100;
assign line_19 = 40'b0000000000000000000000000111111111111100;
assign line_20 = 40'b0000000000000000000000000111111111111100;
assign line_21 = 40'b0000000000000000000000001111111111111100;
assign line_22 = 40'b0001111110000000000000111111111111111100;
assign line_23 = 40'b0001111111111111111111111111111111111000;
assign line_24 = 40'b0001111111111111111111111111111111110000;
assign line_25 = 40'b0001111111111111111111111111111111000000;
assign line_26 = 40'b0000111111111111111111111111111100000000;
assign line_27 = 40'b0000000011111111111111111111000000000000;

always @(posedge clk or posedge BTN_S) begin
	if (BTN_S)
		out <= 0;
	else begin
		case (visible_row)
			row+0:
				case(visible_col)
					col+0: out <= line_01[39];	  col+10: out <= line_01[29];	col+20: out <= line_01[19];  col+30: out <= line_01[9];
					col+1: out <= line_01[38];	  col+11: out <= line_01[28];	col+21: out <= line_01[18];  col+31: out <= line_01[8];
					col+2: out <= line_01[37];	  col+12: out <= line_01[27];	col+22: out <= line_01[17];  col+32: out <= line_01[7];
					col+3: out <= line_01[36];	  col+13: out <= line_01[26];	col+23: out <= line_01[16];  col+33: out <= line_01[6];
					col+4: out <= line_01[35];	  col+14: out <= line_01[25];	col+24: out <= line_01[15];  col+34: out <= line_01[5];
					col+5: out <= line_01[34];	  col+15: out <= line_01[24];	col+25: out <= line_01[14];  col+35: out <= line_01[4];
					col+6: out <= line_01[33];	  col+16: out <= line_01[23];	col+26: out <= line_01[13];  col+36: out <= line_01[3];
					col+7: out <= line_01[32];	  col+17: out <= line_01[22];	col+27: out <= line_01[12];  col+37: out <= line_01[2];
					col+8: out <= line_01[31];	  col+18: out <= line_01[21];	col+28: out <= line_01[11];  col+38: out <= line_01[1];
					col+9: out <= line_01[30];	  col+19: out <= line_01[20];	col+29: out <= line_01[10];  col+39: out <= line_01[0];
					default: out <= 0;
				endcase
			row+1:
				case(visible_col)
					col+0: out <= line_02[39];	  col+10: out <= line_02[29];	col+20: out <= line_02[19];  col+30: out <= line_02[9];
					col+1: out <= line_02[38];	  col+11: out <= line_02[28];	col+21: out <= line_02[18];  col+31: out <= line_02[8];
					col+2: out <= line_02[37];	  col+12: out <= line_02[27];	col+22: out <= line_02[17];  col+32: out <= line_02[7];
					col+3: out <= line_02[36];	  col+13: out <= line_02[26];	col+23: out <= line_02[16];  col+33: out <= line_02[6];
					col+4: out <= line_02[35];	  col+14: out <= line_02[25];	col+24: out <= line_02[15];  col+34: out <= line_02[5];
					col+5: out <= line_02[34];	  col+15: out <= line_02[24];	col+25: out <= line_02[14];  col+35: out <= line_02[4];
					col+6: out <= line_02[33];	  col+16: out <= line_02[23];	col+26: out <= line_02[13];  col+36: out <= line_02[3];
					col+7: out <= line_02[32];	  col+17: out <= line_02[22];	col+27: out <= line_02[12];  col+37: out <= line_02[2];
					col+8: out <= line_02[31];	  col+18: out <= line_02[21];	col+28: out <= line_02[11];  col+38: out <= line_02[1];
					col+9: out <= line_02[30];	  col+19: out <= line_02[20];	col+29: out <= line_02[10];  col+39: out <= line_02[0];
					default: out <= 0;
				endcase

			row+2:
				case(visible_col)
					col+0: out <= line_03[39];	  col+10: out <= line_03[29];	col+20: out <= line_03[19];  col+30: out <= line_03[9];
					col+1: out <= line_03[38];	  col+11: out <= line_03[28];	col+21: out <= line_03[18];  col+31: out <= line_03[8];
					col+2: out <= line_03[37];	  col+12: out <= line_03[27];	col+22: out <= line_03[17];  col+32: out <= line_03[7];
					col+3: out <= line_03[36];	  col+13: out <= line_03[26];	col+23: out <= line_03[16];  col+33: out <= line_03[6];
					col+4: out <= line_03[35];	  col+14: out <= line_03[25];	col+24: out <= line_03[15];  col+34: out <= line_03[5];
					col+5: out <= line_03[34];	  col+15: out <= line_03[24];	col+25: out <= line_03[14];  col+35: out <= line_03[4];
					col+6: out <= line_03[33];	  col+16: out <= line_03[23];	col+26: out <= line_03[13];  col+36: out <= line_03[3];
					col+7: out <= line_03[32];	  col+17: out <= line_03[22];	col+27: out <= line_03[12];  col+37: out <= line_03[2];
					col+8: out <= line_03[31];	  col+18: out <= line_03[21];	col+28: out <= line_03[11];  col+38: out <= line_03[1];
					col+9: out <= line_03[30];	  col+19: out <= line_03[20];	col+29: out <= line_03[10];  col+39: out <= line_03[0];
					default: out <= 0;
				endcase
			row+3:
				case(visible_col)
					col+0: out <= line_04[39];	  col+10: out <= line_04[29];	col+20: out <= line_04[19];  col+30: out <= line_04[9];
					col+1: out <= line_04[38];	  col+11: out <= line_04[28];	col+21: out <= line_04[18];  col+31: out <= line_04[8];
					col+2: out <= line_04[37];	  col+12: out <= line_04[27];	col+22: out <= line_04[17];  col+32: out <= line_04[7];
					col+3: out <= line_04[36];	  col+13: out <= line_04[26];	col+23: out <= line_04[16];  col+33: out <= line_04[6];
					col+4: out <= line_04[35];	  col+14: out <= line_04[25];	col+24: out <= line_04[15];  col+34: out <= line_04[5];
					col+5: out <= line_04[34];	  col+15: out <= line_04[24];	col+25: out <= line_04[14];  col+35: out <= line_04[4];
					col+6: out <= line_04[33];	  col+16: out <= line_04[23];	col+26: out <= line_04[13];  col+36: out <= line_04[3];
					col+7: out <= line_04[32];	  col+17: out <= line_04[22];	col+27: out <= line_04[12];  col+37: out <= line_04[2];
					col+8: out <= line_04[31];	  col+18: out <= line_04[21];	col+28: out <= line_04[11];  col+38: out <= line_04[1];
					col+9: out <= line_04[30];	  col+19: out <= line_04[20];	col+29: out <= line_04[10];  col+39: out <= line_04[0];
					default: out <= 0;
				endcase
			row+4:
				case(visible_col)
					col+0: out <= line_05[39];	  col+10: out <= line_05[29];	col+20: out <= line_05[19];  col+30: out <= line_05[9];
					col+1: out <= line_05[38];	  col+11: out <= line_05[28];	col+21: out <= line_05[18];  col+31: out <= line_05[8];
					col+2: out <= line_05[37];	  col+12: out <= line_05[27];	col+22: out <= line_05[17];  col+32: out <= line_05[7];
					col+3: out <= line_05[36];	  col+13: out <= line_05[26];	col+23: out <= line_05[16];  col+33: out <= line_05[6];
					col+4: out <= line_05[35];	  col+14: out <= line_05[25];	col+24: out <= line_05[15];  col+34: out <= line_05[5];
					col+5: out <= line_05[34];	  col+15: out <= line_05[24];	col+25: out <= line_05[14];  col+35: out <= line_05[4];
					col+6: out <= line_05[33];	  col+16: out <= line_05[23];	col+26: out <= line_05[13];  col+36: out <= line_05[3];
					col+7: out <= line_05[32];	  col+17: out <= line_05[22];	col+27: out <= line_05[12];  col+37: out <= line_05[2];
					col+8: out <= line_05[31];	  col+18: out <= line_05[21];	col+28: out <= line_05[11];  col+38: out <= line_05[1];
					col+9: out <= line_05[30];	  col+19: out <= line_05[20];	col+29: out <= line_05[10];  col+39: out <= line_05[0];
					default: out <= 0;
				endcase
			row+5:
				case(visible_col)
					col+0: out <= line_06[39];	  col+10: out <= line_06[29];	col+20: out <= line_06[19];  col+30: out <= line_06[9];
					col+1: out <= line_06[38];	  col+11: out <= line_06[28];	col+21: out <= line_06[18];  col+31: out <= line_06[8];
					col+2: out <= line_06[37];	  col+12: out <= line_06[27];	col+22: out <= line_06[17];  col+32: out <= line_06[7];
					col+3: out <= line_06[36];	  col+13: out <= line_06[26];	col+23: out <= line_06[16];  col+33: out <= line_06[6];
					col+4: out <= line_06[35];	  col+14: out <= line_06[25];	col+24: out <= line_06[15];  col+34: out <= line_06[5];
					col+5: out <= line_06[34];	  col+15: out <= line_06[24];	col+25: out <= line_06[14];  col+35: out <= line_06[4];
					col+6: out <= line_06[33];	  col+16: out <= line_06[23];	col+26: out <= line_06[13];  col+36: out <= line_06[3];
					col+7: out <= line_06[32];	  col+17: out <= line_06[22];	col+27: out <= line_06[12];  col+37: out <= line_06[2];
					col+8: out <= line_06[31];	  col+18: out <= line_06[21];	col+28: out <= line_06[11];  col+38: out <= line_06[1];
					col+9: out <= line_06[30];	  col+19: out <= line_06[20];	col+29: out <= line_06[10];  col+39: out <= line_06[0];
					default: out <= 0;
				endcase
			row+6:
				case(visible_col)
					col+0: out <= line_07[39];	  col+10: out <= line_07[29];	col+20: out <= line_07[19];  col+30: out <= line_07[9];
					col+1: out <= line_07[38];	  col+11: out <= line_07[28];	col+21: out <= line_07[18];  col+31: out <= line_07[8];
					col+2: out <= line_07[37];	  col+12: out <= line_07[27];	col+22: out <= line_07[17];  col+32: out <= line_07[7];
					col+3: out <= line_07[36];	  col+13: out <= line_07[26];	col+23: out <= line_07[16];  col+33: out <= line_07[6];
					col+4: out <= line_07[35];	  col+14: out <= line_07[25];	col+24: out <= line_07[15];  col+34: out <= line_07[5];
					col+5: out <= line_07[34];	  col+15: out <= line_07[24];	col+25: out <= line_07[14];  col+35: out <= line_07[4];
					col+6: out <= line_07[33];	  col+16: out <= line_07[23];	col+26: out <= line_07[13];  col+36: out <= line_07[3];
					col+7: out <= line_07[32];	  col+17: out <= line_07[22];	col+27: out <= line_07[12];  col+37: out <= line_07[2];
					col+8: out <= line_07[31];	  col+18: out <= line_07[21];	col+28: out <= line_07[11];  col+38: out <= line_07[1];
					col+9: out <= line_07[30];	  col+19: out <= line_07[20];	col+29: out <= line_07[10];  col+39: out <= line_07[0];
					default: out <= 0;
				endcase
			row+7:
				case(visible_col)
					col+0: out <= line_08[39];	  col+10: out <= line_08[29];	col+20: out <= line_08[19];  col+30: out <= line_08[9];
					col+1: out <= line_08[38];	  col+11: out <= line_08[28];	col+21: out <= line_08[18];  col+31: out <= line_08[8];
					col+2: out <= line_08[37];	  col+12: out <= line_08[27];	col+22: out <= line_08[17];  col+32: out <= line_08[7];
					col+3: out <= line_08[36];	  col+13: out <= line_08[26];	col+23: out <= line_08[16];  col+33: out <= line_08[6];
					col+4: out <= line_08[35];	  col+14: out <= line_08[25];	col+24: out <= line_08[15];  col+34: out <= line_08[5];
					col+5: out <= line_08[34];	  col+15: out <= line_08[24];	col+25: out <= line_08[14];  col+35: out <= line_08[4];
					col+6: out <= line_08[33];	  col+16: out <= line_08[23];	col+26: out <= line_08[13];  col+36: out <= line_08[3];
					col+7: out <= line_08[32];	  col+17: out <= line_08[22];	col+27: out <= line_08[12];  col+37: out <= line_08[2];
					col+8: out <= line_08[31];	  col+18: out <= line_08[21];	col+28: out <= line_08[11];  col+38: out <= line_08[1];
					col+9: out <= line_08[30];	  col+19: out <= line_08[20];	col+29: out <= line_08[10];  col+39: out <= line_08[0];
					default: out <= 0;
				endcase
			row+8:
				case(visible_col)
					col+0: out <= line_09[39];	  col+10: out <= line_09[29];	col+20: out <= line_09[19];  col+30: out <= line_09[9];
					col+1: out <= line_09[38];	  col+11: out <= line_09[28];	col+21: out <= line_09[18];  col+31: out <= line_09[8];
					col+2: out <= line_09[37];	  col+12: out <= line_09[27];	col+22: out <= line_09[17];  col+32: out <= line_09[7];
					col+3: out <= line_09[36];	  col+13: out <= line_09[26];	col+23: out <= line_09[16];  col+33: out <= line_09[6];
					col+4: out <= line_09[35];	  col+14: out <= line_09[25];	col+24: out <= line_09[15];  col+34: out <= line_09[5];
					col+5: out <= line_09[34];	  col+15: out <= line_09[24];	col+25: out <= line_09[14];  col+35: out <= line_09[4];
					col+6: out <= line_09[33];	  col+16: out <= line_09[23];	col+26: out <= line_09[13];  col+36: out <= line_09[3];
					col+7: out <= line_09[32];	  col+17: out <= line_09[22];	col+27: out <= line_09[12];  col+37: out <= line_09[2];
					col+8: out <= line_09[31];	  col+18: out <= line_09[21];	col+28: out <= line_09[11];  col+38: out <= line_09[1];
					col+9: out <= line_09[30];	  col+19: out <= line_09[20];	col+29: out <= line_09[10];  col+39: out <= line_09[0];
					default: out <= 0;
				endcase
			row+9:
				case(visible_col)
					col+0: out <= line_10[39];	  col+10: out <= line_10[29];	col+20: out <= line_10[19];  col+30: out <= line_10[9];
					col+1: out <= line_10[38];	  col+11: out <= line_10[28];	col+21: out <= line_10[18];  col+31: out <= line_10[8];
					col+2: out <= line_10[37];	  col+12: out <= line_10[27];	col+22: out <= line_10[17];  col+32: out <= line_10[7];
					col+3: out <= line_10[36];	  col+13: out <= line_10[26];	col+23: out <= line_10[16];  col+33: out <= line_10[6];
					col+4: out <= line_10[35];	  col+14: out <= line_10[25];	col+24: out <= line_10[15];  col+34: out <= line_10[5];
					col+5: out <= line_10[34];	  col+15: out <= line_10[24];	col+25: out <= line_10[14];  col+35: out <= line_10[4];
					col+6: out <= line_10[33];	  col+16: out <= line_10[23];	col+26: out <= line_10[13];  col+36: out <= line_10[3];
					col+7: out <= line_10[32];	  col+17: out <= line_10[22];	col+27: out <= line_10[12];  col+37: out <= line_10[2];
					col+8: out <= line_10[31];	  col+18: out <= line_10[21];	col+28: out <= line_10[11];  col+38: out <= line_10[1];
					col+9: out <= line_10[30];	  col+19: out <= line_10[20];	col+29: out <= line_10[10];  col+39: out <= line_10[0];
					default: out <= 0;
				endcase
			row+10:
				case(visible_col)
					col+0: out <= line_11[39];	  col+10: out <= line_11[29];	col+20: out <= line_11[19];  col+30: out <= line_11[9];
					col+1: out <= line_11[38];	  col+11: out <= line_11[28];	col+21: out <= line_11[18];  col+31: out <= line_11[8];
					col+2: out <= line_11[37];	  col+12: out <= line_11[27];	col+22: out <= line_11[17];  col+32: out <= line_11[7];
					col+3: out <= line_11[36];	  col+13: out <= line_11[26];	col+23: out <= line_11[16];  col+33: out <= line_11[6];
					col+4: out <= line_11[35];	  col+14: out <= line_11[25];	col+24: out <= line_11[15];  col+34: out <= line_11[5];
					col+5: out <= line_11[34];	  col+15: out <= line_11[24];	col+25: out <= line_11[14];  col+35: out <= line_11[4];
					col+6: out <= line_11[33];	  col+16: out <= line_11[23];	col+26: out <= line_11[13];  col+36: out <= line_11[3];
					col+7: out <= line_11[32];	  col+17: out <= line_11[22];	col+27: out <= line_11[12];  col+37: out <= line_11[2];
					col+8: out <= line_11[31];	  col+18: out <= line_11[21];	col+28: out <= line_11[11];  col+38: out <= line_11[1];
					col+9: out <= line_11[30];	  col+19: out <= line_11[20];	col+29: out <= line_11[10];  col+39: out <= line_11[0];
					default: out <= 0;
				endcase
			row+11:
				case(visible_col)
					col+0: out <= line_12[39];	  col+10: out <= line_12[29];	col+20: out <= line_12[19];  col+30: out <= line_12[9];
					col+1: out <= line_12[38];	  col+11: out <= line_12[28];	col+21: out <= line_12[18];  col+31: out <= line_12[8];
					col+2: out <= line_12[37];	  col+12: out <= line_12[27];	col+22: out <= line_12[17];  col+32: out <= line_12[7];
					col+3: out <= line_12[36];	  col+13: out <= line_12[26];	col+23: out <= line_12[16];  col+33: out <= line_12[6];
					col+4: out <= line_12[35];	  col+14: out <= line_12[25];	col+24: out <= line_12[15];  col+34: out <= line_12[5];
					col+5: out <= line_12[34];	  col+15: out <= line_12[24];	col+25: out <= line_12[14];  col+35: out <= line_12[4];
					col+6: out <= line_12[33];	  col+16: out <= line_12[23];	col+26: out <= line_12[13];  col+36: out <= line_12[3];
					col+7: out <= line_12[32];	  col+17: out <= line_12[22];	col+27: out <= line_12[12];  col+37: out <= line_12[2];
					col+8: out <= line_12[31];	  col+18: out <= line_12[21];	col+28: out <= line_12[11];  col+38: out <= line_12[1];
					col+9: out <= line_12[30];	  col+19: out <= line_12[20];	col+29: out <= line_12[10];  col+39: out <= line_12[0];
					default: out <= 0;
				endcase
			row+12:
				case(visible_col)
					col+0: out <= line_13[39];	  col+10: out <= line_13[29];	col+20: out <= line_13[19];  col+30: out <= line_13[9];
					col+1: out <= line_13[38];	  col+11: out <= line_13[28];	col+21: out <= line_13[18];  col+31: out <= line_13[8];
					col+2: out <= line_13[37];	  col+12: out <= line_13[27];	col+22: out <= line_13[17];  col+32: out <= line_13[7];
					col+3: out <= line_13[36];	  col+13: out <= line_13[26];	col+23: out <= line_13[16];  col+33: out <= line_13[6];
					col+4: out <= line_13[35];	  col+14: out <= line_13[25];	col+24: out <= line_13[15];  col+34: out <= line_13[5];
					col+5: out <= line_13[34];	  col+15: out <= line_13[24];	col+25: out <= line_13[14];  col+35: out <= line_13[4];
					col+6: out <= line_13[33];	  col+16: out <= line_13[23];	col+26: out <= line_13[13];  col+36: out <= line_13[3];
					col+7: out <= line_13[32];	  col+17: out <= line_13[22];	col+27: out <= line_13[12];  col+37: out <= line_13[2];
					col+8: out <= line_13[31];	  col+18: out <= line_13[21];	col+28: out <= line_13[11];  col+38: out <= line_13[1];
					col+9: out <= line_13[30];	  col+19: out <= line_13[20];	col+29: out <= line_13[10];  col+39: out <= line_13[0];
					default: out <= 0;
				endcase
			row+13:
				case(visible_col)
					col+0: out <= line_14[39];	  col+10: out <= line_14[29];	col+20: out <= line_14[19];  col+30: out <= line_14[9];
					col+1: out <= line_14[38];	  col+11: out <= line_14[28];	col+21: out <= line_14[18];  col+31: out <= line_14[8];
					col+2: out <= line_14[37];	  col+12: out <= line_14[27];	col+22: out <= line_14[17];  col+32: out <= line_14[7];
					col+3: out <= line_14[36];	  col+13: out <= line_14[26];	col+23: out <= line_14[16];  col+33: out <= line_14[6];
					col+4: out <= line_14[35];	  col+14: out <= line_14[25];	col+24: out <= line_14[15];  col+34: out <= line_14[5];
					col+5: out <= line_14[34];	  col+15: out <= line_14[24];	col+25: out <= line_14[14];  col+35: out <= line_14[4];
					col+6: out <= line_14[33];	  col+16: out <= line_14[23];	col+26: out <= line_14[13];  col+36: out <= line_14[3];
					col+7: out <= line_14[32];	  col+17: out <= line_14[22];	col+27: out <= line_14[12];  col+37: out <= line_14[2];
					col+8: out <= line_14[31];	  col+18: out <= line_14[21];	col+28: out <= line_14[11];  col+38: out <= line_14[1];
					col+9: out <= line_14[30];	  col+19: out <= line_14[20];	col+29: out <= line_14[10];  col+39: out <= line_14[0];
					default: out <= 0;
				endcase
			row+14:
				case(visible_col)
					col+0: out <= line_15[39];	  col+10: out <= line_15[29];	col+20: out <= line_15[19];  col+30: out <= line_15[9];
					col+1: out <= line_15[38];	  col+11: out <= line_15[28];	col+21: out <= line_15[18];  col+31: out <= line_15[8];
					col+2: out <= line_15[37];	  col+12: out <= line_15[27];	col+22: out <= line_15[17];  col+32: out <= line_15[7];
					col+3: out <= line_15[36];	  col+13: out <= line_15[26];	col+23: out <= line_15[16];  col+33: out <= line_15[6];
					col+4: out <= line_15[35];	  col+14: out <= line_15[25];	col+24: out <= line_15[15];  col+34: out <= line_15[5];
					col+5: out <= line_15[34];	  col+15: out <= line_15[24];	col+25: out <= line_15[14];  col+35: out <= line_15[4];
					col+6: out <= line_15[33];	  col+16: out <= line_15[23];	col+26: out <= line_15[13];  col+36: out <= line_15[3];
					col+7: out <= line_15[32];	  col+17: out <= line_15[22];	col+27: out <= line_15[12];  col+37: out <= line_15[2];
					col+8: out <= line_15[31];	  col+18: out <= line_15[21];	col+28: out <= line_15[11];  col+38: out <= line_15[1];
					col+9: out <= line_15[30];	  col+19: out <= line_15[20];	col+29: out <= line_15[10];  col+39: out <= line_15[0];
					default: out <= 0;
				endcase
			row+15:
				case(visible_col)
					col+0: out <= line_16[39];	  col+10: out <= line_16[29];	col+20: out <= line_16[19];  col+30: out <= line_16[9];
					col+1: out <= line_16[38];	  col+11: out <= line_16[28];	col+21: out <= line_16[18];  col+31: out <= line_16[8];
					col+2: out <= line_16[37];	  col+12: out <= line_16[27];	col+22: out <= line_16[17];  col+32: out <= line_16[7];
					col+3: out <= line_16[36];	  col+13: out <= line_16[26];	col+23: out <= line_16[16];  col+33: out <= line_16[6];
					col+4: out <= line_16[35];	  col+14: out <= line_16[25];	col+24: out <= line_16[15];  col+34: out <= line_16[5];
					col+5: out <= line_16[34];	  col+15: out <= line_16[24];	col+25: out <= line_16[14];  col+35: out <= line_16[4];
					col+6: out <= line_16[33];	  col+16: out <= line_16[23];	col+26: out <= line_16[13];  col+36: out <= line_16[3];
					col+7: out <= line_16[32];	  col+17: out <= line_16[22];	col+27: out <= line_16[12];  col+37: out <= line_16[2];
					col+8: out <= line_16[31];	  col+18: out <= line_16[21];	col+28: out <= line_16[11];  col+38: out <= line_16[1];
					col+9: out <= line_16[30];	  col+19: out <= line_16[20];	col+29: out <= line_16[10];  col+39: out <= line_16[0];
					default: out <= 0;
				endcase
			row+16:
				case(visible_col)
					col+0: out <= line_17[39];	  col+10: out <= line_17[29];	col+20: out <= line_17[19];  col+30: out <= line_17[9];
					col+1: out <= line_17[38];	  col+11: out <= line_17[28];	col+21: out <= line_17[18];  col+31: out <= line_17[8];
					col+2: out <= line_17[37];	  col+12: out <= line_17[27];	col+22: out <= line_17[17];  col+32: out <= line_17[7];
					col+3: out <= line_17[36];	  col+13: out <= line_17[26];	col+23: out <= line_17[16];  col+33: out <= line_17[6];
					col+4: out <= line_17[35];	  col+14: out <= line_17[25];	col+24: out <= line_17[15];  col+34: out <= line_17[5];
					col+5: out <= line_17[34];	  col+15: out <= line_17[24];	col+25: out <= line_17[14];  col+35: out <= line_17[4];
					col+6: out <= line_17[33];	  col+16: out <= line_17[23];	col+26: out <= line_17[13];  col+36: out <= line_17[3];
					col+7: out <= line_17[32];	  col+17: out <= line_17[22];	col+27: out <= line_17[12];  col+37: out <= line_17[2];
					col+8: out <= line_17[31];	  col+18: out <= line_17[21];	col+28: out <= line_17[11];  col+38: out <= line_17[1];
					col+9: out <= line_17[30];	  col+19: out <= line_17[20];	col+29: out <= line_17[10];  col+39: out <= line_17[0];
					default: out <= 0;
				endcase
			row+17:
				case(visible_col)
					col+0: out <= line_18[39];	  col+10: out <= line_18[29];	col+20: out <= line_18[19];  col+30: out <= line_18[9];
					col+1: out <= line_18[38];	  col+11: out <= line_18[28];	col+21: out <= line_18[18];  col+31: out <= line_18[8];
					col+2: out <= line_18[37];	  col+12: out <= line_18[27];	col+22: out <= line_18[17];  col+32: out <= line_18[7];
					col+3: out <= line_18[36];	  col+13: out <= line_18[26];	col+23: out <= line_18[16];  col+33: out <= line_18[6];
					col+4: out <= line_18[35];	  col+14: out <= line_18[25];	col+24: out <= line_18[15];  col+34: out <= line_18[5];
					col+5: out <= line_18[34];	  col+15: out <= line_18[24];	col+25: out <= line_18[14];  col+35: out <= line_18[4];
					col+6: out <= line_18[33];	  col+16: out <= line_18[23];	col+26: out <= line_18[13];  col+36: out <= line_18[3];
					col+7: out <= line_18[32];	  col+17: out <= line_18[22];	col+27: out <= line_18[12];  col+37: out <= line_18[2];
					col+8: out <= line_18[31];	  col+18: out <= line_18[21];	col+28: out <= line_18[11];  col+38: out <= line_18[1];
					col+9: out <= line_18[30];	  col+19: out <= line_18[20];	col+29: out <= line_18[10];  col+39: out <= line_18[0];
					default: out <= 0;
				endcase
			row+18:
				case(visible_col)
					col+0: out <= line_19[39];	  col+10: out <= line_19[29];	col+20: out <= line_19[19];  col+30: out <= line_19[9];
					col+1: out <= line_19[38];	  col+11: out <= line_19[28];	col+21: out <= line_19[18];  col+31: out <= line_19[8];
					col+2: out <= line_19[37];	  col+12: out <= line_19[27];	col+22: out <= line_19[17];  col+32: out <= line_19[7];
					col+3: out <= line_19[36];	  col+13: out <= line_19[26];	col+23: out <= line_19[16];  col+33: out <= line_19[6];
					col+4: out <= line_19[35];	  col+14: out <= line_19[25];	col+24: out <= line_19[15];  col+34: out <= line_19[5];
					col+5: out <= line_19[34];	  col+15: out <= line_19[24];	col+25: out <= line_19[14];  col+35: out <= line_19[4];
					col+6: out <= line_19[33];	  col+16: out <= line_19[23];	col+26: out <= line_19[13];  col+36: out <= line_19[3];
					col+7: out <= line_19[32];	  col+17: out <= line_19[22];	col+27: out <= line_19[12];  col+37: out <= line_19[2];
					col+8: out <= line_19[31];	  col+18: out <= line_19[21];	col+28: out <= line_19[11];  col+38: out <= line_19[1];
					col+9: out <= line_19[30];	  col+19: out <= line_19[20];	col+29: out <= line_19[10];  col+39: out <= line_19[0];
					default: out <= 0;
				endcase
			row+19:
				case(visible_col)
					col+0: out <= line_20[39];	  col+10: out <= line_20[29];	col+20: out <= line_20[19];  col+30: out <= line_20[9];
					col+1: out <= line_20[38];	  col+11: out <= line_20[28];	col+21: out <= line_20[18];  col+31: out <= line_20[8];
					col+2: out <= line_20[37];	  col+12: out <= line_20[27];	col+22: out <= line_20[17];  col+32: out <= line_20[7];
					col+3: out <= line_20[36];	  col+13: out <= line_20[26];	col+23: out <= line_20[16];  col+33: out <= line_20[6];
					col+4: out <= line_20[35];	  col+14: out <= line_20[25];	col+24: out <= line_20[15];  col+34: out <= line_20[5];
					col+5: out <= line_20[34];	  col+15: out <= line_20[24];	col+25: out <= line_20[14];  col+35: out <= line_20[4];
					col+6: out <= line_20[33];	  col+16: out <= line_20[23];	col+26: out <= line_20[13];  col+36: out <= line_20[3];
					col+7: out <= line_20[32];	  col+17: out <= line_20[22];	col+27: out <= line_20[12];  col+37: out <= line_20[2];
					col+8: out <= line_20[31];	  col+18: out <= line_20[21];	col+28: out <= line_20[11];  col+38: out <= line_20[1];
					col+9: out <= line_20[30];	  col+19: out <= line_20[20];	col+29: out <= line_20[10];  col+39: out <= line_20[0];
					default: out <= 0;
				endcase
			row+20:
				case(visible_col)
					col+0: out <= line_21[39];	  col+10: out <= line_21[29];	col+20: out <= line_21[19];  col+30: out <= line_21[9];
					col+1: out <= line_21[38];	  col+11: out <= line_21[28];	col+21: out <= line_21[18];  col+31: out <= line_21[8];
					col+2: out <= line_21[37];	  col+12: out <= line_21[27];	col+22: out <= line_21[17];  col+32: out <= line_21[7];
					col+3: out <= line_21[36];	  col+13: out <= line_21[26];	col+23: out <= line_21[16];  col+33: out <= line_21[6];
					col+4: out <= line_21[35];	  col+14: out <= line_21[25];	col+24: out <= line_21[15];  col+34: out <= line_21[5];
					col+5: out <= line_21[34];	  col+15: out <= line_21[24];	col+25: out <= line_21[14];  col+35: out <= line_21[4];
					col+6: out <= line_21[33];	  col+16: out <= line_21[23];	col+26: out <= line_21[13];  col+36: out <= line_21[3];
					col+7: out <= line_21[32];	  col+17: out <= line_21[22];	col+27: out <= line_21[12];  col+37: out <= line_21[2];
					col+8: out <= line_21[31];	  col+18: out <= line_21[21];	col+28: out <= line_21[11];  col+38: out <= line_21[1];
					col+9: out <= line_21[30];	  col+19: out <= line_21[20];	col+29: out <= line_21[10];  col+39: out <= line_21[0];
					default: out <= 0;
				endcase
			row+21:
				case(visible_col)
					col+0: out <= line_22[39];	  col+10: out <= line_22[29];	col+20: out <= line_22[19];  col+30: out <= line_22[9];
					col+1: out <= line_22[38];	  col+11: out <= line_22[28];	col+21: out <= line_22[18];  col+31: out <= line_22[8];
					col+2: out <= line_22[37];	  col+12: out <= line_22[27];	col+22: out <= line_22[17];  col+32: out <= line_22[7];
					col+3: out <= line_22[36];	  col+13: out <= line_22[26];	col+23: out <= line_22[16];  col+33: out <= line_22[6];
					col+4: out <= line_22[35];	  col+14: out <= line_22[25];	col+24: out <= line_22[15];  col+34: out <= line_22[5];
					col+5: out <= line_22[34];	  col+15: out <= line_22[24];	col+25: out <= line_22[14];  col+35: out <= line_22[4];
					col+6: out <= line_22[33];	  col+16: out <= line_22[23];	col+26: out <= line_22[13];  col+36: out <= line_22[3];
					col+7: out <= line_22[32];	  col+17: out <= line_22[22];	col+27: out <= line_22[12];  col+37: out <= line_22[2];
					col+8: out <= line_22[31];	  col+18: out <= line_22[21];	col+28: out <= line_22[11];  col+38: out <= line_22[1];
					col+9: out <= line_22[30];	  col+19: out <= line_22[20];	col+29: out <= line_22[10];  col+39: out <= line_22[0];
					default: out <= 0;
				endcase
			row+22:
				case(visible_col)
					col+0: out <= line_23[39];	  col+10: out <= line_23[29];	col+20: out <= line_23[19];  col+30: out <= line_23[9];
					col+1: out <= line_23[38];	  col+11: out <= line_23[28];	col+21: out <= line_23[18];  col+31: out <= line_23[8];
					col+2: out <= line_23[37];	  col+12: out <= line_23[27];	col+22: out <= line_23[17];  col+32: out <= line_23[7];
					col+3: out <= line_23[36];	  col+13: out <= line_23[26];	col+23: out <= line_23[16];  col+33: out <= line_23[6];
					col+4: out <= line_23[35];	  col+14: out <= line_23[25];	col+24: out <= line_23[15];  col+34: out <= line_23[5];
					col+5: out <= line_23[34];	  col+15: out <= line_23[24];	col+25: out <= line_23[14];  col+35: out <= line_23[4];
					col+6: out <= line_23[33];	  col+16: out <= line_23[23];	col+26: out <= line_23[13];  col+36: out <= line_23[3];
					col+7: out <= line_23[32];	  col+17: out <= line_23[22];	col+27: out <= line_23[12];  col+37: out <= line_23[2];
					col+8: out <= line_23[31];	  col+18: out <= line_23[21];	col+28: out <= line_23[11];  col+38: out <= line_23[1];
					col+9: out <= line_23[30];	  col+19: out <= line_23[20];	col+29: out <= line_23[10];  col+39: out <= line_23[0];
					default: out <= 0;
				endcase
			row+23:
				case(visible_col)
					col+0: out <= line_24[39];	  col+10: out <= line_24[29];	col+20: out <= line_24[19];  col+30: out <= line_24[9];
					col+1: out <= line_24[38];	  col+11: out <= line_24[28];	col+21: out <= line_24[18];  col+31: out <= line_24[8];
					col+2: out <= line_24[37];	  col+12: out <= line_24[27];	col+22: out <= line_24[17];  col+32: out <= line_24[7];
					col+3: out <= line_24[36];	  col+13: out <= line_24[26];	col+23: out <= line_24[16];  col+33: out <= line_24[6];
					col+4: out <= line_24[35];	  col+14: out <= line_24[25];	col+24: out <= line_24[15];  col+34: out <= line_24[5];
					col+5: out <= line_24[34];	  col+15: out <= line_24[24];	col+25: out <= line_24[14];  col+35: out <= line_24[4];
					col+6: out <= line_24[33];	  col+16: out <= line_24[23];	col+26: out <= line_24[13];  col+36: out <= line_24[3];
					col+7: out <= line_24[32];	  col+17: out <= line_24[22];	col+27: out <= line_24[12];  col+37: out <= line_24[2];
					col+8: out <= line_24[31];	  col+18: out <= line_24[21];	col+28: out <= line_24[11];  col+38: out <= line_24[1];
					col+9: out <= line_24[30];	  col+19: out <= line_24[20];	col+29: out <= line_24[10];  col+39: out <= line_24[0];
					default: out <= 0;
				endcase
			row+24:
				case(visible_col)
					col+0: out <= line_25[39];	  col+10: out <= line_25[29];	col+20: out <= line_25[19];  col+30: out <= line_25[9];
					col+1: out <= line_25[38];	  col+11: out <= line_25[28];	col+21: out <= line_25[18];  col+31: out <= line_25[8];
					col+2: out <= line_25[37];	  col+12: out <= line_25[27];	col+22: out <= line_25[17];  col+32: out <= line_25[7];
					col+3: out <= line_25[36];	  col+13: out <= line_25[26];	col+23: out <= line_25[16];  col+33: out <= line_25[6];
					col+4: out <= line_25[35];	  col+14: out <= line_25[25];	col+24: out <= line_25[15];  col+34: out <= line_25[5];
					col+5: out <= line_25[34];	  col+15: out <= line_25[24];	col+25: out <= line_25[14];  col+35: out <= line_25[4];
					col+6: out <= line_25[33];	  col+16: out <= line_25[23];	col+26: out <= line_25[13];  col+36: out <= line_25[3];
					col+7: out <= line_25[32];	  col+17: out <= line_25[22];	col+27: out <= line_25[12];  col+37: out <= line_25[2];
					col+8: out <= line_25[31];	  col+18: out <= line_25[21];	col+28: out <= line_25[11];  col+38: out <= line_25[1];
					col+9: out <= line_25[30];	  col+19: out <= line_25[20];	col+29: out <= line_25[10];  col+39: out <= line_25[0];
					default: out <= 0;
				endcase
			row+25:
				case(visible_col)
					col+0: out <= line_26[39];	  col+10: out <= line_26[29];	col+20: out <= line_26[19];  col+30: out <= line_26[9];
					col+1: out <= line_26[38];	  col+11: out <= line_26[28];	col+21: out <= line_26[18];  col+31: out <= line_26[8];
					col+2: out <= line_26[37];	  col+12: out <= line_26[27];	col+22: out <= line_26[17];  col+32: out <= line_26[7];
					col+3: out <= line_26[36];	  col+13: out <= line_26[26];	col+23: out <= line_26[16];  col+33: out <= line_26[6];
					col+4: out <= line_26[35];	  col+14: out <= line_26[25];	col+24: out <= line_26[15];  col+34: out <= line_26[5];
					col+5: out <= line_26[34];	  col+15: out <= line_26[24];	col+25: out <= line_26[14];  col+35: out <= line_26[4];
					col+6: out <= line_26[33];	  col+16: out <= line_26[23];	col+26: out <= line_26[13];  col+36: out <= line_26[3];
					col+7: out <= line_26[32];	  col+17: out <= line_26[22];	col+27: out <= line_26[12];  col+37: out <= line_26[2];
					col+8: out <= line_26[31];	  col+18: out <= line_26[21];	col+28: out <= line_26[11];  col+38: out <= line_26[1];
					col+9: out <= line_26[30];	  col+19: out <= line_26[20];	col+29: out <= line_26[10];  col+39: out <= line_26[0];
					default: out <= 0;
				endcase
			row+26:
				case(visible_col)
					col+0: out <= line_27[39];	  col+10: out <= line_27[29];	col+20: out <= line_27[19];  col+30: out <= line_27[9];
					col+1: out <= line_27[38];	  col+11: out <= line_27[28];	col+21: out <= line_27[18];  col+31: out <= line_27[8];
					col+2: out <= line_27[37];	  col+12: out <= line_27[27];	col+22: out <= line_27[17];  col+32: out <= line_27[7];
					col+3: out <= line_27[36];	  col+13: out <= line_27[26];	col+23: out <= line_27[16];  col+33: out <= line_27[6];
					col+4: out <= line_27[35];	  col+14: out <= line_27[25];	col+24: out <= line_27[15];  col+34: out <= line_27[5];
					col+5: out <= line_27[34];	  col+15: out <= line_27[24];	col+25: out <= line_27[14];  col+35: out <= line_27[4];
					col+6: out <= line_27[33];	  col+16: out <= line_27[23];	col+26: out <= line_27[13];  col+36: out <= line_27[3];
					col+7: out <= line_27[32];	  col+17: out <= line_27[22];	col+27: out <= line_27[12];  col+37: out <= line_27[2];
					col+8: out <= line_27[31];	  col+18: out <= line_27[21];	col+28: out <= line_27[11];  col+38: out <= line_27[1];
					col+9: out <= line_27[30];	  col+19: out <= line_27[20];	col+29: out <= line_27[10];  col+39: out <= line_27[0];
					default: out <= 0;
				endcase
			default:out <= 0;
		endcase
	end
end
endmodule