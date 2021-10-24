// divides R13 (which we will 	call a) /R14 (called b)

// init : copies R13 to A and R14 to B 
@R13
D=M
@A
M=D

@R14
D=M
@B
M=D


// if a<b, return 0
@A
D=M
@B
D=D-M
@RETURNZERO
D;JLT

// if a==b, return 1
@RETURNONE
D;JEQ

// else, goes to the non-trivial part
@MAIN
0;JMP

(RETURNONE)
@R15
M=1
@END
0;JMP

(RETURNZERO)
@R15
M=0
@END
0;JMP

(MAIN)
// start of non-trivial code
@TEMP_TIMES
M=1
@R15
M=0

(LOOP_HEAD)
// while a>b, enter loop and go to inner condition
@A
D=M
@B
D=D-M
@LOOP_INNER_CONDITION
D;JGT

@FINALIZE // exits the loop if "while" condition does not hold
0;JMP

(LOOP_INNER_CONDITION)
// if a>2b
@A
D=M
@B
D=D-M
D=D-M

// if true, goes to A_GREATER_TWICE_B
@A_GREATER_TWICE_B
D;JGT

// if false, goes to A_NOT_GREATER_TWICE_B
@A_NOT_GREATER_TWICE_B
0;JMP

(A_GREATER_TWICE_B)
@B
M=M<<

@TEMP_TIMES
M=M<<
@LOOP_HEAD
0;JMP

(A_NOT_GREATER_TWICE_B)
// result += temp_times
@TEMP_TIMES
D=M
@R15
M=D+M

//temp_times = 1
@TEMP_TIMES
M=1

// a-=b
@B
D=M
@A
M=M-D

// reverts B to original value
@R14
D=M
@B
M=D

@LOOP_HEAD
0;JMP // loop ended, going back to its start


(FINALIZE) // if a==b, result is incremented by 1
@A
D=M
@B
D=D-M

@RESULT_INC_ONE
D;JEQ

// if not, goes to END
@END
0;JMP

(RESULT_INC_ONE)
@R15
M=M+1

(END)