// GOAL: Store 0xffffffff00000000 in x5 using only addi and slli

// Step 1: Store 0xffffffffffffffff
addi x5, x0, -1

// Step 2: Shift left by 32 bits to remove lower half
slli x6, x5, 32