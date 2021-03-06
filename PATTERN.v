`define CLK_PERIOD  10.0

module PATTERN(
        clk, rst,
        w1_addr, w1_din, en_w1,
        r1_addr, d1,
        r2_addr, d2,
        r3_addr, d3,
        r4_addr, d4,
        r5_addr, d5,
        r6_addr, d6,
        r7_addr, d7,
        r8_addr, d8,
        r9_addr, d9,
        r10_addr, d10,
        r11_addr, d11,
        r12_addr, d12,
        r13_addr, d13,
        r14_addr, d14,
        r15_addr, d15,
        r16_addr, d16,
        r17_addr, d17,
        r18_addr, d18,
        r19_addr, d19,
        r20_addr, d20,
        r21_addr, d21,
        r22_addr, d22,
        r23_addr, d23,
        r24_addr, d24,
        r25_addr, d25,
        r26_addr, d26,
        r27_addr, d27,
        r28_addr ,d28,
        r29_addr, d29,
        r30_addr, d30,
        r31_addr, d31,
        r32_addr, d32
        );

parameter BLOCKSIZE = 10;

output reg clk;
output reg rst;
output reg en_w1;

output reg [BLOCKSIZE:0] r1_addr, r2_addr;
output reg [BLOCKSIZE:0] r3_addr, r4_addr;
output reg [BLOCKSIZE:0] r5_addr, r6_addr, r7_addr, r8_addr;
output reg [BLOCKSIZE:0] r9_addr, r10_addr, r11_addr, r12_addr;
output reg [BLOCKSIZE:0] r13_addr, r14_addr, r15_addr, r16_addr;
output reg [BLOCKSIZE:0] r17_addr, r18_addr, r19_addr, r20_addr, r21_addr, r22_addr;
output reg [BLOCKSIZE:0] r23_addr, r24_addr, r25_addr, r26_addr, r27_addr, r28_addr;
output reg [BLOCKSIZE:0] r29_addr, r30_addr, r31_addr, r32_addr;

output reg [BLOCKSIZE:0] w1_addr;
output reg [31:0] w1_din;

input [31:0] d1, d2, d3, d4;
input [31:0] d5, d6, d7, d8;
input [31:0] d9, d10, d11, d12, d13, d14, d15, d16;
input [31:0] d17, d18, d19, d20, d21, d22, d23, d24;
input [31:0] d25, d26, d27, d28, d29, d30, d31, d32;
/////// INOUT_PORTS ////////
integer mem[0:(2 << BLOCKSIZE) - 1];

integer i, ccc, times;
integer seed;

always #(`CLK_PERIOD/2.0) 
            clk = ~clk;

initial begin
        clk = 0;
        rst = 1;
        en_w1 = 0;

        r1_addr = 0;
        r2_addr = 0;
        r3_addr = 0;
        r4_addr = 0;
        r5_addr = 0;
        r6_addr = 0;
        r7_addr = 0;
        r8_addr = 0;
        r9_addr = 0;
        r10_addr = 0;
        r11_addr = 0;
        r12_addr = 0;
        r13_addr = 0;
        r14_addr = 0;
        r15_addr = 0;
        r16_addr = 0;
        r17_addr = 0;
        r18_addr = 0;
        r19_addr = 0;
        r20_addr = 0;
        r21_addr = 0;
        r22_addr = 0;
        r23_addr = 0;
        r24_addr = 0;
        r25_addr = 0;
        r26_addr = 0;
        r27_addr = 0;
        r28_addr = 0;
        r29_addr = 0;
        r30_addr = 0;
        r31_addr = 0;
        r32_addr = 0;
        
        w1_addr = 0;

        w1_din = 0;

        seed = 0;
        ccc = 0;
        times = 0;

for(i = 0 ; i < (2 << BLOCKSIZE); i = i + 1)
            mem[i] = 0;

@(negedge clk);
        rst = 0;

@(negedge clk);
        rst = 1;

@(negedge clk);

while(times < 1000000) begin

while(ccc == 0) begin

    r1_addr = $random(seed);
    r2_addr = $random(seed);
    r3_addr = $random(seed);
    r4_addr = $random(seed);
    r5_addr = $random(seed);
    r6_addr = $random(seed);
    r7_addr = $random(seed);
    r8_addr = $random(seed);
    r9_addr = $random(seed);
    r10_addr = $random(seed);
    r11_addr = $random(seed);
    r12_addr = $random(seed);
    r13_addr = $random(seed);
    r14_addr = $random(seed);
    r15_addr = $random(seed);
    r16_addr = $random(seed);
    r17_addr = $random(seed);
    r18_addr = $random(seed);
    r19_addr = $random(seed);
    r20_addr = $random(seed);
    r21_addr = $random(seed);
    r22_addr = $random(seed);
    r23_addr = $random(seed);
    r24_addr = $random(seed);
    r25_addr = $random(seed);
    r26_addr = $random(seed);
    r27_addr = $random(seed);
    r28_addr = $random(seed);
    r29_addr = $random(seed);
    r30_addr = $random(seed);
    r31_addr = $random(seed);
    r32_addr = $random(seed);
    
    w1_addr = $random(seed);

    en_w1 = $random(seed);
    ccc = 1;

    end

    ccc = 0;

    w1_din[31:8] = 0;
    w1_din[7:0] = $random;

    @(negedge clk);

	if((times % 10000) == 0 ) begin
		$display("Execute: %d times Correct!!", times);
	    end

    if(d1 !== mem[r1_addr]) begin
     
        $display("ERROR:R1 address = %d, golden answer is %d, your is %d", r1_addr, mem[r1_addr], d1);
        
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d2 !== mem[r2_addr]) begin
        
        $display("ERROR:R2 address = %d, golden answer is %d, your is %d", r2_addr, mem[r2_addr], d2);
        
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d3 != mem[r3_addr]) begin

        $display("ERROR:R3 address = %d, golden answer is %d, your is %d", r3_addr, mem[r3_addr], d3);

        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d4 != mem[r4_addr])  begin
        
        $display("ERROR:R4 address = %d, golden answer is %d, your is %d", r4_addr, mem[r4_addr], d4);

        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d5 != mem[r5_addr]) begin
        
        $display("ERROR:R5 address = %d, golden answer is %d, your is %d", r5_addr, mem[r5_addr], d5);

        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d6 != mem[r6_addr]) begin

        $display("ERROR:R6 address = %d, golden answer is %d, your is %d", r6_addr, mem[r6_addr], d6);

        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d7 != mem[r7_addr]) begin
        
        $display("ERROR: R7 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d8 != mem[r8_addr]) begin

        $display("ERROR: R8 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d9 != mem[r9_addr]) begin
        $display("ERROR:R9 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d10 != mem[r10_addr]) begin
        $display("ERROR:R10 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d11 != mem[r11_addr]) begin
        $display("ERROR:R11 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d12 != mem[r12_addr]) begin
        $display("ERROR:R12 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d13 != mem[r13_addr]) begin
        $display("ERROR:R13 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d14 != mem[r14_addr]) begin
        $display("ERROR:R14 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d15 != mem[r15_addr]) begin
        $display("ERROR:R15 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if(d16 != mem[r16_addr]) begin
        $display("ERROR:R16 address is wrong");
        @(negedge clk);
        @(negedge clk);
        $finish;
    end

    if((d17 != mem[r17_addr]) | (d18 != mem[r18_addr]) |
       (d19 != mem[r19_addr]) | (d20 != mem[r20_addr]) |
       (d21 != mem[r21_addr]) | (d22 != mem[r22_addr]) |
       (d23 != mem[r23_addr]) | (d24 != mem[r24_addr]) |
       (d25 != mem[r25_addr]) | (d26 != mem[r26_addr]) |
       (d27 != mem[r27_addr]) | (d28 != mem[r28_addr]) |
       (d29 != mem[r29_addr]) | (d30 != mem[r30_addr]) |
       (d31 != mem[r31_addr]) | (d32 != mem[r32_addr]))

        begin
            $display("ERROR: R17 - R32 address is wrong!!");
            @(negedge clk);
            @(negedge clk);

            $finish;
    end

    if(en_w1)
        mem[w1_addr] = w1_din;

    times = times + 1;

end

    $display("************ PASS ALL *************");
    $finish;

end

endmodule

