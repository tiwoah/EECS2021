// GOAL: Rotate right by 4 bits the value of 0x0000000000000123.
// The expected result is 0x3000000000000012.

// Step 1: Add 0x3 to x6
addi x6, x0, 0x3

// Step 2: Shift 0x3 by 60 (to the front)
slli x6, x6, 60

// Step 3: Add 0x12 to 0x300... into x5
addi x5, x6, 0x12