; GOAL: Create a program that 
; i) asks the user to enter an integer value
; ii) asks the user to enter a memory address
; iii) stores the entered integer value in the memory at the entered address.
; The above process continues in a loop until cancelled.

; Step 1: Define string constants
s1: DC "Enter integer:"
s2: DC "Enter memory address:"
c: DM 1; Defined in memory 40 bytes after those two strings

; Step 2: Get values from addresses into registers
addi x8, x0, s1
addi x9, x0, s2

; Step 3: Create loop procedure
loop:
  ecall x0, x8, 4
  ecall x7, x0, 5
  ecall x0, x9, 4
  ecall x28, x0, 5

  addi x28, x28, -40; Since c label is 40 bytes from 0
  sd x7, c(x28); Store address input (x28) - 40 bytes (c offsets it by +40)
  jal x1, loop