module ram_2R1W(
        clk,rst,
        w_addr_1, w_din_1,w_enb_1,
        r_addr_1, r_dout_1,
        r_addr_2, r_dout_2
        );

parameter BLOCKSIZE = 10;

/////////INOUT/////////
input clk;
input rst;

input [BLOCKSIZE:0] w_addr_1;
input [31:0] w_din_1;
input w_enb_1;

input [BLOCKSIZE:0] r_addr_1, r_addr_2;
output [31:0] r_dout_1, r_dout_2;
//////// INOUT_PORTS ///
/////BLOCK INOUT_PORTS///////
reg b1_w_enb, b2_w_enb;
reg [BLOCKSIZE:0] b1_addrw, b2_addrw;
reg [31:0] b1_dinw, b2_dinw
;
reg [BLOCKSIZE:0] b1_addr, b2_addr;
wire [31:0] b1_dout, b2_dout;
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

