// GATE LEVEL MODEL EJECICIO 5

// ECUACION SOP

module gateLevel1(input wire A, B, C, output wire Y);

  wire notA, notC, notB, w1, w2, w3;

  not (notA, A);
  not (notB, B);
  not (notC, C);
  and (w1, notA, notC);
  and  (w2, A, notB);
  and (w3, A, C);
  or  (Y, w1, w2, w3);

endmodule




// BEHAVIORAL MODELING EJERCICIO 5

// ECUACION SOP

module operadores1(input wire A, B, C, D, output wire Y);

  assign Y = (~B & ~C & ~D) | (A & ~C) | (A & ~D) | (A & ~B);

endmodule
