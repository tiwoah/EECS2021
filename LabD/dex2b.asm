; GOAL: Create an assembly program that approximates the value of e
; e = Summation of 1/n!
; e = 2.71828182845904523536

; Step 1: Define constants
s1: DC "Input n:"
d1: DF 1.0

; Step 2: Prompt
addi x5, x0, s1
ecall x0, x5, 4
ecall x5, x0, 5; Initialize n

; Step 3: Setup counter variable for 1/k!
add x8, x0, x0; Set k = 0 as initial counter
add x9, x0, x5; Hold original n in x9 since fact uses x5
fld f1, d1(x0); Store 1.0 into f1

; Step 4: Call recursive procedure for summation up to n
jal x1, summation
ebreak x0, x0, 0

summation:
  bge x9, x8, summation_loop; if n >= k
  ebreak x0, x0, 0
  jalr x0, 0(x1)

summation_loop:
  add x5, x0, x8; Set n = k for computing new factorial
  jal x1, fact; Calculate k!
  fcvt.d.l f2, x5; Store result k! as float into f2
  fdiv.d f3, f1, f2; Divide 1 by k! and store quotient into f3
  fadd.d f4, f4, f3; Add 1/k! to sum
  addi x8, x8, 1; k+1
  jal x1, summation

fact:
  blt x0, x5, recu; if 0 < n then call recursive procedure
  addi x5, x0, 1; return 1
  jalr x0, 0(x1)

recu:
  sd x1, -8(sp)
  sd x5, -16(sp)
  addi sp, sp, -16; Push stack down
  addi x5, x5, -1; n - 1 
  jal x1, fact
  addi sp, sp, 16; Push stack up
  ld x1, -8(sp)
  ld x7, -16(sp)
  mul x5, x7, x5;
  jalr x0, 0(x1)