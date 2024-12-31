; GOAL: Instruct the assembler to store the values of 1024, 2048, 4096, 8192 in
; the beginning of the memory using the DD assembler command. Sum them, calculate their
; average using a shift instruction, and store the result in memory right after the compiled code.

; Step 1: Store values as constants in memory
c1: DD 1024
c2: DD 2048
c3: DD 4096
c4: DD 8192

; Step 2: Load contants from memory to registers
ld x6, c1(x0)
ld x7, c2(x0)
ld x8, c3(x0)
ld x9, c4(x0)

; Step 3: Add constants
add x5, x6, x7
add x5, x5, x8
add x5, x5, x9

; Step 4: Divide by 4 (2^2)
srli x5, x5, 2