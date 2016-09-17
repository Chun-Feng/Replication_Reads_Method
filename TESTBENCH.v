`include "PATTERN.v"
`include "ram_8R1W.v"

module TESTBENCH();
initial begin

//    $fsdbDumpfile("core.fsdb");
//    $fsdbDumpvars;

///////// memory design gtkwave tools /////
//		$dumpfile("core.vcd");
//		$dumpvars;
    end

parameter BLOCKSIZE = 10;

wire        clk;
wire        rst;
wire        en_w1;
wire [BLOCKSIZE:0] r1_addr, r2_addr;
wire [BLOCKSIZE:0] r3_addr, r4_addr;
wire [BLOCKSIZE:0] r5_addr, r6_addr, r7_addr, r8_addr;

wire [BLOCKSIZE:0] w1_addr;

wire [31:0] w1, d1, d2;
wire [31:0] d3, d4;
wire [31:0] d5, d6, d7, d8;

PATTERN u_pattern(
        .clk(clk), .rst(rst),
        .w1_addr(w1_addr), .w1_din(w1), .en_w1(en_w1),
        .r1_addr(r1_addr), .d1(d1),
        .r2_addr(r2_addr), .d2(d2),
        .r3_addr(r3_addr), .d3(d3),
        .r4_addr(r4_addr), .d4(d4),
        .r5_addr(r5_addr), .d5(d5),
        .r6_addr(r6_addr), .d6(d6),
        .r7_addr(r7_addr), .d7(d7),
        .r8_addr(r8_addr), .d8(d8)
        );

ram_8R1W ram(
        .clk(clk), .rst(rst),
        .w_addr_1(w1_addr), .w_din_1(w1),.w_enb_1(en_w1),
        .r_addr_1(r1_addr), .r_dout_1(d1),
        .r_addr_2(r2_addr), .r_dout_2(d2),
        .r_addr_3(r3_addr), .r_dout_3(d3),
        .r_addr_4(r4_addr), .r_dout_4(d4),
        .r_addr_5(r5_addr), .r_dout_5(d5),
        .r_addr_6(r6_addr), .r_dout_6(d6),
        .r_addr_7(r7_addr), .r_dout_7(d7),
        .r_addr_8(r8_addr), .r_dout_8(d8)
        );

endmodule

