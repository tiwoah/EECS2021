// GOAL: Convert -5 to +5 by negating its bits and adding 1
// Note: (x complement) + 1 = -x

// Step 1: Put -5 into x5
addi x5, x0, -5

// Step 2: Get the complement of x (flip bits)
xori x6, x5, -1

// Step 3: Add 1 to the complement to get -x
addi x7, x6, 1