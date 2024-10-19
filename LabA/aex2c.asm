// GOAL: Store the value of 0x0000123400000000 in x5 using only addi and slli

// Step 1: Add 0x000...00123 into x6
addi x6, x0, 0x123

// Step 2: Shift 0x000...00123 to the left by 8 bits to make room for 0x4
slli x7, x6, 4

// Step 3: Add x7 and 0x4 together, then put into x5
addi x5, x7, 0x4

// Step 4: shift combination by 32 bits
slli x5, x5, 32