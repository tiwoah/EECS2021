// GOAL: Use lui and addi to store 23456 in x6 and 12345 in x7.
// Then use sub to calculate 23456-12345 and store in x5.

// Step 1: Nearest to 23456 is 24576 (6 shifted left by 12)
lui x6, 6

// Step 2: Subtract the difference to get 23456
addi x6, x6, -1120

// Step 3: Nearest to 12345 is 12288
lui x7, 3

// Step 4: Subtract the difference to get 12345
addi x7, x7, 57

// Step 5: Sub to calculate 23456-12345
sub x5, x6, x7