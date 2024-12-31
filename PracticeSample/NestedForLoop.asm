s1: DC "Student's number: 123456789"
s2: DC "Input an integer:"

addi x5, x0, s1
ecall x0, x5, 4

addi x6, x0, s2
ecall x0, x6, 4
ecall x1, x0, 5

addi x7, x0, 1; x7 = 1
addi x8, x0, 1; x8 = 1
addi x9, x1, 1; Constant x1 + 1 for loop2
addi x10, x0, 1; Constant 1

loop1:
  
  mul x3, x7, x8
  add x4, x3, x4
  addi x8, x8, 1; x8++
  ecall x0, x4, 0
  blt x8, x1, loop1
  beq x0, x0, loop2
 
loop2:
  addi x4, x4, 10
  addi x7, x7, 1; x7++
  add x8, x0, x10
  blt x7, x9, loop1
  beq x0, x0, end

end:
  ebreak x0, x0, 0  