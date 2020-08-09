module testbench();

  reg r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26,r27, r28;
  wire out1, out2, out3, out4, out5, out6, out7, out8;

  gateLevel1   G1(r1, r2, r3, out1);
  gateLevel2   G2(r4, r5, r6, out2);
  gateLevel3   G3(r7, r8, r9, r10, out3);
  gateLevel4   G4(r11, r12, r13, r14, out4);
  operadores1 OP1(r15, r16, r17, r18, out5);
  operadores2 OP2(r19, r20, r21, out6);
  operadores3 OP3(r22, r23, r24, r25, out7);
  operadores4 OP4(r26, r27, r28, out8);

  initial begin
    $display(" ejercicio 1 - tablas");
    $display("A B C | Y");
    $display("------|---");
    $monitor("%b %b %b | %b ", r1, r2, r3, out1);
    r1 = 0; r2 = 0; r3 = 0;
    #1 r3 = 1;
    #1 r2 = 1; r3 = 0;
    #1 r3 = 1;
    #1 r1 = 1; r2 = 0; r3 = 0;
    #1 r3 = 1;
    #1 r2 = 1; r3 = 0;
    #1 r3 = 1;
  end

  initial begin
    #10
    $display("\n");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", r4, r5, r6, out2);
       r4 = 0; r5 = 0; r6 = 0;
    #1 r6 = 1;
    #1 r5 = 1; r6 = 0;
    #1 r6 = 1;
    #1 r4 = 1; r5 = 0; r6 = 0;
    #1 r6 = 1;
    #1 r5 = 1; r6 = 0;
    #1 r6 = 1;
  end

  initial begin
    #19
    $display("\n");
    $display("A B C D | Y");
    $display("--------|---");
    $monitor("%b %b %b %b | %b", r7, r8, r9, r10, out3);
    r7 = 0; r8 = 0; r9 = 0; r10 = 0;
    #1 r10 = 1;
    #1 r9 = 1; r10 = 0;
    #1 r10 = 1;
    #1 r8 = 1; r9 = 0; r10 = 0;
    #1 r10 = 1;
    #1 r9 = 1; r10 = 0;
    #1 r10 = 1;
    #1 r7 =1; r8 = 0; r9 = 0; r10 = 0;
    #1 r10 = 1;
    #1 r9 = 1; r10 = 0;
    #1 r10 = 1;
    #1 r8 = 1; r9 = 0; r10 = 0;
    #1 r10 = 1;
    #1 r9 = 1; r10 = 0;
    #1 r10 = 1;
  end

  initial begin
    #36
    $display("\n");
    $display("A B C D | Y");
    $display("--------|---");
    $monitor("%b %b %b %b | %b", r11, r12, r13, r14, out4);
    r11 = 0; r12 = 0; r13 = 0; r14 = 0;
    #1 r14 = 1;
    #1 r13 = 1; r14 = 0;
    #1 r14 = 1;
    #1 r12 = 1; r13 = 0; r14 = 0;
    #1 r14 = 1;
    #1 r13 = 1; r14 = 0;
    #1 r14 = 1;
    #1 r11 =1; r12 = 0; r13 = 0; r14 = 0;
    #1 r14 = 1;
    #1 r13 = 1; r14 = 0;
    #1 r14 = 1;
    #1 r12 = 1; r13 = 0; r14 = 0;
    #1 r14 = 1;
    #1 r13 = 1; r14 = 0;
    #1 r14 = 1;
  end

  initial begin
    #53
    $display("\n");
    $display(" ejercicio 2 - ecuaciones");
    $display("A B C D | Y");
    $display("--------|---");
    $monitor("%b %b %b %b | %b", r15, r16, r17, r18, out5);
    r15 = 0; r16 = 0; r17 = 0; r18 = 0;
    #1 r18 = 1;
    #1 r17 = 1; r18 = 0;
    #1 r18 = 1;
    #1 r16 = 1; r17 = 0; r18 = 0;
    #1 r18 = 1;
    #1 r17 = 1; r18 = 0;
    #1 r18 = 1;
    #1 r15 =1; r16 = 0; r17 = 0; r18 = 0;
    #1 r18 = 1;
    #1 r17 = 1; r18 = 0;
    #1 r18 = 1;
    #1 r16 = 1; r17 = 0; r18 = 0;
    #1 r18 = 1;
    #1 r17 = 1; r18 = 0;
    #1 r18 = 1;
  end

  initial begin
    #70
    $display("\n");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", r19, r20, r21, out6);
       r19 = 0; r20 = 0; r21 = 0;
    #1 r21 = 1;
    #1 r20 = 1; r21 = 0;
    #1 r21 = 1;
    #1 r19 = 1; r20 = 0; r21 = 0;
    #1 r21 = 1;
    #1 r20 = 1; r21 = 0;
    #1 r21 = 1;
  end

  initial begin
    #79
    $display("\n");
    $display("A B C D | Y");
    $display("--------|---");
    $monitor("%b %b %b %b | %b", r22, r23, r24, r25, out7);
    r22 = 0; r23 = 0; r24 = 0; r25 = 0;
    #1 r25 = 1;
    #1 r24 = 1; r25 = 0;
    #1 r25 = 1;
    #1 r23 = 1; r24 = 0; r25 = 0;
    #1 r25 = 1;
    #1 r24 = 1; r25 = 0;
    #1 r25 = 1;
    #1 r22 = 1; r23 = 0; r24 = 0; r25 = 0;
    #1 r25 = 1;
    #1 r24 = 1; r25 = 0;
    #1 r25 = 1;
    #1 r23 = 1; r24 = 0; r25 = 0;
    #1 r25 = 1;
    #1 r24 = 1; r25 = 0;
    #1 r25 = 1;
  end

  initial begin
    #96
    $display("\n");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", r26, r27, r28, out8);
       r26 = 0; r27 = 0; r28 = 0;
    #1 r28 = 1;
    #1 r27 = 1; r28 = 0;
    #1 r28 = 1;
    #1 r26 = 1; r27 = 0; r28 = 0;
    #1 r28 = 1;
    #1 r27 = 1; r28 = 0;
    #1 r28 = 1;
  end

  initial
    #111 $finish;

  initial begin
    $dumpfile("ejercicio4_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
