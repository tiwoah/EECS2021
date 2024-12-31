; GOAL: Given a sequence of non-zero integers followed by 0,
; find the smallest integer in the sequence
;then swap it with the integer in the beginning of the sequence.
; Use the DD assembler command to store in the beginning of the memory
; the initial test sequence of 121, 33, -5, 242, -45, -12, 0.

; Step 1: Define initial sequence
src: DD 121, 33, -5, 242, -45, -12, 0

; Step 2: Initialize iterator
add x6, x0, x0

; Step 3: Initialize smallest integer
ld x7, src(x6)
add x5, x0, x7

; Step 4: Loop through `src`
loop:
  ld x7, src(x6)
  beq x7, x0, end
  blt x7, x5, update_smallest
  addi x6, x6, 8
  beq x0, x0, loop

; Step 5: Update smallest integer every iteration
update_smallest:
  add x5, x0, x7
  addi x6, x6, 8
  beq x0, x0, loop

; Step 6: Terminate at last index (being 0)
end:
  ebreak x0, x0, 0