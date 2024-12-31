; GOAL: Write an assembly program that evaluates expressions in post-fix notation employing a stack.
; We will used simplified post-fix expressions containing only single digit non-negative integers and the operations +, -, * and /.
; Employ the following algorithm:
;  - Push the operands (the digits) in the stack in the order they appear.
;  - If an operator (+, -, *, /) is encountered pop 2 operands from the stack, apply the operator, and push the result back into the stack
;  - The result will be on top of the stack when the end of the expression is reached.
; Here is an example of post-fix notation for testing:

exp: "12+34-*\0" ;(1+2)*(3-4)=-3

; TODO