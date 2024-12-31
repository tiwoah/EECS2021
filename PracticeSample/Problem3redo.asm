; GOAL: Write a RISC-V assembly program that includes a main calling program and a procedure called rec_lin.
; The main program reads input n and call the recursive procedure rec_lin (define below).

; The argument n will be passed to rec_lin in register x10
; the procedure should also return the result in register x10
; The main program should then display the result

; If n <= 5 rec_lin(n) = 5
; Else rec_lin(n) = 4 * rec_lin(n-5) + n
; NOT RECURSIVE IF: n <= 5
; RECURSIVE IF n > 5, opposite using blt: 5 < n

s1: DC "Input n:"
addi x5, x0, s1
ecall x0, x5, 4
ecall x5, x0, 5; Store n in x5

addi x6, x0, 5; Store constant 5 in x6
addi x7, x0, 4; Store constant 4 in x6

jal x1, main
ebreak x0, x0, 0

main:
  blt x6, x5, rec_lin; Recursive if 5 < n
  addi x5, x0, 5; Base case when n <= 5, it returns 5
  jalr x0, 0(x1); Return to x1

rec_lin:
  sd x1, -8(sp); Store current sp
  sd x5, -16(sp); Store current n
  addi sp, sp, -16; Push pointer down for two items
  addi x5, x5, -5; Setup recursion again using n-5
  jal x1, main; 
  addi sp, sp, 16; Pop pointer up for two items
  ld x1, -8(sp); Load previous sp
  ld x28, -16(sp); Load previous n into temporary register
  mul x5, x7, x5; 4 * rec_lin(n-5)
  add x5, x5, x28; + n
  jalr x0, 0(x1)
  