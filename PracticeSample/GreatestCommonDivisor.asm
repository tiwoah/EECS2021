; GOAL: Greatest common divisor of two integers
; gcd (x, y) {
;   if (y = 0) return x; else gcd(y, x%y);
; }

; Step 1: Prompt
s1: DC "x:"
s2: DC "y:"
addi x5, x0, s1
ecall x0, x5, 4
ecall x5, x0, 5; Store x in x5
addi x6, x0, s2
ecall x0, x6, 4
ecall x6, x0, 5; Store y in x6

; Step 2: Initialize result
add x7, x0, x5; Store result in x7

; Step 3: Apply gcd(y, x%y)
gcd:
  beq x0, x6, return_x
  add x7, x5, x0; Temporarily store original x
  add x5, x6, x0; Overwrite x with y
  rem x6, x7, x6; Use original x
  beq x0, x0, gcd

return_x:
  ecall x0, x5, 0