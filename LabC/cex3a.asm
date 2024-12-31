; GOAL: Write a main program that
; i) asks the user to enter two positive integers a and b
; ii) calls the recursive procedure gcd (a, b) to find their greatest common divisor
; iii) outputs the calculated result
; gcd (x, y) { if (y = 0) return x; else gcd(y, x%y); }

; Step 1: Define string constants
s1: DC "a:"
s2: DC "b:"
s3: DC "GCD:"

; Step 2: Print prompts and get inputs
addi x5, x0, s1
addi x6, x0, s2
addi x7, x0, s3
ecall x1, x5, 4
ecall x28, x0, 5; Store x in x28
ecall x1, x6, 4
ecall x29, x0, 5; Store y in x29

; Step 3: Create recursive procedure gcd
gcd:
  beq x0, x29, return_x
  add x31, x0, x28; Put original x value into x31
  add x28, x29, x0; x = y
  rem x29, x31, x29; y = x%y
  jal x1, gcd
  
return_x:
  ecall x1, x7, 4
  ecall x1, x28, 0
  ebreak x0, x0, 0