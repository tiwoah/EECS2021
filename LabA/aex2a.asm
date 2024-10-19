// GOAL: Calculate (888/8-123*4)*2

// Step 1: 888/8
addi x5, x0, 888
srli x6, x5, 3

// Step 2: 123*4
addi x7, x0, 123
slli x28, x7, 2

// Step 3: 888/8-123*4
sub x29, x6, x28

// Step 4: Multiply by 2 (2^1)
slli x30, x29, 1