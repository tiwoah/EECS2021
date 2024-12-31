; GOAL: Write an assembly program that
; i) inputs a positive integer n
; ii) sums all positive integers smaller than n in a loop
; iii) outputs the obtained result

; Step 1: Prompt
s1: DC "Input n:"
addi x5, x0, s1
ecall x1, x5, 4
ecall x10, x0, 5; Store n in x10

addi x10, x10, -1; Since sums up until n-1

jal x1, main
ebreak x0, x0, 0

main:
  blt x0, x10, recu
  addi x10, x0, 0; base case
  jalr x0, 0(x1)

recu:
  sd x1, -8(sp)
  sd x10, -16(sp)
  addi sp, sp, -16
  addi x10, x10, -1; n - 1
  jal x1, main
  addi sp, sp, 16
  ld x1, -8(sp)
  ld x11, -16(sp)
  add x10, x11, x10
  jalr x0, 0(x1)
  