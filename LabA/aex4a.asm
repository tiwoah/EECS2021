// GOAL: Use lui and addi to store the value of 8000 in x6
// Then use addi to calculate of 8000-10 and store in x5

// Step 1: Store 8192
// Note: Since lui is upper 20 bits
lui x6, 2

// Step 2: Add -192 to get 8000
addi x6, x6, -192

// Step 3: Calculate 8000-10
addi x5, x6, -10