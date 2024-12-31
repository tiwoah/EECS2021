; GOAL: Write a RISC-V assembly program to read 3 unsigned integers and display the smallest integer

; Step 1: Define string constants
s1: DC "Input unsigned integer:"

; Step 2: Prompt and gather inputs
addi x5, x0, s1
ecall x0, x5, 4
ecall x6, x0, 5

addi x5, x0, s1
ecall x0, x5, 4
ecall x7, x0, 5

addi x5, x0, s1
ecall x0, x5, 4
ecall x28, x0, 5

; Step 3: Find smallest integer
; Note: Integers in x6, x7, x28
add x29, x0, x6; Initialize smallest as first integer for now
loop:
  blt x7, x29, update_smallest_two
  blt x28, x29, update_smallest_three
  jal x1, end
  

update_smallest_two:
  add x29, x7, x0
  jal x1, loop

update_smallest_three:
  add x29, x28, x0
  jal x1, loop

end:
  ecall x0, x29, 0
  ebreak x0, x0, 0