; GOAL: Write an assembly program for calculating the dot product of two vectors.
; Use DD assembler commands to store in the beginning of the memory two sample vector,
; e.g. 1.21, 5.85, -7.3, 23.1, -5.55 and 3.14, -2.1, 44.2, 11.0, -7.77.
; Calculate the corresponding dot product and store the resulting value (-3.392210E+001)
; in the memory right after the code

vector1: DF 1.21, 5.85, -7.3, 23.1, -5.55
vector2: DF 3.14, -2.1, 44.2, 11.0, -7.77
d: DM 5

addi x5, x0, 5; Predefined vector length n = 5
addi x6, x0, 0; Counter
addi x7, x0, 40; 5th index is 5*8 bytes

loop:
  beq x6, x7, end
  fld f1, vector1(x6)
  fld f2, vector2(x6)
  fmul.d f3, f1, f2
  fadd.d f4, f3, f4
  addi x6, x6, 8; Increment counter by 8 bytes
  beq x0, x0, loop

end:
  ebreak x0, x0, 0