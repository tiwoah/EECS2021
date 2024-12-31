; GOAL: n!
; n < 0 -> return 1

s1: DC "Input n:"

addi x5, x0, s1
ecall x0, x5, 4
ecall x6, x0, 5

jal x1, main
ebreak x0, x0, 0

main:
  blt x0, x6, recu; if 0 < n then recursion
  addi x6, x0, 1; if n <= 0 return 1
  jalr x0, 0(x1)

recu:
  sd x1, -8(sp)
  sd x6, -16(sp)
  addi sp, sp, -16
  addi x6, x6, -1; n-1
  jal x1, main
  addi sp, sp, 16
  ld x1, -8(sp)
  ld x7, -16(sp)
  mul x6, x6, x7
  jalr x0, 0(x1)
  