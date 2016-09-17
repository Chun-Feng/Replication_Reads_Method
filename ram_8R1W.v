module ram_8R1W(
        clk, rst,
        w_addr_1, w_din_1, w_enb_1,
        r_addr_1, r_dout_1,
        r_addr_2, r_dout_2,
        r_addr_3, r_dout_3,
        r_addr_4, r_dout_4,
        r_addr_5, r_dout_5,
        r_addr_6, r_dout_6,
        r_addr_7, r_dout_7,
        r_addr_8, r_dout_8
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

output [31:0] r_dout_1, r_dout_2;
output [31:0] r_dout_3, r_dout_4;
output [31:0] r_dout_5, r_dout_6, r_dout_7, r_dout_8;
//////// INOUT_PORTS ///
/////BLOCK INOUT_PORTS///////
reg b1_w_enb, b2_w_enb, b3_w_enb, b4_w_enb;
reg b5_w_enb, b6_w_enb, b7_w_enb, b8_w_enb;

reg [BLOCKSIZE:0] b1_addrw, b2_addrw, b3_addrw, b4_addrw;
reg [BLOCKSIZE:0] b5_addrw, b6_addrw, b7_addrw, b8_addrw;

reg [31:0] b1_dinw, b2_dinw, b3_dinw, b4_dinw;
reg [31:0] b5_dinw, b6_dinw, b7_dinw, b8_dinw;

reg [BLOCKSIZE:0] b1_addr, b2_addr, b3_addr, b4_addr;
reg [BLOCKSIZE:0] b5_addr, b6_addr, b7_addr, b8_addr;

wire [31:0] b1_dout, b2_dout, b3_dout, b4_dout;
wire [31:0] b5_dout, b6_dout, b7_dout, b8_dout;
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

