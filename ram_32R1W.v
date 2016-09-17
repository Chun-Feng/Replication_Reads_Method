module ram_32R1W(
        clk, rst,
        w_addr_1, w_din_1, w_enb_1,
        r_addr_1, r_dout_1,
        r_addr_2, r_dout_2,
        r_addr_3, r_dout_3,
        r_addr_4, r_dout_4,
        r_addr_5, r_dout_5,
        r_addr_6, r_dout_6,
        r_addr_7, r_dout_7,
        r_addr_8, r_dout_8,
        r_addr_9, r_dout_9,
        r_addr_10, r_dout_10,
        r_addr_11, r_dout_11,
        r_addr_12, r_dout_12,
        r_addr_13, r_dout_13,
        r_addr_14, r_dout_14,
        r_addr_15, r_dout_15,
        r_addr_16, r_dout_16,
        r_addr_17, r_dout_17,
        r_addr_18, r_dout_18,
        r_addr_19, r_dout_19,
        r_addr_20, r_dout_20,
        r_addr_21, r_dout_21,
        r_addr_22, r_dout_22,
        r_addr_23, r_dout_23,
        r_addr_24, r_dout_24,
        r_addr_25, r_dout_25,
        r_addr_26, r_dout_26,
        r_addr_27, r_dout_27,
        r_addr_28, r_dout_28,
        r_addr_29, r_dout_29,
        r_addr_30, r_dout_30,
        r_addr_31, r_dout_31,
        r_addr_32, r_dout_32
        );

parameter BLOCKSIZE = 10;

/////////INOUT/////////
input clk;
input rst;

input [BLOCKSIZE:0] w_addr_1;
input [31:0] w_din_1;
input w_enb_1;

input [BLOCKSIZE:0] r_addr_1, r_addr_2;
input [BLOCKSIZE:0] r_addr_3, r_addr_4;
input [BLOCKSIZE:0] r_addr_5, r_addr_6, r_addr_7, r_addr_8;
input [BLOCKSIZE:0] r_addr_9, r_addr_10, r_addr_11, r_addr_12;
input [BLOCKSIZE:0] r_addr_13, r_addr_14, r_addr_15, r_addr_16;
input [BLOCKSIZE:0] r_addr_17, r_addr_18, r_addr_19, r_addr_20, r_addr_21, r_addr_22;
input [BLOCKSIZE:0] r_addr_23, r_addr_24, r_addr_25, r_addr_26, r_addr_27, r_addr_28;
input [BLOCKSIZE:0] r_addr_29, r_addr_30, r_addr_31, r_addr_32;

output [31:0] r_dout_1, r_dout_2;
output [31:0] r_dout_3, r_dout_4;
output [31:0] r_dout_5, r_dout_6, r_dout_7, r_dout_8;
output [31:0] r_dout_9, r_dout_10, r_dout_11, r_dout_12;
output [31:0] r_dout_13, r_dout_14, r_dout_15, r_dout_16;
output [31:0] r_dout_17, r_dout_18, r_dout_19, r_dout_20, r_dout_21, r_dout_22;
output [31:0] r_dout_23, r_dout_24, r_dout_25, r_dout_26, r_dout_27, r_dout_28;
output [31:0] r_dout_29, r_dout_30, r_dout_31, r_dout_32;
//////// INOUT_PORTS ///
/////BLOCK INOUT_PORTS///////
reg b1_w_enb, b2_w_enb, b3_w_enb, b4_w_enb;
reg b5_w_enb, b6_w_enb, b7_w_enb, b8_w_enb;
reg b9_w_enb, b10_w_enb, b11_w_enb, b12_w_web;
reg b13_w_enb, b14_w_enb, b15_w_enb, b16_w_enb;
reg b17_w_enb, b18_w_enb, b19_w_enb, b20_w_enb, b21_w_enb, b22_w_enb;
reg b23_w_enb, b24_w_enb, b25_w_enb, b26_w_enb, b27_w_enb, b28_w_enb;
reg b29_w_enb, b30_w_enb, b31_w_enb, b32_w_enb;

reg [BLOCKSIZE:0] b1_addrw, b2_addrw, b3_addrw, b4_addrw;
reg [BLOCKSIZE:0] b5_addrw, b6_addrw, b7_addrw, b8_addrw;
reg [BLOCKSIZE:0] b9_addrw, b10_addrw, b11_addrw, b12_addrw;
reg [BLOCKSIZE:0] b13_addrw, b14_addrw, b15_addrw, b16_addrw;
reg [BLOCKSIZE:0] b17_addrw, d18_addrw, d19_addrw, d20_addrw, d21_addrw, d22_addrw;
reg [BLOCKSIZE:0] b23_addrw, b24_addrw, d25_addrw, d26_addrw, d27_addrw, d28_addrw;
reg [BLOCKSIZE:0] d29_addrw, d30_addrw, d31_addrw, d32_addrw;

reg [31:0] b1_dinw, b2_dinw, b3_dinw, b4_dinw;
reg [31:0] b5_dinw, b6_dinw, b7_dinw, b8_dinw;
reg [31:0] b9_dinw, b10_dinw, b11_dinw, b12_dinw;
reg [31:0] b13_dinw, b14_dinw, b15_dinw, b16_dinw;
reg [31:0] b17_dinw, b18_dinw, b19_dinw, b20_dinw, b21_dinw, b22_dinw;
reg [31:0] b23_dinw, b24_dinw, b25_dinw, b26_dinw, b27_dinw, b28_dinw;
reg [31:0] b29_dinw, b30_dinw, b31_dinw, b32_dinw;

reg [BLOCKSIZE:0] b1_addr, b2_addr, b3_addr, b4_addr;
reg [BLOCKSIZE:0] b5_addr, b6_addr, b7_addr, b8_addr;
reg [BLOCKSIZE:0] b9_addr, b10_addr, b11_addr, b12_addr;
reg [BLOCKSIZE:0] b13_addr, b14_addr, b15_addr, b16_addr;
reg [BLOCKSIZE:0] b17_addr, b18_addr, b19_addr, b20_addr, b21_addr, b22_addr;
reg [BLOCKSIZE:0] b23_addr, b24_addr, b25_addr, b26_addr, b27_addr, b28_addr;
reg [BLOCKSIZE:0] b29_addr, b30_addr, b31_addr, b32_addr;


wire [31:0] b1_dout, b2_dout, b3_dout, b4_dout;
wire [31:0] b5_dout, b6_dout, b7_dout, b8_dout;
wire [31:0] b9_dout, b10_dout, b11_dout, b12_dout;
wire [31:0] b13_dout, b14_dout, b15_dout, b16_dout;
wire [31:0] b17_dout, b18_dout, b19_dout, b20_dout, b21_dout, b22_dout;
wire [31:0] b23_dout, b24_dout, b25_dout, b26_dout, b27_dout, b28_dout;
wire [31:0] b29_dout, b30_dout, b31_dout, b32_dout;
/////////BLOCKS/////////
ram_1R1W block1(
	.clk(clk), .rst(rst),
	.w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
	.r_addr(r_addr_1), .r_dout(r_dout_1)
        );

ram_1R1W block2(
	.clk(clk), .rst(rst),
	.w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
	.r_addr(r_addr_2), .r_dout(r_dout_2)
        );

ram_1R1W block3(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_3), .r_dout(r_dout_3)
        );

ram_1R1W block4(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_4), .r_dout(r_dout_4)
        );

ram_1R1W block5(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_5), .r_dout(r_dout_5)
        );

ram_1R1W block6(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_6), .r_dout(r_dout_6)
        );

ram_1R1W block7(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_7), .r_dout(r_dout_7)
        );

ram_1R1W block8(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_8), .r_dout(r_dout_8)
        );

ram_1R1W block9(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_9), .r_dout(r_dout_9)
        );

ram_1R1W block10(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_10), .r_dout(r_dout_10)
        );

ram_1R1W block11(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_11), .r_dout(r_dout_11)
        );

ram_1R1W block12(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_12), .r_dout(r_dout_12)
        );

ram_1R1W block13(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_13), .r_dout(r_dout_13)
        );

ram_1R1W block14(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_14), .r_dout(r_dout_14)
        );

ram_1R1W block15(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_15), .r_dout(r_dout_15)
        );

ram_1R1W block16(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_16), .r_dout(r_dout_16)
        );

ram_1R1W block17(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_17), .r_dout(r_dout_17)
        );


ram_1R1W block18(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_18), .r_dout(r_dout_18)
        );

ram_1R1W block19(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_19), .r_dout(r_dout_19)
        );

    
ram_1R1W block20(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_20), .r_dout(r_dout_20)
        );

ram_1R1W block21(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_21), .r_dout(r_dout_21)
        );

ram_1R1W block22(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_22), .r_dout(r_dout_22)
        );

ram_1R1W block23(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_23), .r_dout(r_dout_23)
        );

ram_1R1W block24(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_24), .r_dout(r_dout_24)
        );

ram_1R1W block25(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_25), .r_dout(r_dout_25)
        );

ram_1R1W block26(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_26), .r_dout(r_dout_26)
        );

ram_1R1W block27(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_27), .r_dout(r_dout_27)
        );

ram_1R1W block28(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_28), .r_dout(r_dout_28)
        );

ram_1R1W block29(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_29), .r_dout(r_dout_29)
        );

ram_1R1W block30(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_30), .r_dout(r_dout_30)
        );

ram_1R1W block31(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_31), .r_dout(r_dout_31)
        );

ram_1R1W block32(
        .clk(clk), .rst(rst),
        .w_addr(w_addr_1), .w_din(w_din_1), .w_enb(w_enb_1),
        .r_addr(r_addr_32), .r_dout(r_dout_32)
        );

////////////////////////////
always@(*)
        begin
    end

always@(negedge clk)
        begin
    end

always@(posedge clk or negedge rst)
    begin
	if(!rst)
    	    begin
	    end
	else
	    begin
	    end
    end

endmodule

