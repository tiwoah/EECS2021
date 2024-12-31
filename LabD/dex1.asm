# GOAL: Write an assembly program that
# i) inputs a small positive integer
# ii) calculates the factorial of that integer
# iii) outputs the calculated result

# a0 = n (number of terms)
# a1 = k (loop counter)
# s1 = e (sum)

addi x10, x0, 5    # x10 = n = 5
jal x1, factorial       # Call fact with n in x10
ebreak x0, x0, 0

factorial:
    addi sp, sp, -16    # Allocate stack space
    sd x1, 8(sp)        # Save return address
    sd x10, 0(sp)       # Save n

    addi x5, x0, 1      # x5 = 1
    bge x5, x10, base_case   # If n <= 1, go to base_case


    # Recursive Case
    addi x10, x10, -1   # n = n - 1
    jal x1, factorial   # Recursively call fact(n - 1)

    # After recursive call
    ld x6, 0(sp)        # x6 = original n
    mul x10, x10, x6    # x10 = fact(n - 1) * n

    ld x1, 8(sp)        # Restore return address
    addi sp, sp, 16     # Deallocate stack space
    jalr x0, 0(x1)      # Return

base_case:
    addi x10, x0, 1     # Return value is 1
    ld x1, 8(sp)        # Restore return address
    addi sp, sp, 16     # Deallocate stack space
    jalr x0, 0(x1)      # Return
