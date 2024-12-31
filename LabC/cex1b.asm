; GOAL: Write an assembly program that creates and uses a stack of characters to check if a given string is a palindrome.
; First ask the user to input a string.
; Then, starting from the first character of the string, push one by one its characters into the stack.
; Finall organize a loop to compare one by one the characters of the string with the characters popped from the stack.

; Step 1: Prompt
s1: DC "Input a string: "
addi x5, x0, s1
ecall x1, x5, 4; Print s1
ecall x6, x0, 9; Read input of string

; Step 2: 
; TODO