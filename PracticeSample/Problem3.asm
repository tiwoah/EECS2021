; GOAL: Write a RISC-V assembly program that includes a main calling program and a procedure called rec_lin.
; The main program reads input n and call the recursive procedure rec_lin (define below).

; The argument n will be passed to rec_lin in register x10
; the procedure should also return the result in register x10
; The main program should then display the result

; If n <= 5 rec_lin(n) = 5
; Else rec_lin(n) = 4 * rec_lin(n-5) + n
; NOT RECURSIVE IF: n <= 5
; RECURSIVE IF n > 5, opposite using blt: 5 < n

; Step 1: Prompt
s1: DC "Input n:"
addi x5, x0, s1
ecall x1, x5, 4
ecall x10, x0, 5; Store n in x10

addi x3, x0, 5; Constant
addi x4, x0, 6; Constant
addi x28, x0, 4; Constant

jal x1, main
ecall x0, x10, 0; Display result
ebreak x0, x0, 0

main:
  blt x3, x10, rec_lin; if 5 < n, call recursive procedure
  addi x10, x0, 5; otherwise, base case returns 5
  jalr x0, 0(x1)

rec_lin:
  sd x1, -8(sp); Store return address
  sd x10, -16(sp); Store value of n
  addi sp, sp, -16; Move stack pointer down for 2 items
  addi x10, x10, -5; n-5
  jal x1, main
  addi sp, sp, 16; Move stack pointer up for 2 items
  ld x1, -8(sp); Restore return address
  ld x29, -16(sp); Restore previous value of n
  mul x10, x28, x10; 4 * rec_lin(n-5)
  add x10, x10, x29; + n
  jalr x0, 0(x1)