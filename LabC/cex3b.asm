; GOAL: Fibonacci procedure
; fib(n, a = 0, b = 1) {
;   if (n == 0) return a;
;   if (n == 1) return b;
;   return fib(n - 1, b, a + b);
; }

s1: DC "Input n:"
addi x5, x0, s1
ecall x0, x5, 4
ecall x5, x0, 5; Store n in x5

addi x6, x0, 0; Store a = 0 into x6
addi x7, x0, 1; Store b = 1 into x7
addi x8, x0, 1; Store 1 into x8

jal x1, main
ebreak x0, x0, 0

main:
  blt x8, x5, fib; Recursive if n > 1
  beq x5, x0, return_a; if (n == 0) return a;
  beq x5, x8, return_b; if (n == 1) return b;
  jalr x0, 0(x1)

; fib(n - 1, b, a + b);
fib:
  addi x5, x5, -1; n - 1
  add x28, x6, x0; Store temporary a
  add x6, x7, x0; a = b
  add x7, x28, x7; b = a + b
  beq x0, x0, main
  
return_a:
  ecall x0, x6, 0

return_b:
  ecall x0, x7, 0