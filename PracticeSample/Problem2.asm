; GOAL: Write a RISC-V assembly program to read two numbers (x and y).
; If both x and y are positive, display 2
; if only one of them is positive display 1
; otherwise display 0

; Step 1: Define string constants
s1: DC "Input integer:"
s2: DC "Display:"

; Step 2: Prompt and gather inputs
addi x5, x0, s1
addi x6, x0, s2
ecall x1, x5, 4
ecall x7, x0, 5; Store x in x7

addi x5, x0, s1
ecall x1, x5, 4
ecall x28, x0, 5; Store y in x28

; Step 3: Initialize sign markers
; Initially assume both positive
; Value 1 indicates positive
addi x29, x0, 1; Sign marker for x in x29
addi x30, x0, 1; Sign marker for y in x30
addi x3, x0, 1; Use to compare being positive and display
addi x4, x0, 2; Use to display

check_signs:
  blt x7, x0, x_negative
  blt x28, x0, y_negative
  beq x0, x0, evaluate
  
x_negative:
  add x29, x0, x0; Make sign marker 0
  blt x28, x0, y_negative
  beq x0, x0, evaluate

y_negative:
  add x30, x0, x0; Make sign marker 0
  beq x0, x0, evaluate

evaluate:
  beq x29, x3, x_is_positive
  beq x30, x3, y_is_positive
  beq x0, x0, otherwise

x_is_positive:
  ; y is positive too => display 2. otherwise display 1
  beq x29, x30, both_positive
  beq x0, x0, one_positive

y_is_positive:
  ; x is positive too => display 2. otherwise display 1
  beq x29, x30, both_positive
  beq x0, x0, one_positive

both_positive:
  ecall x1, x6, 4
  ecall x0, x4, 0
  ebreak x0, x0, 0

one_positive:
  ecall x1, x6, 4
  ecall x0, x3, 0
  ebreak x0, x0, 0
 
otherwise:
  ecall x1, x6, 4
  ecall x0, x0, 0
  ebreak x0, x0, 0