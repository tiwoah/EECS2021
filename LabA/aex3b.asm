// GOAL: Calculate the value of 1234-(567+89) without using sub

// Step 1: -567-89
addi x6, x0, -567

// Step 2: Add x6 and -89 to x7
addi x7, x6, -89

// Step 3: Add
addi x5, x7, 1234