; Template program defines sample text as a string and outputs it
; string is a NULL-terminated sequence of characters

str1: DC "sampled text\0"

addi x6, x0, str1 ;output
ecall x0, x6, 4
ebreak x0, x0, 0 ;finish