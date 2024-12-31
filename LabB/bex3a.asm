; GOAL: Ask the user for his name then greet him as per the following dialog:
; What is your name?
; John
; Hello John! 

; Step 1: Define strings and character constants
s1: DC "What is your name?"
s2: DC "Hello "
c1: DC "!"

; Step 2: Load constants addresses from memory into registers
ld x5, s1(x0)
ld x6, s2(x0)
ld x7, c1(x0)

; Step 3: Add constants to register
addi x5, x0, s1
addi x6, x0, s2
addi x7, x0, c1

; Step 4: Print out s1
ecall x0, x5, 4

; Step 5: Read string input
ecall x9, x0, 9

; Step 6: Print "Hello " + (name) + '!'
; Note: Destination register as x0 prints it on a new line. Otherwise it does not seem to do anything.
ecall x9, x6, 4
ecall x7, x9, 4
ecall x1, x7, 4