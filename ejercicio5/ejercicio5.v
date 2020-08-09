// GATE LEVEL MODEL EJECICIO 5

// ECUACION SOP

module gateLevel1(input wire A, B, C, output wire Y);

  wire notA, notC, notB, w1, w2, w3;

  not (notA, A);
  not (notB, B);
  not (notC, C);
  and (w1, A, notB , notC);
  and (w2, A, notB, C);
  and (w3, A, B, C);
  or  (Y, w1, w2, w3);

endmodule

// ECUACION POS

module gateLevel2(input wire A, B, C, output wire Y);

  wire notA, notC, notB, w1, w2, w3, w4, w5;

  not (notA, A);
  not (notB, B);
  not (notC, C);
  or (w1, A, B , C);
  or (w2, A, B, notC);
  or (w3, A, notB, C);
  or (w4, A, notB, notC);
  or (w5, notA, notB, C);
  and (Y, w1, w2, w3, w4, w5);

endmodule


// ECUACION MINIMIZADA Y = ( AB' + AC )

module gateLevel3(input wire A, B, C, output wire Y);

  wire notA, notC, notB, w1, w2;

  not (notA, A);
  not (notB, B);
  not (notC, C);
  and (w1, A, notB);
  and (w2, A, C);
  or  (Y, w1, w2);

endmodule


// BEHAVIORAL MODELING EJERCICIO 5

// ECUACION SOP

module operadores1(input wire A, B, C, output wire Y);

  assign Y = (A & ~B & ~C) | (A & ~B & C) | (A & B & C);

endmodule

// ECUACION POS

module operadores2(input wire A, B, C, output wire Y);

  assign Y = (A | B | C) & (A | B | ~C) & (A | ~B | C) & (A | ~B | ~C) & (~A | ~B | C);

endmodule


// ECUACION MINIMIZADA Y = ( AB' + AC )

module operadores3(input wire A, B, C, output wire Y);

  assign Y = (A & ~B) | (A & C);

endmodule
