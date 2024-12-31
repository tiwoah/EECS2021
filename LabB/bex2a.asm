; GOAL: Given a sequence of non-zero integers followed by 0,
; find the biggest integer in the sequence and place the result in x5.
; Use the DD assembler command to store in the beginning of the memory
; the initial test sequence of -1, 55, -3, 7, 0.

; Step 1: Store sequence of doubles
dst: DM 1
src: DD -1, 55, -3, 7, 0

; Step 2: Initiate iterator
add x6, x0, x0

; Step 3: Initiate largest integer as the first number
ld x5, src(x6)
add x28, x0, x5

; Step 4: Loop through `src`
loop:
  ld x5, src(x6)
  beq x5, x0, end
  bge x5, x28, update_largest
  addi x6, x6, 8
  beq x0, x0, loop

; Step 5: Update largest number each iteration
update_largest:
  add x28, x5, x0
  addi x6, x6, 8
  beq x0, x0, loop

; Step 6: End loop at last index (being 0)
end:
  add x5, x28, x0; Move largest integer to x5
  ebreak x0, x0, 0

