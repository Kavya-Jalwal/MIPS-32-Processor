`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2025 10:53:02
// Design Name: 
// Module Name: test_mips32
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//module test_mips32;
//  reg clk1, clk2;
//  integer k;
//  pipe_MIPS32 mips(clk1, clk2);

//  // Initial clock generation
//  initial begin
//    clk1 = 0; clk2 = 0;
//    repeat(50) begin
//      #200 clk1 = 1; #200 clk1 = 0;
//      #200 clk2 = 1; #200 clk2 = 0;
//    end
//  end

//  // Initialize registers and memory
//  initial begin
//    // Initialize registers R0 to R30 with arbitrary values
//    for (k = 0; k < 31; k = k + 1)
//      mips.Reg[k] = k;

//    // Program Instructions in memory
//    mips.Mem[0] = 32'h2801000a;  // ADDI R1, R0, 10
//    mips.Mem[1] = 32'h28020014;  // ADDI R2, R0, 20
//    mips.Mem[2] = 32'h28030019;  // ADDI R3, R0, 25
//    mips.Mem[3] = 32'h0ce77800;  // OP R7, R7, R7 (dummy)
//    mips.Mem[4] = 32'h0ce77800;  // OP R7, R7, R7 (dummy)
//    mips.Mem[5] = 32'h00222000;  // ADD R4, R1, R2
//    mips.Mem[6] = 32'h0ce77800;  // OR R7, R7, R7 (dummy)
//    mips.Mem[7] = 32'h00832800;  // ADD R5, R4, R3
//    mips.Mem[8] = 32'hfc000000;  // HLT (halt)

//    // Initialize control signals
//    mips.HALTED = 0;
//    mips.PC = 0;
//    mips.TAKEN_BRANCH = 0;

//    // Allow enough time for the processor to run through the instructions
//    #10000;

//    // End simulation
//    $finish;
//  end

//  // Monitor register values and pipeline signals during simulation
//  initial begin
//    $monitor("Time = %0t, PC = %h, IF_ID_IR = %h, ID_EX_IR = %h, EX_MEM_IR = %h, MEM_WB_IR = %h, R0 = %d, R1 = %d, R2 = %d, R3 = %d, R4 = %d, R5 = %d", 
//              $time, mips.PC, mips.IF_ID_IR, mips.ID_EX_IR, mips.EX_MEM_IR, mips.MEM_WB_IR,
//              mips.Reg[0], mips.Reg[1], mips.Reg[2], mips.Reg[3], mips.Reg[4], mips.Reg[5]);
//  end

//endmodule

//module test_mips32;
//  reg clk1, clk2;
//  integer k;
//  pipe_MIPS32 mips(clk1, clk2);

//  // Initial clock generation
//  initial begin
//    clk1 = 0; clk2 = 0;
//    repeat(50) begin
//      #200 clk1 = 1; #200 clk1 = 0;
//      #200 clk2 = 1; #200 clk2 = 0;
//    end
//  end

//  // Initialize registers and memory
//  initial begin
//    // Initialize registers R0 to R30 with arbitrary values
//    for (k = 0; k < 31; k = k + 1)
//      mips.Reg[k] = k;

//    // Program Instructions in memory
//    mips.Mem[0] = 32'h28010078;  // ADDI R1, R0, 120
//    mips.Mem[1] = 32'h0c631800;  // OR R3,R3,R3(dummy)
//    mips.Mem[2] = 32'h20220000;  // LW R2,0(R1)
//    mips.Mem[3] = 32'h0c631800;  // OR R3,R3,R3 (dummy)
//    mips.Mem[4] = 32'h2842002d;  // ADDI R2,R2,45
//    mips.Mem[5] = 32'h0c631800;  // OR R3,R3,R3(dummy)
//    mips.Mem[6] = 32'h24220001;  // SW R2,1(R1)
//    mips.Mem[7] = 32'hfc000000;  // HLT (halt)
//    mips.Mem[120]=85;

//    // Initialize control signals
//    mips.HALTED = 0;
//    mips.PC = 0;
//    mips.TAKEN_BRANCH = 0;

//    // Allow enough time for the processor to run through the instructions
    
//     #10000;

//    // End simulation
//    $finish;
//  end

//  // Monitor register values and pipeline signals during simulation
//  initial begin
//    $monitor("Time = %0t, PC = %h, IF_ID_IR = %h, ID_EX_IR = %h, EX_MEM_IR = %h, MEM_WB_IR = %h, Mem[120] = %d, Mem[121]=%d", 
//              $time, mips.PC, mips.IF_ID_IR, mips.ID_EX_IR, mips.EX_MEM_IR, mips.MEM_WB_IR,
//              mips.Mem[120], mips.Mem[121]);
//  end
  

//endmodule
 module test_mips32;
  reg clk1, clk2;
  integer k;
  pipe_MIPS32 mips(clk1, clk2);

  // Initial clock generation
  initial begin
    clk1 = 0; clk2 = 0;
    repeat(50) begin
      #200 clk1 = 1; #200 clk1 = 0;
      #200 clk2 = 1; #200 clk2 = 0;
    end
  end

  // Initialize registers and memory
  initial begin
    // Initialize registers R0 to R30 with arbitrary values
    for (k = 0; k < 31; k = k + 1)
      mips.Reg[k] = k;

    // Program Instructions in memory
    mips.Mem[0] = 32'h280a00c8;  // ADDI R10,R0,200
    mips.Mem[1] = 32'h28020001;  // ADDI R2,R0,1
    mips.Mem[2] = 32'h0e94a000;  // OR R20,R20,R20(dummy)
    mips.Mem[3] = 32'h21430000;  // LW R3,0(R10)
    mips.Mem[4] = 32'h0e94a000;  // OR R20,R20,R20
    mips.Mem[5] = 32'h14431000;  // Loop:MUL R2,R2,R3
    mips.Mem[6] = 32'h2c630001;  // SUBI R3,R3,1
    mips.Mem[7] = 32'h0e94a000;  // OR R20,R20,R20
    mips.Mem[8] = 32'h3460fffc; // BNEQZ R3,Loop
    mips.Mem[9] = 32'h2542fffc;// SW R2,-2(R10)
    mips.Mem[10]= 32'hfc000000;//HLT
    mips.Mem[200]=7;

    // Initialize control signals
    mips.HALTED = 0;
    mips.PC = 0;
    mips.TAKEN_BRANCH = 0;

    // Allow enough time for the processor to run through the instructions
    
     #60000;

    // End simulation
    $finish;
  end
  // Monitor register values and pipeline signals during simulation
  initial begin
    $monitor("Time = %0t, PC = %h, IF_ID_IR = %h, ID_EX_IR = %h, EX_MEM_IR = %h, MEM_WB_IR = %h, Mem[200] = %d, Mem[196]=%d", 
              $time, mips.PC, mips.IF_ID_IR, mips.ID_EX_IR, mips.EX_MEM_IR, mips.MEM_WB_IR,
              mips.Mem[200], mips.Mem[196]);
  end
  

endmodule





