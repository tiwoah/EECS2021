; GOAL: Instruct the compiler to store the values of 0x2222333344445555 and
; 0x1111222233334444 at addresses 0x1000100010001000 and 0x1000100010001100
; respectively. At run time load the values in the registers x6 and x7 respectively then calculate
; the sum, the difference, and the bitwise or and xor of the two values, storing the results in the
; registers x28-x31 respectively.

; Step 1: Define addresses (not constants)
a1: DD c1
a2: DD c2

; Step 2: Set origins and set constants
ORG 0x1000100010001000
c1: DD 0x2222333344445555

ORG 0x1000100010001100
c2: DD 0x1111222233334444

; Step 3: Load address of the constant
ld x6, a1(x0)

; Step 4: Get the constant from memory
ld x6, 0(x6)

; Redo step 3 and 4
ld x7, a2(x0)
ld x7, 0(x7)

; Step 5: Run
add x28, x6, x7
sub x29, x6, x7
or x30, x6, x7
xor x31, x6, x7