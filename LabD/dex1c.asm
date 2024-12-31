; GOAL: Write an assembly program that 
; i) inputs a positive integer i,
; ii) finds all its divisors
; iii) outputs the calculated result.

; Step 1: Define strings constants
s1: DC "Find all divisors.\0"
s2: DC "Enter i:\0"
s3: DC "Divisors:\0"

; Step 2: Print out s1
addi x5, x0, s1
ecall x0, x5, 4

; Step 3: Print out s2
addi x1, x0, s2
ecall x0, x1, 4

; Step 4: Get int input
ecall x1, x1, 5
add x6, x1, a0

; Step 5: Print out s3
addi x5, x0, s3
ecall x0, x5, 4

//start checkng for divisors
addi x5, x0, 1 ///initialize x5 to 1 (start checking divisors from 1

finddivisors:
	rem x7, x6, x5 //calculate remainder
	beq x7, x0, outputdivisor //if remainder = 0, x5 is divisor

nextcheck:
	addi x5, x5, 1 //increment to next divisor to check
	blt x6, x5, endcheck //if x6 < x5 end the loop (same as x5 > x6)
	jal x0, finddivisors

outputdivisor:
	add x7, x5, x0 //add the divisor to x7
	ecall x0, x7, 0
	jal x0, nextcheck

endcheck:
	ebreak x0, x0, 0 //end loop