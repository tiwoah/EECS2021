// GOAL:  Use only addi, lui, slli and add instructions 
// to store in x5 the value of 0x1234587811223 344

// Step 1: Store 0x0000000012345000
lui x6, 0x12345

// Step 2: Shift to front
slli x6, x6, 32

// Step 3: Store 0x0000000008781000
lui x7, 0x8781

// Step 4: Shift x7 to behind the one in x6
slli x7, x7, 16

// Step 5: Store 0x0000000001223000
lui x8, 0x1223

// Step 6: Use addi instead since outside first 20 bits
addi x9, x0, 0x344

// Step 7: Combine all the registers and put into x5
add x10, x6, x7
add x11, x8, x9
add x5, x10, x11