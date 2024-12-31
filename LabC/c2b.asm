; GOAL: Delete Character

; Step 1: Define string
str1: DC "sampled text\0"; Null terminator `\0` == 0

; Step 2: Setup address of the character to delete ('s' at 0 then +6 for 'd')
addi a2, x0, str1+6

; Step 3: Jump to `delch1` procedure
jal x1, delch1

addi x6, x0, str1 ;output
ecall x0, x6, 4
ebreak x0, x0, 0 ;finish

; Step 4: Load the character at the address in `a2` into `x5` (first character to delete)
delch1:
  lb x5, 0(a2)

; Step 5: Loop gets run right after `delch1`
; This iterates through each character after the one marked for deletion
; Essentially by shifting each character one position to the left
loop1: 
  beq x5, x0, end1; Branch to end if reached null terminator
  lb x5, 1(a2); From char at a2, load the next byte into x5
  sb x5, 0(a2); Store the next byte by replacing x5
  addi a2, a2, 1; Increment iterator for next byte
  jal x0, loop1

; Step 6: Exit loop and return to original procedure call x1
end1:
  jalr x0, 0(x1)