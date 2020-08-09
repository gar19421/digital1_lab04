module testbench();

reg
wire

gateLevel1   G1(r1, r2, r3, out1);
operadores1 OP1(r15, r16, r17, r18, out5);


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




initial
  # $finish;

initial begin
  $dumpfile("ejercicio5_tb.vcd");
  $dumpvars(0, testbench);
end

endmodule
