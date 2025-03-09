# EECS2021 Computer Organization - Assembly Programming Lab Summary

This repository contains all **EECS2021 assembly programming labs**, covering fundamental concepts like **arithmetic operations, bitwise manipulation, recursion, stack-based operations, memory management, and input handling** in **RISC-V assembly**.

---

## 🛠 Topics Covered Across Labs

- **Arithmetic and Bitwise Operations**: Shifting, addition, subtraction, multiplication, division.
- **Memory Management**: Using `lui`, `addi`, and `DD` commands for structured memory allocation.
- **Recursion & Loops**: Implementing iterative and recursive functions (factorial, GCD, Fibonacci).
- **Stack-based Programming**: Handling binary conversion, expression evaluation, and recursion.
- **Control Flow & Logic**: Conditional branching, comparisons, and iterative logic.
- **String Manipulation**: Handling user input, modifying strings, and printing formatted text.

---

## 📂 Lab Breakdown

### 🔢 **Lab A: Arithmetic & Logical Operations**

| File                          | Concept Practiced                                                                          |
| ----------------------------- | ------------------------------------------------------------------------------------------ |
| [`aex2a.asm`](LabA/aex2a.asm) | **Evaluating arithmetic expressions** `(888/8 - 123*4) * 2` using shifts & multiplications |
| [`aex2b.asm`](LabA/aex2b.asm) | **Constructing 64-bit values** in registers using `addi` & `slli`                          |
| [`aex2c.asm`](LabA/aex2c.asm) | **Bitwise manipulation** to create `0x0000123400000000`                                    |
| [`aex3a.asm`](LabA/aex3a.asm) | **Two’s complement negation**: converting `-5` to `+5`                                     |
| [`aex3b.asm`](LabA/aex3b.asm) | **Performing subtraction** without using `sub`                                             |
| [`aex3c.asm`](LabA/aex3c.asm) | **Bitwise rotation**: Rotating `0x0000000000000123` right by 4 bits                        |
| [`aex4a.asm`](LabA/aex4a.asm) | **Using `lui` & `addi`** to store `8000` and compute `8000 - 10`                           |
| [`aex4b.asm`](LabA/aex4b.asm) | **Handling negative values with `lui`** (`-8000 + 10`)                                     |
| [`aex4c.asm`](LabA/aex4c.asm) | **Memory-based arithmetic**: `23456 - 12345`                                               |
| [`aex4d.asm`](LabA/aex4d.asm) | **64-bit register operations**: Storing `0x1234587811223344`                               |

---

### 🎛️ **Lab B: Memory & Data Processing**

| File                          | Concept Practiced                                                                     |
| ----------------------------- | ------------------------------------------------------------------------------------- |
| [`bex1a.asm`](LabB/bex1a.asm) | **Summing stored values** (1024, 2048, 4096, 8192) and computing average via shifting |
| [`bex1b.asm`](LabB/bex1b.asm) | **Memory operations**: Loading & computing sum, difference, OR & XOR of stored values |
| [`bex1c.asm`](LabB/bex1c.asm) | **Bitwise operations on large numbers**: `AND, OR, XOR, NOT`                          |
| [`bex2a.asm`](LabB/bex2a.asm) | **Finding the largest integer** in a stored sequence                                  |
| [`bex2b.asm`](LabB/bex2b.asm) | **Finding & swapping the smallest integer** in an array                               |
| [`bex2c.asm`](LabB/bex2c.asm) | **Vector addition**: Element-wise sum of two integer arrays                           |
| [`bex3a.asm`](LabB/bex3a.asm) | **User interaction**: Greeting user based on input                                    |
| [`bex3b.asm`](LabB/bex3b.asm) | **Dynamic memory storage**: Storing user-provided numbers at specific addresses       |
| [`bex3c.asm`](LabB/bex3c.asm) | **Phone directory search**: User input lookup system                                  |

---

### 🌀 **Lab C: Stack, Strings, and Recursion**

| File                          | Concept Practiced                                   |
| ----------------------------- | --------------------------------------------------- |
| [`c2a.asm`](LabC/c2a.asm)     | **Printing NULL-terminated strings**                |
| [`c2b.asm`](LabC/c2b.asm)     | **Deleting characters from a string**               |
| [`c3a.asm`](LabC/c3a.asm)     | **Recursive factorial computation**                 |
| [`cex1a.asm`](LabC/cex1a.asm) | **Binary conversion using a stack**                 |
| [`cex1b.asm`](LabC/cex1b.asm) | **Checking palindromes using a stack**              |
| [`cex1c.asm`](LabC/cex1c.asm) | **Postfix notation evaluation** with a stack        |
| [`cex3a.asm`](LabC/cex3a.asm) | **Recursive GCD computation** (Euclidean algorithm) |
| [`cex3b.asm`](LabC/cex3b.asm) | **Recursive Fibonacci sequence**                    |

---

### 🔣 **Lab D: Loops & Advanced Computations**

| File                          | Concept Practiced                                         |
| ----------------------------- | --------------------------------------------------------- |
| [`dex1.asm`](LabD/dex1.asm)   | **Iterative factorial computation**                       |
| [`dex1a.asm`](LabD/dex1a.asm) | **Factorial computation with user input**                 |
| [`dex1b.asm`](LabD/dex1b.asm) | **Summation of all integers** below `n`                   |
| [`dex1c.asm`](LabD/dex1c.asm) | **Finding all divisors** of a number                      |
| [`dex2a.asm`](LabD/dex2a.asm) | **Dot product computation** of two floating-point vectors |
| [`dex2b.asm`](LabD/dex2b.asm) | **Euler’s number approximation** using `1/n!`             |

---

### 🧠 **Practice & Challenge Problems**

| File                                                                    | Concept Practiced                                                          |
| ----------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| [`Factorial.asm`](PracticeSample/Factorial.asm)                         | **Recursive factorial** with base cases                                    |
| [`GreatestCommonDivisor.asm`](PracticeSample/GreatestCommonDivisor.asm) | **Euclidean algorithm** for recursive GCD computation                      |
| [`NestedForLoop.asm`](PracticeSample/NestedForLoop.asm)                 | **Implementing nested for-loops**                                          |
| [`Problem1.asm`](PracticeSample/Problem1.asm)                           | **Finding the smallest of three integers**                                 |
| [`Problem2.asm`](PracticeSample/Problem2.asm)                           | **Classifying integers (both positive, one positive, neither positive)**   |
| [`Problem3.asm`](PracticeSample/Problem3.asm)                           | **Recursive function implementation: `rec_lin(n) = 4 * rec_lin(n-5) + n`** |

---
