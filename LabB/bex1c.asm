; GOAL: Instruct the compiler to store the values of a=0xAAAABBBBCCCCDDDD and
; b=0x4444333322221111 at addresses 0 and 8 respectively. Calculate a+b, a-b, b-a, a
; AND b, a OR b, a XOR b, NOT a, NOT b, then store the results in consecutive double words
; starting at address 16.

ORG 0x00000100

c1: DD 0xAAAABBBBCCCCDDDD
c2: DD 0x4444333322221111

ld x5, c1(x0)
ld x6, c2(x0)

add x7, x5, x6

addi x1, x0, 16

sd x7, 8(x1)