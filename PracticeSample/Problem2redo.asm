; GOAL: Write a RISC-V assembly program to read two numbers (x and y).
; If both x and y are positive, display 2
; if only one of them is positive display 1
; otherwise display 0

; Step 1: Prompts
s1: DC "x:"
s2: DC "y:"
addi x5, x0, s1
ecall x0, x5, 4
ecall x5, x0, 5; Store x in x5
addi x6, x0, s2
ecall x0, x6, 4
ecall x6, x0, 5; Store y in x6

; Step 2: Store display values
addi x7, x0, 2
addi x8, x0, 1

; Step 3: Evaluate possibilites
bge x5, x0, x_positive; if x >= 0
bge x6, x0, y_positive; if y >= 0
bge x0, x0, display_0;

x_positive:
  ; Either y is positive too (display 2) or not (display 1)
  bge x6, x0, x_y_positive; y >= 0
  beq x0, x0, display_1

y_positive:
  ; Either x is positive too (display 2) or not (display 1)
  bge x5, x0, x_y_positive; x >= 0
  beq x0, x0, display_1
  
x_y_positive:
  beq x0, x0, display_2

display_1:
  ecall x0, x8, 0
  ebreak x0, x0, 0

display_2:
  ecall x0, x7, 0
  ebreak x0, x0, 0

display_0:
  ecall x0, x0, 0
  ebreak x0, x0, 0