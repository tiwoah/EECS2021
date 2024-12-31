; GOAL: An n-dimensional integer vector can be represented by a sequence of n integers.
; Use DD assembler commands to store in the beginning of the memory the sample
; sequences 1, 5, -7, 23, -5 and 3, -2, 4, 11, -7.
; Sum the corresponding two vectors and store the resulting sequence in the memory
; right after the code.

; Step 1: Define initial sequences
src1: DD 1, 5, -7, 23, -5
src2: DD 3, -2, 4, 11, -7
c: DM 5

; Step 2: Initialize iterator and sequence vector length n (5)
add x6, x0, x0
addi x7, x0, 40; Index 5 is 5*8 bytes

; Step 3: For loop n times
loop:
  beq x6, x7, end
  ld x28, src1(x6)
  ld x29, src2(x6)
  add x30, x28, x29
  sd x30, c(x6)
  addi x6, x6, 8
  beq x0, x0, loop

end:
  ebreak x0, x0, 0