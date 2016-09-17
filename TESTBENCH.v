`include "PATTERN.v"

`include "ram_32R1W.v"

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
wire [BLOCKSIZE:0] r9_addr, r10_addr, r11_addr, r12_addr;
wire [BLOCKSIZE:0] r13_addr, r14_addr, r15_addr, r16_addr;
wire [BLOCKSIZE:0] r17_addr, r18_addr, r19_addr, r20_addr, r21_addr, r22_addr;
wire [BLOCKSIZE:0] r23_addr, r24_addr, r25_addr, r26_addr, r27_addr, r28_addr;
wire [BLOCKSIZE:0] r29_addr, r30_addr, r31_addr, r32_addr;

wire [BLOCKSIZE:0] w1_addr;

wire [31:0] w1, d1, d2;
wire [31:0] d3, d4;
wire [31:0] d5, d6, d7, d8;
wire [31:0] d9, d10, d11, d12, d13, d14, d15, d16;
wire [31:0] d17, d18, d19, d20, d21, d22, d23, d24, d25;
wire [31:0] d26, d27, d28, d29, d30, d31, d32;

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
        .r8_addr(r8_addr), .d8(d8),
        .r9_addr(r9_addr), .d9(d9),
        .r10_addr(r10_addr), .d10(d10),
        .r11_addr(r11_addr), .d11(d11),
        .r12_addr(r12_addr), .d12(d12),
        .r13_addr(r13_addr), .d13(d13),
        .r14_addr(r14_addr), .d14(d14),
        .r15_addr(r15_addr), .d15(d15),
        .r16_addr(r16_addr), .d16(d16),
        .r17_addr(r17_addr), .d17(d17),
        .r18_addr(r18_addr), .d18(d18),
        .r19_addr(r19_addr), .d19(d19),
        .r20_addr(r20_addr), .d20(d20),
        .r21_addr(r21_addr), .d21(d21),
        .r22_addr(r22_addr), .d22(d22),
        .r23_addr(r23_addr), .d23(d23),
        .r24_addr(r24_addr), .d24(d24),
        .r25_addr(r25_addr), .d25(d25),
        .r26_addr(r26_addr), .d26(d26),
        .r27_addr(r27_addr), .d27(d27),
        .r28_addr(r28_addr), .d28(d28),
        .r29_addr(r29_addr), .d29(d29),
        .r30_addr(r30_addr), .d30(d30),
        .r31_addr(r31_addr), .d31(d31),
        .r32_addr(r32_addr), .d32(d32)
        );

ram_32R1W ram(
        .clk(clk), .rst(rst),
        .w_addr_1(w1_addr), .w_din_1(w1),.w_enb_1(en_w1),
        .r_addr_1(r1_addr), .r_dout_1(d1),
        .r_addr_2(r2_addr), .r_dout_2(d2),
        .r_addr_3(r3_addr), .r_dout_3(d3),
        .r_addr_4(r4_addr), .r_dout_4(d4),
        .r_addr_5(r5_addr), .r_dout_5(d5),
        .r_addr_6(r6_addr), .r_dout_6(d6),
        .r_addr_7(r7_addr), .r_dout_7(d7),
        .r_addr_8(r8_addr), .r_dout_8(d8),
        .r_addr_9(r9_addr), .r_dout_9(d9),
        .r_addr_10(r10_addr), .r_dout_10(d10),
        .r_addr_11(r11_addr), .r_dout_11(d11),
        .r_addr_12(r12_addr), .r_dout_12(d12),
        .r_addr_13(r13_addr), .r_dout_13(d13),
        .r_addr_14(r14_addr), .r_dout_14(d14),
        .r_addr_15(r15_addr), .r_dout_15(d15),
        .r_addr_16(r16_addr), .r_dout_16(d16),
        .r_addr_17(r17_addr), .r_dout_17(d17),
        .r_addr_18(r18_addr), .r_dout_18(d18),
        .r_addr_19(r19_addr), .r_dout_19(d19),
        .r_addr_20(r20_addr), .r_dout_20(d20),
        .r_addr_21(r21_addr), .r_dout_21(d21),
        .r_addr_22(r22_addr), .r_dout_22(d22),
        .r_addr_23(r23_addr), .r_dout_23(d23),
        .r_addr_24(r24_addr), .r_dout_24(d24),
        .r_addr_25(r25_addr), .r_dout_25(d25),
        .r_addr_26(r26_addr), .r_dout_26(d26),
        .r_addr_27(r27_addr), .r_dout_27(d27),
        .r_addr_28(r28_addr), .r_dout_28(d28),
        .r_addr_29(r29_addr), .r_dout_29(d29),
        .r_addr_30(r30_addr), .r_dout_30(d30),
        .r_addr_31(r31_addr), .r_dout_31(d31),
        .r_addr_32(r32_addr), .r_dout_32(d32)
        );

endmodule

