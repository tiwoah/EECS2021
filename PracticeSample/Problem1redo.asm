; GOAL: Write a RISC-V assembly program to read 3 unsigned integers and display the smallest integer

s1: DC "Input int:"
s2: DC "Smallest int:"
addi x5, x0, s1
ecall x1, x5, 4
ecall x6, x0, 5
ecall x1, x5, 4
ecall x7, x0, 5
ecall x1, x5, 4
ecall x8, x0, 5

; Step 2: Create variable to hold current smallest
add x9, x0, x6; Assume first input is smallest

blt x7, x9, second_smallest
blt x8, x9, third_smallest
beq x0, x0, end

second_smallest:
  add x9, x0, x7
  blt x8, x9, third_smallest
  beq x0, x0, end

third_smallest:
  add x9, x0, x8

end:
  ecall x0, x9, 0
  ebreak x0, x0, 0