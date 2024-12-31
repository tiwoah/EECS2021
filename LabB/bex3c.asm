; GOAL: Create a program that
; i) asks the user to enter a phone or a name
; ii) searches the directory,
; iii) reports the found entries.
; The above process continues in a loop until cancelled.

; Challenges: 
;  - user can input either a name or a phone number
;  - you need to print both name(s) and phone number(s) associated with chosen input
; Solution: iterate in pairs (two entries at a time)

; Step 1: Define directory (label `dir` is the first index)
dir: DC "John"
DC "11111"
DC "Nick"
DC "22222"
DC "Sara"
DC "11111"
DC "Nick"
DC "33333"
DD 0

; Step 2: Define string constants
s1: DC "Enter a phone or a name to search for:"
c1: DC " "

; Step 3: Load address of string into x5
addi x5, x0, s1
addi x30, x0, c1

; Step 4: Create procedure loop
loop:
  ecall x0, x5, 4
  ecall x6, x0, 8; Code 8 for input sequence of characters (max chars = 8)
  add x7, x0, x0; Initialize and overwrite x7 as pair iterator
  jal x1, iterate_dir

; Step 5: Search directory
iterate_dir:
  ld x10, dir(x7); Load item at index x7 of `dir` into x10
  beq x10, x0, end
  jal x1, check_match
  addi x7, x7, 16; Increment iterator by 16 bytes (size of 2 entries in `dir`)
  beq x0, x0, iterate_dir

; Step 6: Check if input matches any inside current iterated pair
check_match:
  add x28, x7, x0; Set x28 as temporary iterator for the pair (either the first or second)
  ld x11, dir(x28); Load the first of the pair
  addi x28, x28, 8
  ld x12, dir(x28); Load the second of the pair
  beq x6, x11, print_pair; The input matched the name
  beq x6, x12, print_pair; The input matched the number
  jalr x0, 0(x1)

; Step 7: Print the name and number of the current iterated pair
print_pair:
  ecall x29, x11, 3; Print name
  ecall x29, x30, 4; Print " "
  ecall x0, x12, 3; Print number
  addi x7, x7, 16; Increment iterator by 16 bytes (size of 2 entries in `dir`)
  jal x1, iterate_dir

end:
  jal x1, loop