//Init command
	@256
	D=A
	@SP
	M=D
	@RETURN_ADDRESS_0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.init
	0;JMP
(RETURN_ADDRESS_0)
//function Array.new 0
(Array.new)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1
	D;JGT
	@FIRST_MINUS_1
	D;JLT
	@SAME_SIGN_1
	0;JMP
(FIRST_PLUS_1)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1
	D;JLT
	@SAME_SIGN_1
	0;JMP
(DIF_SIGN_LT_1)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1
	0;JMP
(FIRST_MINUS_1)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1
	D;JGT
	@SAME_SIGN_1
	0;JMP
(DIF_SIGN_GT_1)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1
	0;JMP
(SAME_SIGN_1)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1
	D;JGT
	@LOWER_1
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1
	0;JMP
(GRATER_1)
	@SP
	A=M-1
	M=-1
	@CON_1
	0;JMP
(LOWER_1)
	@SP
	A=M-1
	M=0
(CON_1)

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.error 1
	@RETURN_ADDRESS_2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.error
	0;JMP
(RETURN_ADDRESS_2)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Memory.alloc 1
	@RETURN_ADDRESS_3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Memory.alloc
	0;JMP
(RETURN_ADDRESS_3)

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Array.dispose 0
(Array.dispose)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Memory.deAlloc 1
	@RETURN_ADDRESS_4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Memory.deAlloc
	0;JMP
(RETURN_ADDRESS_4)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.new 3
(Board.new)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Memory.alloc 1
	@RETURN_ADDRESS_5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Memory.alloc
	0;JMP
(RETURN_ADDRESS_5)

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 9
	@9
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 0
	@Board0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 0
	@Board0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 1
	@Board1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 2
	@Board2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 3
	@Board3
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 4
	@Board4
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 7
	@Board7
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 7
	@Board7
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 1
	@1
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 2
	@2
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.new 1
	@RETURN_ADDRESS_6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.new
	0;JMP
(RETURN_ADDRESS_6)

//pop this 0
	@0
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_7
	D;JGT
	@FIRST_MINUS_7
	D;JLT
	@SAME_SIGN_7
	0;JMP
(FIRST_PLUS_7)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_7
	D;JLT
	@SAME_SIGN_7
	0;JMP
(DIF_SIGN_LT_7)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_7
	0;JMP
(FIRST_MINUS_7)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_7
	D;JGT
	@SAME_SIGN_7
	0;JMP
(DIF_SIGN_GT_7)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_7
	0;JMP
(SAME_SIGN_7)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_7
	D;JGT
	@LOWER_7
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_7
	0;JMP
(GRATER_7)
	@SP
	A=M-1
	M=0
	@CON_7
	0;JMP
(LOWER_7)
	@SP
	A=M-1
	M=-1
(CON_7)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.new 1
	@RETURN_ADDRESS_8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.new
	0;JMP
(RETURN_ADDRESS_8)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP1
(WHILE_EXP1)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_9
	D;JGT
	@FIRST_MINUS_9
	D;JLT
	@SAME_SIGN_9
	0;JMP
(FIRST_PLUS_9)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_9
	D;JLT
	@SAME_SIGN_9
	0;JMP
(DIF_SIGN_LT_9)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_9
	0;JMP
(FIRST_MINUS_9)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_9
	D;JGT
	@SAME_SIGN_9
	0;JMP
(DIF_SIGN_GT_9)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_9
	0;JMP
(SAME_SIGN_9)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_9
	D;JGT
	@LOWER_9
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_9
	0;JMP
(GRATER_9)
	@SP
	A=M-1
	M=0
	@CON_9
	0;JMP
(LOWER_9)
	@SP
	A=M-1
	M=-1
(CON_9)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@WHILE_END1
	D;JNE

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 7
	@Board7
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP1
	@WHILE_EXP1
	0;JMP

//label WHILE_END1
(WHILE_END1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.setCell 1
(Board.setCell)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Board6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_10
	D;JGT
	@FIRST_MINUS_10
	D;JLT
	@SAME_SIGN_10
	0;JMP
(FIRST_PLUS_10)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_10
	D;JLT
	@SAME_SIGN_10
	0;JMP
(DIF_SIGN_LT_10)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_10
	0;JMP
(FIRST_MINUS_10)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_10
	D;JGT
	@SAME_SIGN_10
	0;JMP
(DIF_SIGN_GT_10)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_10
	0;JMP
(SAME_SIGN_10)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_10
	D;JGT
	@LOWER_10
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_10
	0;JMP
(GRATER_10)
	@SP
	A=M-1
	M=0
	@CON_10
	0;JMP
(LOWER_10)
	@SP
	A=M-1
	M=0
(CON_10)

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//call Screen.setColor 1
	@RETURN_ADDRESS_11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.setColor
	0;JMP
(RETURN_ADDRESS_11)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_12)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.divide 2
	@RETURN_ADDRESS_13
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.divide
	0;JMP
(RETURN_ADDRESS_13)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_14)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.divide 2
	@RETURN_ADDRESS_15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.divide
	0;JMP
(RETURN_ADDRESS_15)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 4
	@Board4
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.drawCircle 3
	@RETURN_ADDRESS_16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@3
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawCircle
	0;JMP
(RETURN_ADDRESS_16)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Board5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_17
	D;JGT
	@FIRST_MINUS_17
	D;JLT
	@SAME_SIGN_17
	0;JMP
(FIRST_PLUS_17)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_17
	D;JLT
	@SAME_SIGN_17
	0;JMP
(DIF_SIGN_LT_17)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_17
	0;JMP
(FIRST_MINUS_17)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_17
	D;JGT
	@SAME_SIGN_17
	0;JMP
(DIF_SIGN_GT_17)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_17
	0;JMP
(SAME_SIGN_17)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_17
	D;JGT
	@LOWER_17
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_17
	0;JMP
(GRATER_17)
	@SP
	A=M-1
	M=0
	@CON_17
	0;JMP
(LOWER_17)
	@SP
	A=M-1
	M=0
(CON_17)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.setColor 1
	@RETURN_ADDRESS_18
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.setColor
	0;JMP
(RETURN_ADDRESS_18)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_19
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_19)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.divide 2
	@RETURN_ADDRESS_20
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.divide
	0;JMP
(RETURN_ADDRESS_20)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_21
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_21)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.divide 2
	@RETURN_ADDRESS_22
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.divide
	0;JMP
(RETURN_ADDRESS_22)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 4
	@Board4
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//call Screen.drawCircle 3
	@RETURN_ADDRESS_23
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@3
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawCircle
	0;JMP
(RETURN_ADDRESS_23)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.initGrid 4
(Board.initGrid)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_24)

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.divide 2
	@RETURN_ADDRESS_25
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.divide
	0;JMP
(RETURN_ADDRESS_25)

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//call Screen.setColor 1
	@RETURN_ADDRESS_26
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.setColor
	0;JMP
(RETURN_ADDRESS_26)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_27
	D;JGT
	@FIRST_MINUS_27
	D;JLT
	@SAME_SIGN_27
	0;JMP
(FIRST_PLUS_27)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_27
	D;JLT
	@SAME_SIGN_27
	0;JMP
(DIF_SIGN_LT_27)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_27
	0;JMP
(FIRST_MINUS_27)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_27
	D;JGT
	@SAME_SIGN_27
	0;JMP
(DIF_SIGN_GT_27)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_27
	0;JMP
(SAME_SIGN_27)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_27
	D;JGT
	@LOWER_27
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_27
	0;JMP
(GRATER_27)
	@SP
	A=M-1
	M=0
	@CON_27
	0;JMP
(LOWER_27)
	@SP
	A=M-1
	M=-1
(CON_27)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_28)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_29
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_29)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_30)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_31)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_32)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_33)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push static 5
	@Board5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_34
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_34)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Board6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_35)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push static 6
	@Board6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_36
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_36)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Board5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_37
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_37)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//call Board.drawSelected 2
	@RETURN_ADDRESS_38
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.drawSelected
	0;JMP
(RETURN_ADDRESS_38)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_39)

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.divide 2
	@RETURN_ADDRESS_40
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.divide
	0;JMP
(RETURN_ADDRESS_40)

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//call Screen.setColor 1
	@RETURN_ADDRESS_41
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.setColor
	0;JMP
(RETURN_ADDRESS_41)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP1
(WHILE_EXP1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_42
	D;JGT
	@FIRST_MINUS_42
	D;JLT
	@SAME_SIGN_42
	0;JMP
(FIRST_PLUS_42)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_42
	D;JLT
	@SAME_SIGN_42
	0;JMP
(DIF_SIGN_LT_42)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_42
	0;JMP
(FIRST_MINUS_42)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_42
	D;JGT
	@SAME_SIGN_42
	0;JMP
(DIF_SIGN_GT_42)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_42
	0;JMP
(SAME_SIGN_42)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_42
	D;JGT
	@LOWER_42
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_42
	0;JMP
(GRATER_42)
	@SP
	A=M-1
	M=0
	@CON_42
	0;JMP
(LOWER_42)
	@SP
	A=M-1
	M=-1
(CON_42)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@WHILE_END1
	D;JNE

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_43
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_43)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_44)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_45
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_45)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_46)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_47
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_47)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_48)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP1
	@WHILE_EXP1
	0;JMP

//label WHILE_END1
(WHILE_END1)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push static 5
	@Board5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_49
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_49)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Board6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_50
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_50)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push static 6
	@Board6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_51)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Board5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_52
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_52)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//call Board.drawSelected 2
	@RETURN_ADDRESS_53
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.drawSelected
	0;JMP
(RETURN_ADDRESS_53)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.getSelectedRow 0
(Board.getSelectedRow)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.getSelectedCol 0
(Board.getSelectedCol)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.isEmpty 1
(Board.isEmpty)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 7
	@Board7
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_54
	D;JGT
	@FIRST_MINUS_54
	D;JLT
	@SAME_SIGN_54
	0;JMP
(FIRST_PLUS_54)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_54
	D;JLT
	@SAME_SIGN_54
	0;JMP
(DIF_SIGN_LT_54)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_54
	0;JMP
(FIRST_MINUS_54)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_54
	D;JGT
	@SAME_SIGN_54
	0;JMP
(DIF_SIGN_GT_54)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_54
	0;JMP
(SAME_SIGN_54)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_54
	D;JGT
	@LOWER_54
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_54
	0;JMP
(GRATER_54)
	@SP
	A=M-1
	M=0
	@CON_54
	0;JMP
(LOWER_54)
	@SP
	A=M-1
	M=0
(CON_54)

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.setConsts 0
(Board.setConsts)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 5
	@Board5
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 6
	@Board6
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 8
	@Board8
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 9
	@Board9
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 5
	@5
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 11
	@Board11
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 6
	@6
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 10
	@Board10
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.reverseDir 7
(Board.reverseDir)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop local 5
	@5
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 5
	@5
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 6
	@6
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 5
	@5
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_55
	D;JGT
	@FIRST_MINUS_55
	D;JLT
	@SAME_SIGN_55
	0;JMP
(FIRST_PLUS_55)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_55
	D;JLT
	@SAME_SIGN_55
	0;JMP
(DIF_SIGN_LT_55)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_55
	0;JMP
(FIRST_MINUS_55)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_55
	D;JGT
	@SAME_SIGN_55
	0;JMP
(DIF_SIGN_GT_55)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_55
	0;JMP
(SAME_SIGN_55)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_55
	D;JGT
	@LOWER_55
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_55
	0;JMP
(GRATER_55)
	@SP
	A=M-1
	M=0
	@CON_55
	0;JMP
(LOWER_55)
	@SP
	A=M-1
	M=-1
(CON_55)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_56
	D;JGT
	@FIRST_MINUS_56
	D;JLT
	@SAME_SIGN_56
	0;JMP
(FIRST_PLUS_56)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_56
	D;JLT
	@SAME_SIGN_56
	0;JMP
(DIF_SIGN_LT_56)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_56
	0;JMP
(FIRST_MINUS_56)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_56
	D;JGT
	@SAME_SIGN_56
	0;JMP
(DIF_SIGN_GT_56)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_56
	0;JMP
(SAME_SIGN_56)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_56
	D;JGT
	@LOWER_56
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_56
	0;JMP
(GRATER_56)
	@SP
	A=M-1
	M=-1
	@CON_56
	0;JMP
(LOWER_56)
	@SP
	A=M-1
	M=0
(CON_56)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_57
	D;JGT
	@FIRST_MINUS_57
	D;JLT
	@SAME_SIGN_57
	0;JMP
(FIRST_PLUS_57)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_57
	D;JLT
	@SAME_SIGN_57
	0;JMP
(DIF_SIGN_LT_57)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_57
	0;JMP
(FIRST_MINUS_57)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_57
	D;JGT
	@SAME_SIGN_57
	0;JMP
(DIF_SIGN_GT_57)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_57
	0;JMP
(SAME_SIGN_57)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_57
	D;JGT
	@LOWER_57
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_57
	0;JMP
(GRATER_57)
	@SP
	A=M-1
	M=0
	@CON_57
	0;JMP
(LOWER_57)
	@SP
	A=M-1
	M=-1
(CON_57)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_58
	D;JGT
	@FIRST_MINUS_58
	D;JLT
	@SAME_SIGN_58
	0;JMP
(FIRST_PLUS_58)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_58
	D;JLT
	@SAME_SIGN_58
	0;JMP
(DIF_SIGN_LT_58)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_58
	0;JMP
(FIRST_MINUS_58)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_58
	D;JGT
	@SAME_SIGN_58
	0;JMP
(DIF_SIGN_GT_58)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_58
	0;JMP
(SAME_SIGN_58)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_58
	D;JGT
	@LOWER_58
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_58
	0;JMP
(GRATER_58)
	@SP
	A=M-1
	M=-1
	@CON_58
	0;JMP
(LOWER_58)
	@SP
	A=M-1
	M=0
(CON_58)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 5
	@5
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 6
	@6
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 6
	@6
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 7
	@Board7
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_59
	D;JGT
	@FIRST_MINUS_59
	D;JLT
	@SAME_SIGN_59
	0;JMP
(FIRST_PLUS_59)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_59
	D;JLT
	@SAME_SIGN_59
	0;JMP
(DIF_SIGN_LT_59)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_59
	0;JMP
(FIRST_MINUS_59)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_59
	D;JGT
	@SAME_SIGN_59
	0;JMP
(DIF_SIGN_GT_59)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_59
	0;JMP
(SAME_SIGN_59)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_59
	D;JGT
	@LOWER_59
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_59
	0;JMP
(GRATER_59)
	@SP
	A=M-1
	M=0
	@CON_59
	0;JMP
(LOWER_59)
	@SP
	A=M-1
	M=0
(CON_59)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 5
	@5
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END1
	@IF_END1
	0;JMP

//label IF_FALSE1
(IF_FALSE1)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 6
	@6
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_60
	D;JGT
	@FIRST_MINUS_60
	D;JLT
	@SAME_SIGN_60
	0;JMP
(FIRST_PLUS_60)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_60
	D;JLT
	@SAME_SIGN_60
	0;JMP
(DIF_SIGN_LT_60)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_60
	0;JMP
(FIRST_MINUS_60)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_60
	D;JGT
	@SAME_SIGN_60
	0;JMP
(DIF_SIGN_GT_60)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_60
	0;JMP
(SAME_SIGN_60)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_60
	D;JGT
	@LOWER_60
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_60
	0;JMP
(GRATER_60)
	@SP
	A=M-1
	M=0
	@CON_60
	0;JMP
(LOWER_60)
	@SP
	A=M-1
	M=0
(CON_60)

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 5
	@5
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 4
	@4
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END2
	@IF_END2
	0;JMP

//label IF_FALSE2
(IF_FALSE2)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END2
(IF_END2)

//label IF_END1
(IF_END1)

//label IF_END0
(IF_END0)

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_61
	D;JGT
	@FIRST_MINUS_61
	D;JLT
	@SAME_SIGN_61
	0;JMP
(FIRST_PLUS_61)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_61
	D;JLT
	@SAME_SIGN_61
	0;JMP
(DIF_SIGN_LT_61)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_61
	0;JMP
(FIRST_MINUS_61)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_61
	D;JGT
	@SAME_SIGN_61
	0;JMP
(DIF_SIGN_GT_61)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_61
	0;JMP
(SAME_SIGN_61)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_61
	D;JGT
	@LOWER_61
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_61
	0;JMP
(GRATER_61)
	@SP
	A=M-1
	M=-1
	@CON_61
	0;JMP
(LOWER_61)
	@SP
	A=M-1
	M=0
(CON_61)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@IF_FALSE3
	0;JMP

//label IF_TRUE3
(IF_TRUE3)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 6
	@6
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 5
	@5
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP1
(WHILE_EXP1)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_62
	D;JGT
	@FIRST_MINUS_62
	D;JLT
	@SAME_SIGN_62
	0;JMP
(FIRST_PLUS_62)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_62
	D;JLT
	@SAME_SIGN_62
	0;JMP
(DIF_SIGN_LT_62)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_62
	0;JMP
(FIRST_MINUS_62)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_62
	D;JGT
	@SAME_SIGN_62
	0;JMP
(DIF_SIGN_GT_62)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_62
	0;JMP
(SAME_SIGN_62)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_62
	D;JGT
	@LOWER_62
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_62
	0;JMP
(GRATER_62)
	@SP
	A=M-1
	M=0
	@CON_62
	0;JMP
(LOWER_62)
	@SP
	A=M-1
	M=0
(CON_62)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 4
	@4
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_63
	D;JGT
	@FIRST_MINUS_63
	D;JLT
	@SAME_SIGN_63
	0;JMP
(FIRST_PLUS_63)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_63
	D;JLT
	@SAME_SIGN_63
	0;JMP
(DIF_SIGN_LT_63)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_63
	0;JMP
(FIRST_MINUS_63)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_63
	D;JGT
	@SAME_SIGN_63
	0;JMP
(DIF_SIGN_GT_63)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_63
	0;JMP
(SAME_SIGN_63)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_63
	D;JGT
	@LOWER_63
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_63
	0;JMP
(GRATER_63)
	@SP
	A=M-1
	M=0
	@CON_63
	0;JMP
(LOWER_63)
	@SP
	A=M-1
	M=0
(CON_63)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//not
	@SP
	A=M-1
	M=!M

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@WHILE_END1
	D;JNE

//push constant 150
	@150
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_64
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_64)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_65
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_65)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 6
	@6
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 5
	@5
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP1
	@WHILE_EXP1
	0;JMP

//label WHILE_END1
(WHILE_END1)

//label IF_FALSE3
(IF_FALSE3)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.reverse 2
(Board.reverse)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 7
	@Board7
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_66
	D;JGT
	@FIRST_MINUS_66
	D;JLT
	@SAME_SIGN_66
	0;JMP
(FIRST_PLUS_66)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_66
	D;JLT
	@SAME_SIGN_66
	0;JMP
(DIF_SIGN_LT_66)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_66
	0;JMP
(FIRST_MINUS_66)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_66
	D;JGT
	@SAME_SIGN_66
	0;JMP
(DIF_SIGN_GT_66)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_66
	0;JMP
(SAME_SIGN_66)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_66
	D;JGT
	@LOWER_66
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_66
	0;JMP
(GRATER_66)
	@SP
	A=M-1
	M=0
	@CON_66
	0;JMP
(LOWER_66)
	@SP
	A=M-1
	M=0
(CON_66)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//call Board.reverseDir 7
	@RETURN_ADDRESS_67
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_67)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//call Board.reverseDir 7
	@RETURN_ADDRESS_68
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_68)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_69
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_69)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_70
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_70)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_71
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_71)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_72
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_72)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_73)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//call Board.reverseDir 7
	@RETURN_ADDRESS_74
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_74)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//call Board.reverseDir 7
	@RETURN_ADDRESS_75
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_75)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//call Board.reverseDir 7
	@RETURN_ADDRESS_76
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_76)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_77
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_77)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_78
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_78)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_79)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_80
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_80)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverseDir 7
	@RETURN_ADDRESS_81
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_81)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//call Board.reverseDir 7
	@RETURN_ADDRESS_82
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverseDir
	0;JMP
(RETURN_ADDRESS_82)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_83
	D;JGT
	@FIRST_MINUS_83
	D;JLT
	@SAME_SIGN_83
	0;JMP
(FIRST_PLUS_83)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_83
	D;JLT
	@SAME_SIGN_83
	0;JMP
(DIF_SIGN_LT_83)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_83
	0;JMP
(FIRST_MINUS_83)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_83
	D;JGT
	@SAME_SIGN_83
	0;JMP
(DIF_SIGN_GT_83)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_83
	0;JMP
(SAME_SIGN_83)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_83
	D;JGT
	@LOWER_83
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_83
	0;JMP
(GRATER_83)
	@SP
	A=M-1
	M=-1
	@CON_83
	0;JMP
(LOWER_83)
	@SP
	A=M-1
	M=0
(CON_83)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setCell 4
	@RETURN_ADDRESS_84
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setCell
	0;JMP
(RETURN_ADDRESS_84)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END0
(IF_END0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.isGameOver 4
(Board.isGameOver)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_85
	D;JGT
	@FIRST_MINUS_85
	D;JLT
	@SAME_SIGN_85
	0;JMP
(FIRST_PLUS_85)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_85
	D;JLT
	@SAME_SIGN_85
	0;JMP
(DIF_SIGN_LT_85)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_85
	0;JMP
(FIRST_MINUS_85)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_85
	D;JGT
	@SAME_SIGN_85
	0;JMP
(DIF_SIGN_GT_85)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_85
	0;JMP
(SAME_SIGN_85)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_85
	D;JGT
	@LOWER_85
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_85
	0;JMP
(GRATER_85)
	@SP
	A=M-1
	M=0
	@CON_85
	0;JMP
(LOWER_85)
	@SP
	A=M-1
	M=-1
(CON_85)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP1
(WHILE_EXP1)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_86
	D;JGT
	@FIRST_MINUS_86
	D;JLT
	@SAME_SIGN_86
	0;JMP
(FIRST_PLUS_86)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_86
	D;JLT
	@SAME_SIGN_86
	0;JMP
(DIF_SIGN_LT_86)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_86
	0;JMP
(FIRST_MINUS_86)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_86
	D;JGT
	@SAME_SIGN_86
	0;JMP
(DIF_SIGN_GT_86)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_86
	0;JMP
(SAME_SIGN_86)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_86
	D;JGT
	@LOWER_86
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_86
	0;JMP
(GRATER_86)
	@SP
	A=M-1
	M=0
	@CON_86
	0;JMP
(LOWER_86)
	@SP
	A=M-1
	M=-1
(CON_86)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@WHILE_END1
	D;JNE

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverse 5
	@RETURN_ADDRESS_87
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@5
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverse
	0;JMP
(RETURN_ADDRESS_87)

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_88
	D;JGT
	@FIRST_MINUS_88
	D;JLT
	@SAME_SIGN_88
	0;JMP
(FIRST_PLUS_88)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_88
	D;JLT
	@SAME_SIGN_88
	0;JMP
(DIF_SIGN_LT_88)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_88
	0;JMP
(FIRST_MINUS_88)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_88
	D;JGT
	@SAME_SIGN_88
	0;JMP
(DIF_SIGN_GT_88)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_88
	0;JMP
(SAME_SIGN_88)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_88
	D;JGT
	@LOWER_88
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_88
	0;JMP
(GRATER_88)
	@SP
	A=M-1
	M=-1
	@CON_88
	0;JMP
(LOWER_88)
	@SP
	A=M-1
	M=0
(CON_88)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP1
	@WHILE_EXP1
	0;JMP

//label WHILE_END1
(WHILE_END1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.getWinner 6
(Board.getWinner)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 7
	@Board7
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 4
	@4
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_89
	D;JGT
	@FIRST_MINUS_89
	D;JLT
	@SAME_SIGN_89
	0;JMP
(FIRST_PLUS_89)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_89
	D;JLT
	@SAME_SIGN_89
	0;JMP
(DIF_SIGN_LT_89)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_89
	0;JMP
(FIRST_MINUS_89)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_89
	D;JGT
	@SAME_SIGN_89
	0;JMP
(DIF_SIGN_GT_89)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_89
	0;JMP
(SAME_SIGN_89)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_89
	D;JGT
	@LOWER_89
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_89
	0;JMP
(GRATER_89)
	@SP
	A=M-1
	M=0
	@CON_89
	0;JMP
(LOWER_89)
	@SP
	A=M-1
	M=-1
(CON_89)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 5
	@5
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP1
(WHILE_EXP1)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_90
	D;JGT
	@FIRST_MINUS_90
	D;JLT
	@SAME_SIGN_90
	0;JMP
(FIRST_PLUS_90)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_90
	D;JLT
	@SAME_SIGN_90
	0;JMP
(DIF_SIGN_LT_90)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_90
	0;JMP
(FIRST_MINUS_90)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_90
	D;JGT
	@SAME_SIGN_90
	0;JMP
(DIF_SIGN_GT_90)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_90
	0;JMP
(SAME_SIGN_90)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_90
	D;JGT
	@LOWER_90
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_90
	0;JMP
(GRATER_90)
	@SP
	A=M-1
	M=0
	@CON_90
	0;JMP
(LOWER_90)
	@SP
	A=M-1
	M=-1
(CON_90)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@WHILE_END1
	D;JNE

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 5
	@5
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Board5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_91
	D;JGT
	@FIRST_MINUS_91
	D;JLT
	@SAME_SIGN_91
	0;JMP
(FIRST_PLUS_91)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_91
	D;JLT
	@SAME_SIGN_91
	0;JMP
(DIF_SIGN_LT_91)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_91
	0;JMP
(FIRST_MINUS_91)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_91
	D;JGT
	@SAME_SIGN_91
	0;JMP
(DIF_SIGN_GT_91)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_91
	0;JMP
(SAME_SIGN_91)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_91
	D;JGT
	@LOWER_91
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_91
	0;JMP
(GRATER_91)
	@SP
	A=M-1
	M=0
	@CON_91
	0;JMP
(LOWER_91)
	@SP
	A=M-1
	M=0
(CON_91)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 5
	@5
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Board6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_92
	D;JGT
	@FIRST_MINUS_92
	D;JLT
	@SAME_SIGN_92
	0;JMP
(FIRST_PLUS_92)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_92
	D;JLT
	@SAME_SIGN_92
	0;JMP
(DIF_SIGN_LT_92)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_92
	0;JMP
(FIRST_MINUS_92)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_92
	D;JGT
	@SAME_SIGN_92
	0;JMP
(DIF_SIGN_GT_92)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_92
	0;JMP
(SAME_SIGN_92)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_92
	D;JGT
	@LOWER_92
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_92
	0;JMP
(GRATER_92)
	@SP
	A=M-1
	M=0
	@CON_92
	0;JMP
(LOWER_92)
	@SP
	A=M-1
	M=0
(CON_92)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//label IF_END0
(IF_END0)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP1
	@WHILE_EXP1
	0;JMP

//label WHILE_END1
(WHILE_END1)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_93
	D;JGT
	@FIRST_MINUS_93
	D;JLT
	@SAME_SIGN_93
	0;JMP
(FIRST_PLUS_93)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_93
	D;JLT
	@SAME_SIGN_93
	0;JMP
(DIF_SIGN_LT_93)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_93
	0;JMP
(FIRST_MINUS_93)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_93
	D;JGT
	@SAME_SIGN_93
	0;JMP
(DIF_SIGN_GT_93)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_93
	0;JMP
(SAME_SIGN_93)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_93
	D;JGT
	@LOWER_93
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_93
	0;JMP
(GRATER_93)
	@SP
	A=M-1
	M=-1
	@CON_93
	0;JMP
(LOWER_93)
	@SP
	A=M-1
	M=0
(CON_93)

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push static 5
	@Board5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 4
	@4
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END2
	@IF_END2
	0;JMP

//label IF_FALSE2
(IF_FALSE2)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_94
	D;JGT
	@FIRST_MINUS_94
	D;JLT
	@SAME_SIGN_94
	0;JMP
(FIRST_PLUS_94)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_94
	D;JLT
	@SAME_SIGN_94
	0;JMP
(DIF_SIGN_LT_94)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_94
	0;JMP
(FIRST_MINUS_94)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_94
	D;JGT
	@SAME_SIGN_94
	0;JMP
(DIF_SIGN_GT_94)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_94
	0;JMP
(SAME_SIGN_94)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_94
	D;JGT
	@LOWER_94
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_94
	0;JMP
(GRATER_94)
	@SP
	A=M-1
	M=0
	@CON_94
	0;JMP
(LOWER_94)
	@SP
	A=M-1
	M=-1
(CON_94)

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@IF_FALSE3
	0;JMP

//label IF_TRUE3
(IF_TRUE3)

//push static 6
	@Board6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 4
	@4
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE3
(IF_FALSE3)

//label IF_END2
(IF_END2)

//push local 4
	@4
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.drawSelected 3
(Board.drawSelected)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 2
	@Board2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_95
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_95)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 3
	@Board3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_96
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_96)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 1
	@Board1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.setColor 1
	@RETURN_ADDRESS_97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.setColor
	0;JMP
(RETURN_ADDRESS_97)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_98
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_98)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.drawLine 4
	@RETURN_ADDRESS_99
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_99)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_100)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_101)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.moveSelected 0
(Board.moveSelected)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.drawSelected 2
	@RETURN_ADDRESS_102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.drawSelected
	0;JMP
(RETURN_ADDRESS_102)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 8
	@Board8
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_103
	D;JGT
	@FIRST_MINUS_103
	D;JLT
	@SAME_SIGN_103
	0;JMP
(FIRST_PLUS_103)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_103
	D;JLT
	@SAME_SIGN_103
	0;JMP
(DIF_SIGN_LT_103)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_103
	0;JMP
(FIRST_MINUS_103)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_103
	D;JGT
	@SAME_SIGN_103
	0;JMP
(DIF_SIGN_GT_103)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_103
	0;JMP
(SAME_SIGN_103)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_103
	D;JGT
	@LOWER_103
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_103
	0;JMP
(GRATER_103)
	@SP
	A=M-1
	M=0
	@CON_103
	0;JMP
(LOWER_103)
	@SP
	A=M-1
	M=0
(CON_103)

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_104
	D;JGT
	@FIRST_MINUS_104
	D;JLT
	@SAME_SIGN_104
	0;JMP
(FIRST_PLUS_104)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_104
	D;JLT
	@SAME_SIGN_104
	0;JMP
(DIF_SIGN_LT_104)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_104
	0;JMP
(FIRST_MINUS_104)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_104
	D;JGT
	@SAME_SIGN_104
	0;JMP
(DIF_SIGN_GT_104)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_104
	0;JMP
(SAME_SIGN_104)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_104
	D;JGT
	@LOWER_104
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_104
	0;JMP
(GRATER_104)
	@SP
	A=M-1
	M=-1
	@CON_104
	0;JMP
(LOWER_104)
	@SP
	A=M-1
	M=0
(CON_104)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop this 1
	@1
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 9
	@Board9
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_105
	D;JGT
	@FIRST_MINUS_105
	D;JLT
	@SAME_SIGN_105
	0;JMP
(FIRST_PLUS_105)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_105
	D;JLT
	@SAME_SIGN_105
	0;JMP
(DIF_SIGN_LT_105)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_105
	0;JMP
(FIRST_MINUS_105)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_105
	D;JGT
	@SAME_SIGN_105
	0;JMP
(DIF_SIGN_GT_105)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_105
	0;JMP
(SAME_SIGN_105)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_105
	D;JGT
	@LOWER_105
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_105
	0;JMP
(GRATER_105)
	@SP
	A=M-1
	M=0
	@CON_105
	0;JMP
(LOWER_105)
	@SP
	A=M-1
	M=0
(CON_105)

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_106
	D;JGT
	@FIRST_MINUS_106
	D;JLT
	@SAME_SIGN_106
	0;JMP
(FIRST_PLUS_106)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_106
	D;JLT
	@SAME_SIGN_106
	0;JMP
(DIF_SIGN_LT_106)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_106
	0;JMP
(FIRST_MINUS_106)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_106
	D;JGT
	@SAME_SIGN_106
	0;JMP
(DIF_SIGN_GT_106)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_106
	0;JMP
(SAME_SIGN_106)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_106
	D;JGT
	@LOWER_106
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_106
	0;JMP
(GRATER_106)
	@SP
	A=M-1
	M=0
	@CON_106
	0;JMP
(LOWER_106)
	@SP
	A=M-1
	M=-1
(CON_106)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop this 1
	@1
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 10
	@Board10
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_107
	D;JGT
	@FIRST_MINUS_107
	D;JLT
	@SAME_SIGN_107
	0;JMP
(FIRST_PLUS_107)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_107
	D;JLT
	@SAME_SIGN_107
	0;JMP
(DIF_SIGN_LT_107)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_107
	0;JMP
(FIRST_MINUS_107)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_107
	D;JGT
	@SAME_SIGN_107
	0;JMP
(DIF_SIGN_GT_107)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_107
	0;JMP
(SAME_SIGN_107)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_107
	D;JGT
	@LOWER_107
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_107
	0;JMP
(GRATER_107)
	@SP
	A=M-1
	M=0
	@CON_107
	0;JMP
(LOWER_107)
	@SP
	A=M-1
	M=0
(CON_107)

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_108
	D;JGT
	@FIRST_MINUS_108
	D;JLT
	@SAME_SIGN_108
	0;JMP
(FIRST_PLUS_108)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_108
	D;JLT
	@SAME_SIGN_108
	0;JMP
(DIF_SIGN_LT_108)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_108
	0;JMP
(FIRST_MINUS_108)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_108
	D;JGT
	@SAME_SIGN_108
	0;JMP
(DIF_SIGN_GT_108)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_108
	0;JMP
(SAME_SIGN_108)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_108
	D;JGT
	@LOWER_108
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_108
	0;JMP
(GRATER_108)
	@SP
	A=M-1
	M=-1
	@CON_108
	0;JMP
(LOWER_108)
	@SP
	A=M-1
	M=0
(CON_108)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop this 2
	@2
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 11
	@Board11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_109
	D;JGT
	@FIRST_MINUS_109
	D;JLT
	@SAME_SIGN_109
	0;JMP
(FIRST_PLUS_109)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_109
	D;JLT
	@SAME_SIGN_109
	0;JMP
(DIF_SIGN_LT_109)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_109
	0;JMP
(FIRST_MINUS_109)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_109
	D;JGT
	@SAME_SIGN_109
	0;JMP
(DIF_SIGN_GT_109)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_109
	0;JMP
(SAME_SIGN_109)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_109
	D;JGT
	@LOWER_109
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_109
	0;JMP
(GRATER_109)
	@SP
	A=M-1
	M=0
	@CON_109
	0;JMP
(LOWER_109)
	@SP
	A=M-1
	M=0
(CON_109)

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_110
	D;JGT
	@FIRST_MINUS_110
	D;JLT
	@SAME_SIGN_110
	0;JMP
(FIRST_PLUS_110)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_110
	D;JLT
	@SAME_SIGN_110
	0;JMP
(DIF_SIGN_LT_110)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_110
	0;JMP
(FIRST_MINUS_110)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_110
	D;JGT
	@SAME_SIGN_110
	0;JMP
(DIF_SIGN_GT_110)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_110
	0;JMP
(SAME_SIGN_110)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_110
	D;JGT
	@LOWER_110
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_110
	0;JMP
(GRATER_110)
	@SP
	A=M-1
	M=0
	@CON_110
	0;JMP
(LOWER_110)
	@SP
	A=M-1
	M=-1
(CON_110)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@IF_FALSE3
	0;JMP

//label IF_TRUE3
(IF_TRUE3)

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop this 2
	@2
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE3
(IF_FALSE3)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//call Board.drawSelected 2
	@RETURN_ADDRESS_111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.drawSelected
	0;JMP
(RETURN_ADDRESS_111)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.computerMove 6
(Board.computerMove)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 5
	@5
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_112
	D;JGT
	@FIRST_MINUS_112
	D;JLT
	@SAME_SIGN_112
	0;JMP
(FIRST_PLUS_112)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_112
	D;JLT
	@SAME_SIGN_112
	0;JMP
(DIF_SIGN_LT_112)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_112
	0;JMP
(FIRST_MINUS_112)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_112
	D;JGT
	@SAME_SIGN_112
	0;JMP
(DIF_SIGN_GT_112)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_112
	0;JMP
(SAME_SIGN_112)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_112
	D;JGT
	@LOWER_112
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_112
	0;JMP
(GRATER_112)
	@SP
	A=M-1
	M=0
	@CON_112
	0;JMP
(LOWER_112)
	@SP
	A=M-1
	M=-1
(CON_112)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP1
(WHILE_EXP1)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_113
	D;JGT
	@FIRST_MINUS_113
	D;JLT
	@SAME_SIGN_113
	0;JMP
(FIRST_PLUS_113)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_113
	D;JLT
	@SAME_SIGN_113
	0;JMP
(DIF_SIGN_LT_113)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_113
	0;JMP
(FIRST_MINUS_113)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_113
	D;JGT
	@SAME_SIGN_113
	0;JMP
(DIF_SIGN_GT_113)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_113
	0;JMP
(SAME_SIGN_113)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_113
	D;JGT
	@LOWER_113
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_113
	0;JMP
(GRATER_113)
	@SP
	A=M-1
	M=0
	@CON_113
	0;JMP
(LOWER_113)
	@SP
	A=M-1
	M=-1
(CON_113)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@WHILE_END1
	D;JNE

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Board6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.reverse 5
	@RETURN_ADDRESS_114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@5
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverse
	0;JMP
(RETURN_ADDRESS_114)

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 5
	@5
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_115
	D;JGT
	@FIRST_MINUS_115
	D;JLT
	@SAME_SIGN_115
	0;JMP
(FIRST_PLUS_115)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_115
	D;JLT
	@SAME_SIGN_115
	0;JMP
(DIF_SIGN_LT_115)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_115
	0;JMP
(FIRST_MINUS_115)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_115
	D;JGT
	@SAME_SIGN_115
	0;JMP
(DIF_SIGN_GT_115)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_115
	0;JMP
(SAME_SIGN_115)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_115
	D;JGT
	@LOWER_115
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_115
	0;JMP
(GRATER_115)
	@SP
	A=M-1
	M=-1
	@CON_115
	0;JMP
(LOWER_115)
	@SP
	A=M-1
	M=0
(CON_115)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 5
	@5
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 4
	@4
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP1
	@WHILE_EXP1
	0;JMP

//label WHILE_END1
(WHILE_END1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 4
	@4
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Board6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//call Board.reverse 5
	@RETURN_ADDRESS_116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@5
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverse
	0;JMP
(RETURN_ADDRESS_116)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.dispose 2
(Board.dispose)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Board0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_117
	D;JGT
	@FIRST_MINUS_117
	D;JLT
	@SAME_SIGN_117
	0;JMP
(FIRST_PLUS_117)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_117
	D;JLT
	@SAME_SIGN_117
	0;JMP
(DIF_SIGN_LT_117)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_117
	0;JMP
(FIRST_MINUS_117)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_117
	D;JGT
	@SAME_SIGN_117
	0;JMP
(DIF_SIGN_GT_117)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_117
	0;JMP
(SAME_SIGN_117)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_117
	D;JGT
	@LOWER_117
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_117
	0;JMP
(GRATER_117)
	@SP
	A=M-1
	M=0
	@CON_117
	0;JMP
(LOWER_117)
	@SP
	A=M-1
	M=-1
(CON_117)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.dispose 1
	@RETURN_ADDRESS_118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.dispose
	0;JMP
(RETURN_ADDRESS_118)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.dispose 1
	@RETURN_ADDRESS_119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.dispose
	0;JMP
(RETURN_ADDRESS_119)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Memory.deAlloc 1
	@RETURN_ADDRESS_120
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Memory.deAlloc
	0;JMP
(RETURN_ADDRESS_120)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.drwCl 2
(Board.drwCl)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_121
	D;JGT
	@FIRST_MINUS_121
	D;JLT
	@SAME_SIGN_121
	0;JMP
(FIRST_PLUS_121)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_121
	D;JLT
	@SAME_SIGN_121
	0;JMP
(DIF_SIGN_LT_121)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_121
	0;JMP
(FIRST_MINUS_121)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_121
	D;JGT
	@SAME_SIGN_121
	0;JMP
(DIF_SIGN_GT_121)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_121
	0;JMP
(SAME_SIGN_121)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_121
	D;JGT
	@LOWER_121
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_121
	0;JMP
(GRATER_121)
	@SP
	A=M-1
	M=-1
	@CON_121
	0;JMP
(LOWER_121)
	@SP
	A=M-1
	M=0
(CON_121)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_122
	D;JGT
	@FIRST_MINUS_122
	D;JLT
	@SAME_SIGN_122
	0;JMP
(FIRST_PLUS_122)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_122
	D;JLT
	@SAME_SIGN_122
	0;JMP
(DIF_SIGN_LT_122)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_122
	0;JMP
(FIRST_MINUS_122)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_122
	D;JGT
	@SAME_SIGN_122
	0;JMP
(DIF_SIGN_GT_122)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_122
	0;JMP
(SAME_SIGN_122)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_122
	D;JGT
	@LOWER_122
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_122
	0;JMP
(GRATER_122)
	@SP
	A=M-1
	M=0
	@CON_122
	0;JMP
(LOWER_122)
	@SP
	A=M-1
	M=-1
(CON_122)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_123
	D;JGT
	@FIRST_MINUS_123
	D;JLT
	@SAME_SIGN_123
	0;JMP
(FIRST_PLUS_123)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_123
	D;JLT
	@SAME_SIGN_123
	0;JMP
(DIF_SIGN_LT_123)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_123
	0;JMP
(FIRST_MINUS_123)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_123
	D;JGT
	@SAME_SIGN_123
	0;JMP
(DIF_SIGN_GT_123)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_123
	0;JMP
(SAME_SIGN_123)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_123
	D;JGT
	@LOWER_123
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_123
	0;JMP
(GRATER_123)
	@SP
	A=M-1
	M=-1
	@CON_123
	0;JMP
(LOWER_123)
	@SP
	A=M-1
	M=0
(CON_123)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_124
	D;JGT
	@FIRST_MINUS_124
	D;JLT
	@SAME_SIGN_124
	0;JMP
(FIRST_PLUS_124)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_124
	D;JLT
	@SAME_SIGN_124
	0;JMP
(DIF_SIGN_LT_124)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_124
	0;JMP
(FIRST_MINUS_124)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_124
	D;JGT
	@SAME_SIGN_124
	0;JMP
(DIF_SIGN_GT_124)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_124
	0;JMP
(SAME_SIGN_124)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_124
	D;JGT
	@LOWER_124
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_124
	0;JMP
(GRATER_124)
	@SP
	A=M-1
	M=0
	@CON_124
	0;JMP
(LOWER_124)
	@SP
	A=M-1
	M=-1
(CON_124)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.setColor 1
	@RETURN_ADDRESS_125
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.setColor
	0;JMP
(RETURN_ADDRESS_125)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_126
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_126)

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_127
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_127)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_128
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_128)

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_129
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_129)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawRectangle 4
	@RETURN_ADDRESS_130
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawRectangle
	0;JMP
(RETURN_ADDRESS_130)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//call Screen.setColor 1
	@RETURN_ADDRESS_131
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.setColor
	0;JMP
(RETURN_ADDRESS_131)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_132
	D;JGT
	@FIRST_MINUS_132
	D;JLT
	@SAME_SIGN_132
	0;JMP
(FIRST_PLUS_132)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_132
	D;JLT
	@SAME_SIGN_132
	0;JMP
(DIF_SIGN_LT_132)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_132
	0;JMP
(FIRST_MINUS_132)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_132
	D;JGT
	@SAME_SIGN_132
	0;JMP
(DIF_SIGN_GT_132)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_132
	0;JMP
(SAME_SIGN_132)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_132
	D;JGT
	@LOWER_132
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_132
	0;JMP
(GRATER_132)
	@SP
	A=M-1
	M=0
	@CON_132
	0;JMP
(LOWER_132)
	@SP
	A=M-1
	M=0
(CON_132)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_133
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_133)

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_134
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_134)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_135
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_135)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_136
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_136)

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_137
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_137)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_138
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_138)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_139
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_139)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_140
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_140)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_141
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_141)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_142
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_142)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_143
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_143)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_144
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_144)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_145
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_145)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_146
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_146)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_147
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_147)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_148
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_148)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_149
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_149)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_150
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_150)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_151
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_151)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_152
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_152)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_153
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_153)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_154
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_154)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_155
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_155)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_156
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_156)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_157
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_157)

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_158
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_158)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_159
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_159)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_160
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_160)

//push constant 9
	@9
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_161
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_161)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_162
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_162)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_163
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_163)

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_164
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_164)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_165
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_165)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_166
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_166)

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_167
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_167)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_168
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_168)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_169
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_169)

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_170
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_170)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_171
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_171)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_172
	D;JGT
	@FIRST_MINUS_172
	D;JLT
	@SAME_SIGN_172
	0;JMP
(FIRST_PLUS_172)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_172
	D;JLT
	@SAME_SIGN_172
	0;JMP
(DIF_SIGN_LT_172)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_172
	0;JMP
(FIRST_MINUS_172)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_172
	D;JGT
	@SAME_SIGN_172
	0;JMP
(DIF_SIGN_GT_172)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_172
	0;JMP
(SAME_SIGN_172)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_172
	D;JGT
	@LOWER_172
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_172
	0;JMP
(GRATER_172)
	@SP
	A=M-1
	M=0
	@CON_172
	0;JMP
(LOWER_172)
	@SP
	A=M-1
	M=0
(CON_172)

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_173
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_173)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_174
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_174)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_175
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_175)

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_176
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_176)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_177
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_177)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_178
	D;JGT
	@FIRST_MINUS_178
	D;JLT
	@SAME_SIGN_178
	0;JMP
(FIRST_PLUS_178)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_178
	D;JLT
	@SAME_SIGN_178
	0;JMP
(DIF_SIGN_LT_178)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_178
	0;JMP
(FIRST_MINUS_178)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_178
	D;JGT
	@SAME_SIGN_178
	0;JMP
(DIF_SIGN_GT_178)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_178
	0;JMP
(SAME_SIGN_178)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_178
	D;JGT
	@LOWER_178
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_178
	0;JMP
(GRATER_178)
	@SP
	A=M-1
	M=0
	@CON_178
	0;JMP
(LOWER_178)
	@SP
	A=M-1
	M=0
(CON_178)

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@IF_FALSE3
	0;JMP

//label IF_TRUE3
(IF_TRUE3)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_179
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_179)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_180
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_180)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_181
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_181)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_182
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_182)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_183
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_183)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_184
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_184)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_185
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_185)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_186
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_186)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_187
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_187)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_188
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_188)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_189
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_189)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_190
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_190)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_191
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_191)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_192
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_192)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_193
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_193)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_194
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_194)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_195
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_195)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_196
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_196)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_197
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_197)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_198
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_198)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_199
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_199)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_200
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_200)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_201
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_201)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_202
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_202)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_203
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_203)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_204
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_204)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_205
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_205)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_206
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_206)

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_207
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_207)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_208
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_208)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_209
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_209)

//push constant 9
	@9
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_210
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_210)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_211
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_211)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_212
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_212)

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_213
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_213)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_214
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_214)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_215
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_215)

//push constant 9
	@9
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_216
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_216)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_217
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_217)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_218
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_218)

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_219
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_219)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawPixel 2
	@RETURN_ADDRESS_220
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_220)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_221
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_221)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_222
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_222)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_223
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_223)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_224
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_224)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_225
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_225)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE3
(IF_FALSE3)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_226
	D;JGT
	@FIRST_MINUS_226
	D;JLT
	@SAME_SIGN_226
	0;JMP
(FIRST_PLUS_226)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_226
	D;JLT
	@SAME_SIGN_226
	0;JMP
(DIF_SIGN_LT_226)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_226
	0;JMP
(FIRST_MINUS_226)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_226
	D;JGT
	@SAME_SIGN_226
	0;JMP
(DIF_SIGN_GT_226)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_226
	0;JMP
(SAME_SIGN_226)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_226
	D;JGT
	@LOWER_226
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_226
	0;JMP
(GRATER_226)
	@SP
	A=M-1
	M=0
	@CON_226
	0;JMP
(LOWER_226)
	@SP
	A=M-1
	M=0
(CON_226)

//if-goto IF_TRUE4
	@SP
	AM=M-1
	D=M
	@IF_TRUE4
	D;JNE

//goto IF_FALSE4
	@IF_FALSE4
	0;JMP

//label IF_TRUE4
(IF_TRUE4)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_227
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_227)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_228
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_228)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_229
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_229)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_230
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_230)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_231
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_231)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_232
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_232)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_233
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_233)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_234
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_234)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_235
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_235)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_236
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_236)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_237
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_237)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_238
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_238)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_239
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_239)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_240
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_240)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_241
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_241)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_242
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_242)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_243
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_243)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_244
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_244)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_245
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_245)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_246
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_246)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_247
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_247)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_248
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_248)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_249
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_249)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_250
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_250)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_251
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_251)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_252
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_252)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_253
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_253)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_254
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_254)

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_255
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_255)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_256
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_256)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE4
(IF_FALSE4)

//label IF_FALSE0
(IF_FALSE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Board.drawSn 3
(Board.drawSn)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_257
	D;JGT
	@FIRST_MINUS_257
	D;JLT
	@SAME_SIGN_257
	0;JMP
(FIRST_PLUS_257)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_257
	D;JLT
	@SAME_SIGN_257
	0;JMP
(DIF_SIGN_LT_257)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_257
	0;JMP
(FIRST_MINUS_257)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_257
	D;JGT
	@SAME_SIGN_257
	0;JMP
(DIF_SIGN_GT_257)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_257
	0;JMP
(SAME_SIGN_257)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_257
	D;JGT
	@LOWER_257
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_257
	0;JMP
(GRATER_257)
	@SP
	A=M-1
	M=0
	@CON_257
	0;JMP
(LOWER_257)
	@SP
	A=M-1
	M=-1
(CON_257)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//label WHILE_EXP1
(WHILE_EXP1)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_258
	D;JGT
	@FIRST_MINUS_258
	D;JLT
	@SAME_SIGN_258
	0;JMP
(FIRST_PLUS_258)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_258
	D;JLT
	@SAME_SIGN_258
	0;JMP
(DIF_SIGN_LT_258)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_258
	0;JMP
(FIRST_MINUS_258)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_258
	D;JGT
	@SAME_SIGN_258
	0;JMP
(DIF_SIGN_GT_258)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_258
	0;JMP
(SAME_SIGN_258)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_258
	D;JGT
	@LOWER_258
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_258
	0;JMP
(GRATER_258)
	@SP
	A=M-1
	M=0
	@CON_258
	0;JMP
(LOWER_258)
	@SP
	A=M-1
	M=-1
(CON_258)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@WHILE_END1
	D;JNE

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP1
	@WHILE_EXP1
	0;JMP

//label WHILE_END1
(WHILE_END1)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Keyboard.init 0
(Keyboard.init)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Keyboard.keyPressed 0
(Keyboard.keyPressed)

//push constant 24576
	@24576
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Memory.peek 1
	@RETURN_ADDRESS_259
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Memory.peek
	0;JMP
(RETURN_ADDRESS_259)

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Keyboard.readChar 2
(Keyboard.readChar)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printChar 1
	@RETURN_ADDRESS_260
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printChar
	0;JMP
(RETURN_ADDRESS_260)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_261
	D;JGT
	@FIRST_MINUS_261
	D;JLT
	@SAME_SIGN_261
	0;JMP
(FIRST_PLUS_261)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_261
	D;JLT
	@SAME_SIGN_261
	0;JMP
(DIF_SIGN_LT_261)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_261
	0;JMP
(FIRST_MINUS_261)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_261
	D;JGT
	@SAME_SIGN_261
	0;JMP
(DIF_SIGN_GT_261)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_261
	0;JMP
(SAME_SIGN_261)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_261
	D;JGT
	@LOWER_261
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_261
	0;JMP
(GRATER_261)
	@SP
	A=M-1
	M=0
	@CON_261
	0;JMP
(LOWER_261)
	@SP
	A=M-1
	M=0
(CON_261)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_262
	D;JGT
	@FIRST_MINUS_262
	D;JLT
	@SAME_SIGN_262
	0;JMP
(FIRST_PLUS_262)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_262
	D;JLT
	@SAME_SIGN_262
	0;JMP
(DIF_SIGN_LT_262)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_262
	0;JMP
(FIRST_MINUS_262)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_262
	D;JGT
	@SAME_SIGN_262
	0;JMP
(DIF_SIGN_GT_262)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_262
	0;JMP
(SAME_SIGN_262)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_262
	D;JGT
	@LOWER_262
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_262
	0;JMP
(GRATER_262)
	@SP
	A=M-1
	M=-1
	@CON_262
	0;JMP
(LOWER_262)
	@SP
	A=M-1
	M=0
(CON_262)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//call Keyboard.keyPressed 0
	@RETURN_ADDRESS_263
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Keyboard.keyPressed
	0;JMP
(RETURN_ADDRESS_263)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_264
	D;JGT
	@FIRST_MINUS_264
	D;JLT
	@SAME_SIGN_264
	0;JMP
(FIRST_PLUS_264)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_264
	D;JLT
	@SAME_SIGN_264
	0;JMP
(DIF_SIGN_LT_264)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_264
	0;JMP
(FIRST_MINUS_264)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_264
	D;JGT
	@SAME_SIGN_264
	0;JMP
(DIF_SIGN_GT_264)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_264
	0;JMP
(SAME_SIGN_264)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_264
	D;JGT
	@LOWER_264
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_264
	0;JMP
(GRATER_264)
	@SP
	A=M-1
	M=-1
	@CON_264
	0;JMP
(LOWER_264)
	@SP
	A=M-1
	M=0
(CON_264)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//call String.backSpace 0
	@RETURN_ADDRESS_265
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.backSpace
	0;JMP
(RETURN_ADDRESS_265)

//call Output.printChar 1
	@RETURN_ADDRESS_266
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printChar
	0;JMP
(RETURN_ADDRESS_266)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printChar 1
	@RETURN_ADDRESS_267
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printChar
	0;JMP
(RETURN_ADDRESS_267)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Keyboard.readLine 5
(Keyboard.readLine)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 80
	@80
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_268
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_268)

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_269
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_269)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call String.newLine 0
	@RETURN_ADDRESS_270
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.newLine
	0;JMP
(RETURN_ADDRESS_270)

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call String.backSpace 0
	@RETURN_ADDRESS_271
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.backSpace
	0;JMP
(RETURN_ADDRESS_271)

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 4
	@4
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//call Keyboard.readChar 0
	@RETURN_ADDRESS_272
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Keyboard.readChar
	0;JMP
(RETURN_ADDRESS_272)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_273
	D;JGT
	@FIRST_MINUS_273
	D;JLT
	@SAME_SIGN_273
	0;JMP
(FIRST_PLUS_273)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_273
	D;JLT
	@SAME_SIGN_273
	0;JMP
(DIF_SIGN_LT_273)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_273
	0;JMP
(FIRST_MINUS_273)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_273
	D;JGT
	@SAME_SIGN_273
	0;JMP
(DIF_SIGN_GT_273)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_273
	0;JMP
(SAME_SIGN_273)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_273
	D;JGT
	@LOWER_273
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_273
	0;JMP
(GRATER_273)
	@SP
	A=M-1
	M=0
	@CON_273
	0;JMP
(LOWER_273)
	@SP
	A=M-1
	M=0
(CON_273)

//pop local 4
	@4
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 4
	@4
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_274
	D;JGT
	@FIRST_MINUS_274
	D;JLT
	@SAME_SIGN_274
	0;JMP
(FIRST_PLUS_274)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_274
	D;JLT
	@SAME_SIGN_274
	0;JMP
(DIF_SIGN_LT_274)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_274
	0;JMP
(FIRST_MINUS_274)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_274
	D;JGT
	@SAME_SIGN_274
	0;JMP
(DIF_SIGN_GT_274)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_274
	0;JMP
(SAME_SIGN_274)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_274
	D;JGT
	@LOWER_274
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_274
	0;JMP
(GRATER_274)
	@SP
	A=M-1
	M=0
	@CON_274
	0;JMP
(LOWER_274)
	@SP
	A=M-1
	M=0
(CON_274)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.eraseLastChar 1
	@RETURN_ADDRESS_275
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.eraseLastChar
	0;JMP
(RETURN_ADDRESS_275)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END1
	@IF_END1
	0;JMP

//label IF_FALSE1
(IF_FALSE1)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_276
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_276)

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END1
(IF_END1)

//label IF_FALSE0
(IF_FALSE0)

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Keyboard.readInt 2
(Keyboard.readInt)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Keyboard.readLine 1
	@RETURN_ADDRESS_277
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Keyboard.readLine
	0;JMP
(RETURN_ADDRESS_277)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.intValue 1
	@RETURN_ADDRESS_278
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.intValue
	0;JMP
(RETURN_ADDRESS_278)

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_279
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_279)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Main.main 1
(Main.main)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 5
	@Main5
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 6
	@Main6
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 131
	@131
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 1
	@Main1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 133
	@133
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 2
	@Main2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 130
	@130
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 4
	@Main4
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 132
	@132
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 3
	@Main3
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 23
	@23
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_280
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_280)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_281
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_281)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_282
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_282)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_283
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_283)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_284
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_284)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_285
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_285)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_286
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_286)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_287
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_287)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_288
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_288)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_289
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_289)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_290
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_290)

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_291
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_291)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_292
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_292)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_293
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_293)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_294
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_294)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_295
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_295)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_296
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_296)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_297
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_297)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_298
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_298)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_299
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_299)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_300
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_300)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_301
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_301)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_302
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_302)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_303
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_303)

//pop static 7
	@Main7
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_304
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_304)

//push constant 89
	@89
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_305
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_305)

//push constant 79
	@79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_306
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_306)

//push constant 85
	@85
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_307
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_307)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_308
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_308)

//push constant 87
	@87
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_309
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_309)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_310
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_310)

//push constant 78
	@78
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_311
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_311)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_312
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_312)

//pop static 8
	@Main8
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 9
	@9
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_313
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_313)

//push constant 89
	@89
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_314
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_314)

//push constant 79
	@79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_315
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_315)

//push constant 85
	@85
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_316
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_316)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_317
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_317)

//push constant 76
	@76
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_318
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_318)

//push constant 79
	@79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_319
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_319)

//push constant 83
	@83
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_320
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_320)

//push constant 69
	@69
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_321
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_321)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_322
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_322)

//pop static 9
	@Main9
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_323
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_323)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_324
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_324)

//push constant 84
	@84
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_325
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_325)

//push constant 39
	@39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_326
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_326)

//push constant 83
	@83
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_327
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_327)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_328
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_328)

//push constant 65
	@65
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_329
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_329)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_330
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_330)

//push constant 84
	@84
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_331
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_331)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_332
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_332)

//push constant 69
	@69
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_333
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_333)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_334
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_334)

//pop static 10
	@Main10
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 80
	@80
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 0
	@Main0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 128
	@128
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 0
	@Main0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Board.new 0
	@RETURN_ADDRESS_335
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.new
	0;JMP
(RETURN_ADDRESS_335)

//pop static 11
	@Main11
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Main5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Main6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Main1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 2
	@Main2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 3
	@Main3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 4
	@Main4
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setConsts 7
	@RETURN_ADDRESS_336
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setConsts
	0;JMP
(RETURN_ADDRESS_336)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.initGrid 1
	@RETURN_ADDRESS_337
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.initGrid
	0;JMP
(RETURN_ADDRESS_337)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 5
	@Main5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.isGameOver 2
	@RETURN_ADDRESS_338
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.isGameOver
	0;JMP
(RETURN_ADDRESS_338)

//not
	@SP
	A=M-1
	M=!M

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Main5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_339
	D;JGT
	@FIRST_MINUS_339
	D;JLT
	@SAME_SIGN_339
	0;JMP
(FIRST_PLUS_339)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_339
	D;JLT
	@SAME_SIGN_339
	0;JMP
(DIF_SIGN_LT_339)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_339
	0;JMP
(FIRST_MINUS_339)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_339
	D;JGT
	@SAME_SIGN_339
	0;JMP
(DIF_SIGN_GT_339)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_339
	0;JMP
(SAME_SIGN_339)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_339
	D;JGT
	@LOWER_339
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_339
	0;JMP
(GRATER_339)
	@SP
	A=M-1
	M=0
	@CON_339
	0;JMP
(LOWER_339)
	@SP
	A=M-1
	M=0
(CON_339)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//call Main.playerMove 0
	@RETURN_ADDRESS_340
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Main.playerMove
	0;JMP
(RETURN_ADDRESS_340)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.computerMove 1
	@RETURN_ADDRESS_341
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.computerMove
	0;JMP
(RETURN_ADDRESS_341)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END0
(IF_END0)

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.getWinner 1
	@RETURN_ADDRESS_342
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.getWinner
	0;JMP
(RETURN_ADDRESS_342)

//call Main.printGameOver 1
	@RETURN_ADDRESS_343
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Main.printGameOver
	0;JMP
(RETURN_ADDRESS_343)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.dispose 1
	@RETURN_ADDRESS_344
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.dispose
	0;JMP
(RETURN_ADDRESS_344)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 7
	@Main7
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_345
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_345)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 8
	@Main8
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_346
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_346)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 9
	@Main9
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_347
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_347)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 10
	@Main10
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_348
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_348)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Main.playerMove 5
(Main.playerMove)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//call Keyboard.keyPressed 0
	@RETURN_ADDRESS_349
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Keyboard.keyPressed
	0;JMP
(RETURN_ADDRESS_349)

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Main0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_350
	D;JGT
	@FIRST_MINUS_350
	D;JLT
	@SAME_SIGN_350
	0;JMP
(FIRST_PLUS_350)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_350
	D;JLT
	@SAME_SIGN_350
	0;JMP
(DIF_SIGN_LT_350)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_350
	0;JMP
(FIRST_MINUS_350)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_350
	D;JGT
	@SAME_SIGN_350
	0;JMP
(DIF_SIGN_GT_350)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_350
	0;JMP
(SAME_SIGN_350)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_350
	D;JGT
	@LOWER_350
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_350
	0;JMP
(GRATER_350)
	@SP
	A=M-1
	M=0
	@CON_350
	0;JMP
(LOWER_350)
	@SP
	A=M-1
	M=0
(CON_350)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_351
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_351)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_352
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_352)

//call Sys.wait 1
	@RETURN_ADDRESS_353
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_353)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.getSelectedRow 1
	@RETURN_ADDRESS_354
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.getSelectedRow
	0;JMP
(RETURN_ADDRESS_354)

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.getSelectedCol 1
	@RETURN_ADDRESS_355
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.getSelectedCol
	0;JMP
(RETURN_ADDRESS_355)

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Main5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//call Board.reverse 5
	@RETURN_ADDRESS_356
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@5
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.reverse
	0;JMP
(RETURN_ADDRESS_356)

//pop local 4
	@4
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 4
	@4
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_357
	D;JGT
	@FIRST_MINUS_357
	D;JLT
	@SAME_SIGN_357
	0;JMP
(FIRST_PLUS_357)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_357
	D;JLT
	@SAME_SIGN_357
	0;JMP
(DIF_SIGN_LT_357)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_357
	0;JMP
(FIRST_MINUS_357)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_357
	D;JGT
	@SAME_SIGN_357
	0;JMP
(DIF_SIGN_GT_357)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_357
	0;JMP
(SAME_SIGN_357)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_357
	D;JGT
	@LOWER_357
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_357
	0;JMP
(GRATER_357)
	@SP
	A=M-1
	M=-1
	@CON_357
	0;JMP
(LOWER_357)
	@SP
	A=M-1
	M=0
(CON_357)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END1
	@IF_END1
	0;JMP

//label IF_FALSE1
(IF_FALSE1)

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 36
	@36
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.moveCursor 2
	@RETURN_ADDRESS_358
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.moveCursor
	0;JMP
(RETURN_ADDRESS_358)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 7
	@Main7
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_359
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_359)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END1
(IF_END1)

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Main1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_360
	D;JGT
	@FIRST_MINUS_360
	D;JLT
	@SAME_SIGN_360
	0;JMP
(FIRST_PLUS_360)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_360
	D;JLT
	@SAME_SIGN_360
	0;JMP
(DIF_SIGN_LT_360)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_360
	0;JMP
(FIRST_MINUS_360)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_360
	D;JGT
	@SAME_SIGN_360
	0;JMP
(DIF_SIGN_GT_360)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_360
	0;JMP
(SAME_SIGN_360)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_360
	D;JGT
	@LOWER_360
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_360
	0;JMP
(GRATER_360)
	@SP
	A=M-1
	M=0
	@CON_360
	0;JMP
(LOWER_360)
	@SP
	A=M-1
	M=0
(CON_360)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 2
	@Main2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_361
	D;JGT
	@FIRST_MINUS_361
	D;JLT
	@SAME_SIGN_361
	0;JMP
(FIRST_PLUS_361)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_361
	D;JLT
	@SAME_SIGN_361
	0;JMP
(DIF_SIGN_LT_361)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_361
	0;JMP
(FIRST_MINUS_361)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_361
	D;JGT
	@SAME_SIGN_361
	0;JMP
(DIF_SIGN_GT_361)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_361
	0;JMP
(SAME_SIGN_361)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_361
	D;JGT
	@LOWER_361
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_361
	0;JMP
(GRATER_361)
	@SP
	A=M-1
	M=0
	@CON_361
	0;JMP
(LOWER_361)
	@SP
	A=M-1
	M=0
(CON_361)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 3
	@Main3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_362
	D;JGT
	@FIRST_MINUS_362
	D;JLT
	@SAME_SIGN_362
	0;JMP
(FIRST_PLUS_362)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_362
	D;JLT
	@SAME_SIGN_362
	0;JMP
(DIF_SIGN_LT_362)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_362
	0;JMP
(FIRST_MINUS_362)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_362
	D;JGT
	@SAME_SIGN_362
	0;JMP
(DIF_SIGN_GT_362)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_362
	0;JMP
(SAME_SIGN_362)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_362
	D;JGT
	@LOWER_362
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_362
	0;JMP
(GRATER_362)
	@SP
	A=M-1
	M=0
	@CON_362
	0;JMP
(LOWER_362)
	@SP
	A=M-1
	M=0
(CON_362)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 4
	@Main4
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_363
	D;JGT
	@FIRST_MINUS_363
	D;JLT
	@SAME_SIGN_363
	0;JMP
(FIRST_PLUS_363)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_363
	D;JLT
	@SAME_SIGN_363
	0;JMP
(DIF_SIGN_LT_363)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_363
	0;JMP
(FIRST_MINUS_363)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_363
	D;JGT
	@SAME_SIGN_363
	0;JMP
(DIF_SIGN_GT_363)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_363
	0;JMP
(SAME_SIGN_363)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_363
	D;JGT
	@LOWER_363
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_363
	0;JMP
(GRATER_363)
	@SP
	A=M-1
	M=0
	@CON_363
	0;JMP
(LOWER_363)
	@SP
	A=M-1
	M=0
(CON_363)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_364
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_364)

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Sys.wait 1
	@RETURN_ADDRESS_365
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_365)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.moveSelected 2
	@RETURN_ADDRESS_366
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.moveSelected
	0;JMP
(RETURN_ADDRESS_366)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//label IF_END0
(IF_END0)

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.setColor 1
	@RETURN_ADDRESS_367
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.setColor
	0;JMP
(RETURN_ADDRESS_367)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 288
	@288
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 290
	@290
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 125
	@125
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.drawRectangle 4
	@RETURN_ADDRESS_368
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawRectangle
	0;JMP
(RETURN_ADDRESS_368)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Main.printGameOver 1
(Main.printGameOver)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Main5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_369
	D;JGT
	@FIRST_MINUS_369
	D;JLT
	@SAME_SIGN_369
	0;JMP
(FIRST_PLUS_369)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_369
	D;JLT
	@SAME_SIGN_369
	0;JMP
(DIF_SIGN_LT_369)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_369
	0;JMP
(FIRST_MINUS_369)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_369
	D;JGT
	@SAME_SIGN_369
	0;JMP
(DIF_SIGN_GT_369)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_369
	0;JMP
(SAME_SIGN_369)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_369
	D;JGT
	@LOWER_369
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_369
	0;JMP
(GRATER_369)
	@SP
	A=M-1
	M=0
	@CON_369
	0;JMP
(LOWER_369)
	@SP
	A=M-1
	M=0
(CON_369)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push static 8
	@Main8
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Main6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_370
	D;JGT
	@FIRST_MINUS_370
	D;JLT
	@SAME_SIGN_370
	0;JMP
(FIRST_PLUS_370)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_370
	D;JLT
	@SAME_SIGN_370
	0;JMP
(DIF_SIGN_LT_370)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_370
	0;JMP
(FIRST_MINUS_370)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_370
	D;JGT
	@SAME_SIGN_370
	0;JMP
(DIF_SIGN_GT_370)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_370
	0;JMP
(SAME_SIGN_370)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_370
	D;JGT
	@LOWER_370
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_370
	0;JMP
(GRATER_370)
	@SP
	A=M-1
	M=0
	@CON_370
	0;JMP
(LOWER_370)
	@SP
	A=M-1
	M=0
(CON_370)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push static 9
	@Main9
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END1
	@IF_END1
	0;JMP

//label IF_FALSE1
(IF_FALSE1)

//push static 10
	@Main10
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END1
(IF_END1)

//label IF_END0
(IF_END0)

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 42
	@42
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.moveCursor 2
	@RETURN_ADDRESS_371
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.moveCursor
	0;JMP
(RETURN_ADDRESS_371)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_372
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_372)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push constant 1900
	@1900
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.sqrt 1
	@RETURN_ADDRESS_373
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.sqrt
	0;JMP
(RETURN_ADDRESS_373)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Memory.peek 1
	@RETURN_ADDRESS_374
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Memory.peek
	0;JMP
(RETURN_ADDRESS_374)

//pop static 0
	@Main0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Main0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Memory.poke 2
	@RETURN_ADDRESS_375
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Memory.poke
	0;JMP
(RETURN_ADDRESS_375)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop static 0
	@Main0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 5
	@Main5
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 6
	@Main6
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop static 1
	@Main1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 23
	@23
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_376
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_376)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_377
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_377)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_378
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_378)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_379
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_379)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_380
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_380)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_381
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_381)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_382
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_382)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_383
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_383)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_384
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_384)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_385
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_385)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_386
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_386)

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_387
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_387)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_388
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_388)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_389
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_389)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_390
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_390)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_391
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_391)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_392
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_392)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_393
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_393)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_394
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_394)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_395
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_395)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_396
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_396)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_397
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_397)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_398
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_398)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_399
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_399)

//pop static 7
	@Main7
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop static 2
	@Main2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 23
	@23
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_400
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_400)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_401
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_401)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_402
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_402)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_403
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_403)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_404
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_404)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_405
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_405)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_406
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_406)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_407
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_407)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_408
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_408)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_409
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_409)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_410
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_410)

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_411
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_411)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_412
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_412)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_413
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_413)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_414
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_414)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_415
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_415)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_416
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_416)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_417
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_417)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_418
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_418)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_419
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_419)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_420
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_420)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_421
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_421)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_422
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_422)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_423
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_423)

//pop static 7
	@Main7
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop static 4
	@Main4
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 23
	@23
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_424
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_424)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_425
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_425)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_426
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_426)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_427
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_427)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_428
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_428)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_429
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_429)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_430
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_430)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_431
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_431)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_432
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_432)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_433
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_433)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_434
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_434)

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_435
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_435)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_436
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_436)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_437
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_437)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_438
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_438)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_439
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_439)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_440
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_440)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_441
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_441)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_442
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_442)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_443
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_443)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_444
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_444)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_445
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_445)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_446
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_446)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_447
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_447)

//pop static 7
	@Main7
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop static 3
	@Main3
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 23
	@23
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_448
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_448)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_449
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_449)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_450
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_450)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_451
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_451)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_452
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_452)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_453
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_453)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_454
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_454)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_455
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_455)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_456
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_456)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_457
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_457)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_458
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_458)

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_459
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_459)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_460
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_460)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_461
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_461)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_462
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_462)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_463
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_463)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_464
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_464)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_465
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_465)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_466
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_466)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_467
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_467)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_468
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_468)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_469
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_469)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_470
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_470)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_471
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_471)

//pop static 7
	@Main7
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_472
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_472)

//push constant 89
	@89
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_473
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_473)

//push constant 79
	@79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_474
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_474)

//push constant 85
	@85
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_475
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_475)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_476
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_476)

//push constant 87
	@87
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_477
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_477)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_478
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_478)

//push constant 78
	@78
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_479
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_479)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_480
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_480)

//pop static 8
	@Main8
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 9
	@9
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_481
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_481)

//push constant 89
	@89
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_482
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_482)

//push constant 79
	@79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_483
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_483)

//push constant 85
	@85
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_484
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_484)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_485
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_485)

//push constant 76
	@76
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_486
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_486)

//push constant 79
	@79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_487
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_487)

//push constant 83
	@83
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_488
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_488)

//push constant 69
	@69
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_489
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_489)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_490
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_490)

//pop static 9
	@Main9
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_491
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_491)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_492
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_492)

//push constant 84
	@84
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_493
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_493)

//push constant 39
	@39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_494
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_494)

//push constant 83
	@83
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_495
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_495)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_496
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_496)

//push constant 65
	@65
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_497
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_497)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_498
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_498)

//push constant 84
	@84
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_499
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_499)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_500
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_500)

//push constant 69
	@69
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_501
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_501)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_502
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_502)

//pop static 10
	@Main10
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 128
	@128
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 0
	@Main0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Board.new 0
	@RETURN_ADDRESS_503
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.new
	0;JMP
(RETURN_ADDRESS_503)

//pop static 11
	@Main11
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Main5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Main6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Main1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 2
	@Main2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 3
	@Main3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 4
	@Main4
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.setConsts 7
	@RETURN_ADDRESS_504
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@7
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.setConsts
	0;JMP
(RETURN_ADDRESS_504)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.initGrid 1
	@RETURN_ADDRESS_505
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.initGrid
	0;JMP
(RETURN_ADDRESS_505)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.isGameOver 2
	@RETURN_ADDRESS_506
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.isGameOver
	0;JMP
(RETURN_ADDRESS_506)

//not
	@SP
	A=M-1
	M=!M

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Main5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_507
	D;JGT
	@FIRST_MINUS_507
	D;JLT
	@SAME_SIGN_507
	0;JMP
(FIRST_PLUS_507)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_507
	D;JLT
	@SAME_SIGN_507
	0;JMP
(DIF_SIGN_LT_507)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_507
	0;JMP
(FIRST_MINUS_507)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_507
	D;JGT
	@SAME_SIGN_507
	0;JMP
(DIF_SIGN_GT_507)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_507
	0;JMP
(SAME_SIGN_507)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_507
	D;JGT
	@LOWER_507
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_507
	0;JMP
(GRATER_507)
	@SP
	A=M-1
	M=0
	@CON_507
	0;JMP
(LOWER_507)
	@SP
	A=M-1
	M=0
(CON_507)

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@IF_FALSE3
	0;JMP

//label IF_TRUE3
(IF_TRUE3)

//call Main.playerMove 0
	@RETURN_ADDRESS_508
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Main.playerMove
	0;JMP
(RETURN_ADDRESS_508)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END3
	@IF_END3
	0;JMP

//label IF_FALSE3
(IF_FALSE3)

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.computerMove 1
	@RETURN_ADDRESS_509
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.computerMove
	0;JMP
(RETURN_ADDRESS_509)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END3
(IF_END3)

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.getWinner 1
	@RETURN_ADDRESS_510
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.getWinner
	0;JMP
(RETURN_ADDRESS_510)

//call Main.printGameOver 1
	@RETURN_ADDRESS_511
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Main.printGameOver
	0;JMP
(RETURN_ADDRESS_511)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 11
	@Main11
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Board.dispose 1
	@RETURN_ADDRESS_512
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Board.dispose
	0;JMP
(RETURN_ADDRESS_512)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 7
	@Main7
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_513
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_513)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 8
	@Main8
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_514
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_514)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 9
	@Main9
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_515
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_515)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 10
	@Main10
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_516
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_516)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Math.init 1
(Math.init)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.new 1
	@RETURN_ADDRESS_517
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.new
	0;JMP
(RETURN_ADDRESS_517)

//pop static 1
	@Math1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.new 1
	@RETURN_ADDRESS_518
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.new
	0;JMP
(RETURN_ADDRESS_518)

//pop static 0
	@Math0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Math0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_519
	D;JGT
	@FIRST_MINUS_519
	D;JLT
	@SAME_SIGN_519
	0;JMP
(FIRST_PLUS_519)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_519
	D;JLT
	@SAME_SIGN_519
	0;JMP
(DIF_SIGN_LT_519)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_519
	0;JMP
(FIRST_MINUS_519)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_519
	D;JGT
	@SAME_SIGN_519
	0;JMP
(DIF_SIGN_GT_519)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_519
	0;JMP
(SAME_SIGN_519)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_519
	D;JGT
	@LOWER_519
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_519
	0;JMP
(GRATER_519)
	@SP
	A=M-1
	M=0
	@CON_519
	0;JMP
(LOWER_519)
	@SP
	A=M-1
	M=-1
(CON_519)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Math0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push static 0
	@Math0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push static 0
	@Math0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Math.abs 0
(Math.abs)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_520
	D;JGT
	@FIRST_MINUS_520
	D;JLT
	@SAME_SIGN_520
	0;JMP
(FIRST_PLUS_520)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_520
	D;JLT
	@SAME_SIGN_520
	0;JMP
(DIF_SIGN_LT_520)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_520
	0;JMP
(FIRST_MINUS_520)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_520
	D;JGT
	@SAME_SIGN_520
	0;JMP
(DIF_SIGN_GT_520)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_520
	0;JMP
(SAME_SIGN_520)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_520
	D;JGT
	@LOWER_520
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_520
	0;JMP
(GRATER_520)
	@SP
	A=M-1
	M=0
	@CON_520
	0;JMP
(LOWER_520)
	@SP
	A=M-1
	M=-1
(CON_520)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//pop argument 0
	@0
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Math.multiply 5
(Math.multiply)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_521
	D;JGT
	@FIRST_MINUS_521
	D;JLT
	@SAME_SIGN_521
	0;JMP
(FIRST_PLUS_521)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_521
	D;JLT
	@SAME_SIGN_521
	0;JMP
(DIF_SIGN_LT_521)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_521
	0;JMP
(FIRST_MINUS_521)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_521
	D;JGT
	@SAME_SIGN_521
	0;JMP
(DIF_SIGN_GT_521)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_521
	0;JMP
(SAME_SIGN_521)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_521
	D;JGT
	@LOWER_521
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_521
	0;JMP
(GRATER_521)
	@SP
	A=M-1
	M=0
	@CON_521
	0;JMP
(LOWER_521)
	@SP
	A=M-1
	M=-1
(CON_521)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_522
	D;JGT
	@FIRST_MINUS_522
	D;JLT
	@SAME_SIGN_522
	0;JMP
(FIRST_PLUS_522)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_522
	D;JLT
	@SAME_SIGN_522
	0;JMP
(DIF_SIGN_LT_522)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_522
	0;JMP
(FIRST_MINUS_522)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_522
	D;JGT
	@SAME_SIGN_522
	0;JMP
(DIF_SIGN_GT_522)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_522
	0;JMP
(SAME_SIGN_522)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_522
	D;JGT
	@LOWER_522
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_522
	0;JMP
(GRATER_522)
	@SP
	A=M-1
	M=-1
	@CON_522
	0;JMP
(LOWER_522)
	@SP
	A=M-1
	M=0
(CON_522)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_523
	D;JGT
	@FIRST_MINUS_523
	D;JLT
	@SAME_SIGN_523
	0;JMP
(FIRST_PLUS_523)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_523
	D;JLT
	@SAME_SIGN_523
	0;JMP
(DIF_SIGN_LT_523)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_523
	0;JMP
(FIRST_MINUS_523)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_523
	D;JGT
	@SAME_SIGN_523
	0;JMP
(DIF_SIGN_GT_523)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_523
	0;JMP
(SAME_SIGN_523)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_523
	D;JGT
	@LOWER_523
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_523
	0;JMP
(GRATER_523)
	@SP
	A=M-1
	M=-1
	@CON_523
	0;JMP
(LOWER_523)
	@SP
	A=M-1
	M=0
(CON_523)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_524
	D;JGT
	@FIRST_MINUS_524
	D;JLT
	@SAME_SIGN_524
	0;JMP
(FIRST_PLUS_524)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_524
	D;JLT
	@SAME_SIGN_524
	0;JMP
(DIF_SIGN_LT_524)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_524
	0;JMP
(FIRST_MINUS_524)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_524
	D;JGT
	@SAME_SIGN_524
	0;JMP
(DIF_SIGN_GT_524)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_524
	0;JMP
(SAME_SIGN_524)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_524
	D;JGT
	@LOWER_524
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_524
	0;JMP
(GRATER_524)
	@SP
	A=M-1
	M=0
	@CON_524
	0;JMP
(LOWER_524)
	@SP
	A=M-1
	M=-1
(CON_524)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//pop local 4
	@4
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.abs 1
	@RETURN_ADDRESS_525
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.abs
	0;JMP
(RETURN_ADDRESS_525)

//pop argument 0
	@0
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.abs 1
	@RETURN_ADDRESS_526
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.abs
	0;JMP
(RETURN_ADDRESS_526)

//pop argument 1
	@1
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_527
	D;JGT
	@FIRST_MINUS_527
	D;JLT
	@SAME_SIGN_527
	0;JMP
(FIRST_PLUS_527)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_527
	D;JLT
	@SAME_SIGN_527
	0;JMP
(DIF_SIGN_LT_527)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_527
	0;JMP
(FIRST_MINUS_527)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_527
	D;JGT
	@SAME_SIGN_527
	0;JMP
(DIF_SIGN_GT_527)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_527
	0;JMP
(SAME_SIGN_527)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_527
	D;JGT
	@LOWER_527
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_527
	0;JMP
(GRATER_527)
	@SP
	A=M-1
	M=0
	@CON_527
	0;JMP
(LOWER_527)
	@SP
	A=M-1
	M=-1
(CON_527)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop argument 0
	@0
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop argument 1
	@1
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//label WHILE_EXP0
(WHILE_EXP0)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_528
	D;JGT
	@FIRST_MINUS_528
	D;JLT
	@SAME_SIGN_528
	0;JMP
(FIRST_PLUS_528)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_528
	D;JLT
	@SAME_SIGN_528
	0;JMP
(DIF_SIGN_LT_528)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_528
	0;JMP
(FIRST_MINUS_528)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_528
	D;JGT
	@SAME_SIGN_528
	0;JMP
(DIF_SIGN_GT_528)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_528
	0;JMP
(SAME_SIGN_528)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_528
	D;JGT
	@LOWER_528
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_528
	0;JMP
(GRATER_528)
	@SP
	A=M-1
	M=0
	@CON_528
	0;JMP
(LOWER_528)
	@SP
	A=M-1
	M=-1
(CON_528)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Math0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_529
	D;JGT
	@FIRST_MINUS_529
	D;JLT
	@SAME_SIGN_529
	0;JMP
(FIRST_PLUS_529)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_529
	D;JLT
	@SAME_SIGN_529
	0;JMP
(DIF_SIGN_LT_529)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_529
	0;JMP
(FIRST_MINUS_529)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_529
	D;JGT
	@SAME_SIGN_529
	0;JMP
(DIF_SIGN_GT_529)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_529
	0;JMP
(SAME_SIGN_529)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_529
	D;JGT
	@LOWER_529
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_529
	0;JMP
(GRATER_529)
	@SP
	A=M-1
	M=-1
	@CON_529
	0;JMP
(LOWER_529)
	@SP
	A=M-1
	M=0
(CON_529)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Math0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop argument 0
	@0
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push local 4
	@4
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Math.divide 4
(Math.divide)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_530
	D;JGT
	@FIRST_MINUS_530
	D;JLT
	@SAME_SIGN_530
	0;JMP
(FIRST_PLUS_530)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_530
	D;JLT
	@SAME_SIGN_530
	0;JMP
(DIF_SIGN_LT_530)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_530
	0;JMP
(FIRST_MINUS_530)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_530
	D;JGT
	@SAME_SIGN_530
	0;JMP
(DIF_SIGN_GT_530)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_530
	0;JMP
(SAME_SIGN_530)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_530
	D;JGT
	@LOWER_530
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_530
	0;JMP
(GRATER_530)
	@SP
	A=M-1
	M=0
	@CON_530
	0;JMP
(LOWER_530)
	@SP
	A=M-1
	M=0
(CON_530)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.error 1
	@RETURN_ADDRESS_531
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.error
	0;JMP
(RETURN_ADDRESS_531)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_532
	D;JGT
	@FIRST_MINUS_532
	D;JLT
	@SAME_SIGN_532
	0;JMP
(FIRST_PLUS_532)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_532
	D;JLT
	@SAME_SIGN_532
	0;JMP
(DIF_SIGN_LT_532)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_532
	0;JMP
(FIRST_MINUS_532)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_532
	D;JGT
	@SAME_SIGN_532
	0;JMP
(DIF_SIGN_GT_532)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_532
	0;JMP
(SAME_SIGN_532)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_532
	D;JGT
	@LOWER_532
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_532
	0;JMP
(GRATER_532)
	@SP
	A=M-1
	M=0
	@CON_532
	0;JMP
(LOWER_532)
	@SP
	A=M-1
	M=-1
(CON_532)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_533
	D;JGT
	@FIRST_MINUS_533
	D;JLT
	@SAME_SIGN_533
	0;JMP
(FIRST_PLUS_533)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_533
	D;JLT
	@SAME_SIGN_533
	0;JMP
(DIF_SIGN_LT_533)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_533
	0;JMP
(FIRST_MINUS_533)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_533
	D;JGT
	@SAME_SIGN_533
	0;JMP
(DIF_SIGN_GT_533)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_533
	0;JMP
(SAME_SIGN_533)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_533
	D;JGT
	@LOWER_533
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_533
	0;JMP
(GRATER_533)
	@SP
	A=M-1
	M=-1
	@CON_533
	0;JMP
(LOWER_533)
	@SP
	A=M-1
	M=0
(CON_533)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_534
	D;JGT
	@FIRST_MINUS_534
	D;JLT
	@SAME_SIGN_534
	0;JMP
(FIRST_PLUS_534)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_534
	D;JLT
	@SAME_SIGN_534
	0;JMP
(DIF_SIGN_LT_534)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_534
	0;JMP
(FIRST_MINUS_534)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_534
	D;JGT
	@SAME_SIGN_534
	0;JMP
(DIF_SIGN_GT_534)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_534
	0;JMP
(SAME_SIGN_534)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_534
	D;JGT
	@LOWER_534
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_534
	0;JMP
(GRATER_534)
	@SP
	A=M-1
	M=-1
	@CON_534
	0;JMP
(LOWER_534)
	@SP
	A=M-1
	M=0
(CON_534)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_535
	D;JGT
	@FIRST_MINUS_535
	D;JLT
	@SAME_SIGN_535
	0;JMP
(FIRST_PLUS_535)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_535
	D;JLT
	@SAME_SIGN_535
	0;JMP
(DIF_SIGN_LT_535)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_535
	0;JMP
(FIRST_MINUS_535)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_535
	D;JGT
	@SAME_SIGN_535
	0;JMP
(DIF_SIGN_GT_535)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_535
	0;JMP
(SAME_SIGN_535)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_535
	D;JGT
	@LOWER_535
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_535
	0;JMP
(GRATER_535)
	@SP
	A=M-1
	M=0
	@CON_535
	0;JMP
(LOWER_535)
	@SP
	A=M-1
	M=-1
(CON_535)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Math1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.abs 1
	@RETURN_ADDRESS_536
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.abs
	0;JMP
(RETURN_ADDRESS_536)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.abs 1
	@RETURN_ADDRESS_537
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.abs
	0;JMP
(RETURN_ADDRESS_537)

//pop argument 0
	@0
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push constant 32767
	@32767
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Math1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Math1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_538
	D;JGT
	@FIRST_MINUS_538
	D;JLT
	@SAME_SIGN_538
	0;JMP
(FIRST_PLUS_538)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_538
	D;JLT
	@SAME_SIGN_538
	0;JMP
(DIF_SIGN_LT_538)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_538
	0;JMP
(FIRST_MINUS_538)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_538
	D;JGT
	@SAME_SIGN_538
	0;JMP
(DIF_SIGN_GT_538)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_538
	0;JMP
(SAME_SIGN_538)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_538
	D;JGT
	@LOWER_538
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_538
	0;JMP
(GRATER_538)
	@SP
	A=M-1
	M=0
	@CON_538
	0;JMP
(LOWER_538)
	@SP
	A=M-1
	M=-1
(CON_538)

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 1
	@Math1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Math1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Math1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 1
	@Math1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_539
	D;JGT
	@FIRST_MINUS_539
	D;JLT
	@SAME_SIGN_539
	0;JMP
(FIRST_PLUS_539)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_539
	D;JLT
	@SAME_SIGN_539
	0;JMP
(DIF_SIGN_LT_539)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_539
	0;JMP
(FIRST_MINUS_539)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_539
	D;JGT
	@SAME_SIGN_539
	0;JMP
(DIF_SIGN_GT_539)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_539
	0;JMP
(SAME_SIGN_539)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_539
	D;JGT
	@LOWER_539
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_539
	0;JMP
(GRATER_539)
	@SP
	A=M-1
	M=-1
	@CON_539
	0;JMP
(LOWER_539)
	@SP
	A=M-1
	M=0
(CON_539)

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//label IF_FALSE1
(IF_FALSE1)

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//label WHILE_EXP1
(WHILE_EXP1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_540
	D;JGT
	@FIRST_MINUS_540
	D;JLT
	@SAME_SIGN_540
	0;JMP
(FIRST_PLUS_540)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_540
	D;JLT
	@SAME_SIGN_540
	0;JMP
(DIF_SIGN_LT_540)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_540
	0;JMP
(FIRST_MINUS_540)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_540
	D;JGT
	@SAME_SIGN_540
	0;JMP
(DIF_SIGN_GT_540)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_540
	0;JMP
(SAME_SIGN_540)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_540
	D;JGT
	@LOWER_540
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_540
	0;JMP
(GRATER_540)
	@SP
	A=M-1
	M=-1
	@CON_540
	0;JMP
(LOWER_540)
	@SP
	A=M-1
	M=0
(CON_540)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@WHILE_END1
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Math1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_541
	D;JGT
	@FIRST_MINUS_541
	D;JLT
	@SAME_SIGN_541
	0;JMP
(FIRST_PLUS_541)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_541
	D;JLT
	@SAME_SIGN_541
	0;JMP
(DIF_SIGN_LT_541)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_541
	0;JMP
(FIRST_MINUS_541)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_541
	D;JGT
	@SAME_SIGN_541
	0;JMP
(DIF_SIGN_GT_541)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_541
	0;JMP
(SAME_SIGN_541)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_541
	D;JGT
	@LOWER_541
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_541
	0;JMP
(GRATER_541)
	@SP
	A=M-1
	M=-1
	@CON_541
	0;JMP
(LOWER_541)
	@SP
	A=M-1
	M=0
(CON_541)

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@IF_FALSE3
	0;JMP

//label IF_TRUE3
(IF_TRUE3)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Math0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Math1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop argument 0
	@0
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE3
(IF_FALSE3)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP1
	@WHILE_EXP1
	0;JMP

//label WHILE_END1
(WHILE_END1)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE4
	@SP
	AM=M-1
	D=M
	@IF_TRUE4
	D;JNE

//goto IF_FALSE4
	@IF_FALSE4
	0;JMP

//label IF_TRUE4
(IF_TRUE4)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE4
(IF_FALSE4)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Math.sqrt 4
(Math.sqrt)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_542
	D;JGT
	@FIRST_MINUS_542
	D;JLT
	@SAME_SIGN_542
	0;JMP
(FIRST_PLUS_542)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_542
	D;JLT
	@SAME_SIGN_542
	0;JMP
(DIF_SIGN_LT_542)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_542
	0;JMP
(FIRST_MINUS_542)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_542
	D;JGT
	@SAME_SIGN_542
	0;JMP
(DIF_SIGN_GT_542)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_542
	0;JMP
(SAME_SIGN_542)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_542
	D;JGT
	@LOWER_542
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_542
	0;JMP
(GRATER_542)
	@SP
	A=M-1
	M=0
	@CON_542
	0;JMP
(LOWER_542)
	@SP
	A=M-1
	M=-1
(CON_542)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.error 1
	@RETURN_ADDRESS_543
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.error
	0;JMP
(RETURN_ADDRESS_543)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_544
	D;JGT
	@FIRST_MINUS_544
	D;JLT
	@SAME_SIGN_544
	0;JMP
(FIRST_PLUS_544)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_544
	D;JLT
	@SAME_SIGN_544
	0;JMP
(DIF_SIGN_LT_544)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_544
	0;JMP
(FIRST_MINUS_544)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_544
	D;JGT
	@SAME_SIGN_544
	0;JMP
(DIF_SIGN_GT_544)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_544
	0;JMP
(SAME_SIGN_544)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_544
	D;JGT
	@LOWER_544
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_544
	0;JMP
(GRATER_544)
	@SP
	A=M-1
	M=-1
	@CON_544
	0;JMP
(LOWER_544)
	@SP
	A=M-1
	M=0
(CON_544)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Math0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_545
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_545)

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_546
	D;JGT
	@FIRST_MINUS_546
	D;JLT
	@SAME_SIGN_546
	0;JMP
(FIRST_PLUS_546)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_546
	D;JLT
	@SAME_SIGN_546
	0;JMP
(DIF_SIGN_LT_546)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_546
	0;JMP
(FIRST_MINUS_546)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_546
	D;JGT
	@SAME_SIGN_546
	0;JMP
(DIF_SIGN_GT_546)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_546
	0;JMP
(SAME_SIGN_546)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_546
	D;JGT
	@LOWER_546
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_546
	0;JMP
(GRATER_546)
	@SP
	A=M-1
	M=-1
	@CON_546
	0;JMP
(LOWER_546)
	@SP
	A=M-1
	M=0
(CON_546)

//not
	@SP
	A=M-1
	M=!M

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_547
	D;JGT
	@FIRST_MINUS_547
	D;JLT
	@SAME_SIGN_547
	0;JMP
(FIRST_PLUS_547)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_547
	D;JLT
	@SAME_SIGN_547
	0;JMP
(DIF_SIGN_LT_547)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_547
	0;JMP
(FIRST_MINUS_547)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_547
	D;JGT
	@SAME_SIGN_547
	0;JMP
(DIF_SIGN_GT_547)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_547
	0;JMP
(SAME_SIGN_547)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_547
	D;JGT
	@LOWER_547
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_547
	0;JMP
(GRATER_547)
	@SP
	A=M-1
	M=0
	@CON_547
	0;JMP
(LOWER_547)
	@SP
	A=M-1
	M=-1
(CON_547)

//not
	@SP
	A=M-1
	M=!M

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Math.max 0
(Math.max)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_548
	D;JGT
	@FIRST_MINUS_548
	D;JLT
	@SAME_SIGN_548
	0;JMP
(FIRST_PLUS_548)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_548
	D;JLT
	@SAME_SIGN_548
	0;JMP
(DIF_SIGN_LT_548)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_548
	0;JMP
(FIRST_MINUS_548)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_548
	D;JGT
	@SAME_SIGN_548
	0;JMP
(DIF_SIGN_GT_548)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_548
	0;JMP
(SAME_SIGN_548)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_548
	D;JGT
	@LOWER_548
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_548
	0;JMP
(GRATER_548)
	@SP
	A=M-1
	M=-1
	@CON_548
	0;JMP
(LOWER_548)
	@SP
	A=M-1
	M=0
(CON_548)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop argument 1
	@1
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Math.min 0
(Math.min)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_549
	D;JGT
	@FIRST_MINUS_549
	D;JLT
	@SAME_SIGN_549
	0;JMP
(FIRST_PLUS_549)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_549
	D;JLT
	@SAME_SIGN_549
	0;JMP
(DIF_SIGN_LT_549)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_549
	0;JMP
(FIRST_MINUS_549)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_549
	D;JGT
	@SAME_SIGN_549
	0;JMP
(DIF_SIGN_GT_549)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_549
	0;JMP
(SAME_SIGN_549)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_549
	D;JGT
	@LOWER_549
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_549
	0;JMP
(GRATER_549)
	@SP
	A=M-1
	M=0
	@CON_549
	0;JMP
(LOWER_549)
	@SP
	A=M-1
	M=-1
(CON_549)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop argument 1
	@1
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Memory.init 0
(Memory.init)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 0
	@Memory0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 2048
	@2048
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Memory0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 14334
	@14334
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 2049
	@2049
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Memory0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 2050
	@2050
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Memory.peek 0
(Memory.peek)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Memory0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Memory.poke 0
(Memory.poke)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Memory0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Memory.alloc 1
(Memory.alloc)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_550
	D;JGT
	@FIRST_MINUS_550
	D;JLT
	@SAME_SIGN_550
	0;JMP
(FIRST_PLUS_550)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_550
	D;JLT
	@SAME_SIGN_550
	0;JMP
(DIF_SIGN_LT_550)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_550
	0;JMP
(FIRST_MINUS_550)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_550
	D;JGT
	@SAME_SIGN_550
	0;JMP
(DIF_SIGN_GT_550)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_550
	0;JMP
(SAME_SIGN_550)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_550
	D;JGT
	@LOWER_550
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_550
	0;JMP
(GRATER_550)
	@SP
	A=M-1
	M=0
	@CON_550
	0;JMP
(LOWER_550)
	@SP
	A=M-1
	M=-1
(CON_550)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.error 1
	@RETURN_ADDRESS_551
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.error
	0;JMP
(RETURN_ADDRESS_551)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push constant 2048
	@2048
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_552
	D;JGT
	@FIRST_MINUS_552
	D;JLT
	@SAME_SIGN_552
	0;JMP
(FIRST_PLUS_552)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_552
	D;JLT
	@SAME_SIGN_552
	0;JMP
(DIF_SIGN_LT_552)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_552
	0;JMP
(FIRST_MINUS_552)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_552
	D;JGT
	@SAME_SIGN_552
	0;JMP
(DIF_SIGN_GT_552)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_552
	0;JMP
(SAME_SIGN_552)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_552
	D;JGT
	@LOWER_552
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_552
	0;JMP
(GRATER_552)
	@SP
	A=M-1
	M=0
	@CON_552
	0;JMP
(LOWER_552)
	@SP
	A=M-1
	M=-1
(CON_552)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16379
	@16379
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_553
	D;JGT
	@FIRST_MINUS_553
	D;JLT
	@SAME_SIGN_553
	0;JMP
(FIRST_PLUS_553)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_553
	D;JLT
	@SAME_SIGN_553
	0;JMP
(DIF_SIGN_LT_553)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_553
	0;JMP
(FIRST_MINUS_553)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_553
	D;JGT
	@SAME_SIGN_553
	0;JMP
(DIF_SIGN_GT_553)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_553
	0;JMP
(SAME_SIGN_553)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_553
	D;JGT
	@LOWER_553
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_553
	0;JMP
(GRATER_553)
	@SP
	A=M-1
	M=-1
	@CON_553
	0;JMP
(LOWER_553)
	@SP
	A=M-1
	M=0
(CON_553)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.error 1
	@RETURN_ADDRESS_554
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.error
	0;JMP
(RETURN_ADDRESS_554)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_555
	D;JGT
	@FIRST_MINUS_555
	D;JLT
	@SAME_SIGN_555
	0;JMP
(FIRST_PLUS_555)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_555
	D;JLT
	@SAME_SIGN_555
	0;JMP
(DIF_SIGN_LT_555)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_555
	0;JMP
(FIRST_MINUS_555)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_555
	D;JGT
	@SAME_SIGN_555
	0;JMP
(DIF_SIGN_GT_555)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_555
	0;JMP
(SAME_SIGN_555)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_555
	D;JGT
	@LOWER_555
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_555
	0;JMP
(GRATER_555)
	@SP
	A=M-1
	M=-1
	@CON_555
	0;JMP
(LOWER_555)
	@SP
	A=M-1
	M=0
(CON_555)

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_556
	D;JGT
	@FIRST_MINUS_556
	D;JLT
	@SAME_SIGN_556
	0;JMP
(FIRST_PLUS_556)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_556
	D;JLT
	@SAME_SIGN_556
	0;JMP
(DIF_SIGN_LT_556)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_556
	0;JMP
(FIRST_MINUS_556)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_556
	D;JGT
	@SAME_SIGN_556
	0;JMP
(DIF_SIGN_GT_556)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_556
	0;JMP
(SAME_SIGN_556)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_556
	D;JGT
	@LOWER_556
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_556
	0;JMP
(GRATER_556)
	@SP
	A=M-1
	M=0
	@CON_556
	0;JMP
(LOWER_556)
	@SP
	A=M-1
	M=0
(CON_556)

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@IF_FALSE3
	0;JMP

//label IF_TRUE3
(IF_TRUE3)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END3
	@IF_END3
	0;JMP

//label IF_FALSE3
(IF_FALSE3)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END3
(IF_END3)

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Memory.deAlloc 2
(Memory.deAlloc)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_557
	D;JGT
	@FIRST_MINUS_557
	D;JLT
	@SAME_SIGN_557
	0;JMP
(FIRST_PLUS_557)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_557
	D;JLT
	@SAME_SIGN_557
	0;JMP
(DIF_SIGN_LT_557)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_557
	0;JMP
(FIRST_MINUS_557)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_557
	D;JGT
	@SAME_SIGN_557
	0;JMP
(DIF_SIGN_GT_557)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_557
	0;JMP
(SAME_SIGN_557)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_557
	D;JGT
	@LOWER_557
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_557
	0;JMP
(GRATER_557)
	@SP
	A=M-1
	M=0
	@CON_557
	0;JMP
(LOWER_557)
	@SP
	A=M-1
	M=0
(CON_557)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_558
	D;JGT
	@FIRST_MINUS_558
	D;JLT
	@SAME_SIGN_558
	0;JMP
(FIRST_PLUS_558)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_558
	D;JLT
	@SAME_SIGN_558
	0;JMP
(DIF_SIGN_LT_558)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_558
	0;JMP
(FIRST_MINUS_558)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_558
	D;JGT
	@SAME_SIGN_558
	0;JMP
(DIF_SIGN_GT_558)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_558
	0;JMP
(SAME_SIGN_558)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_558
	D;JGT
	@LOWER_558
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_558
	0;JMP
(GRATER_558)
	@SP
	A=M-1
	M=0
	@CON_558
	0;JMP
(LOWER_558)
	@SP
	A=M-1
	M=0
(CON_558)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END1
	@IF_END1
	0;JMP

//label IF_FALSE1
(IF_FALSE1)

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END1
(IF_END1)

//label IF_END0
(IF_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.new 0
(MovingObject.new)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Memory.alloc 1
	@RETURN_ADDRESS_559
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Memory.alloc
	0;JMP
(RETURN_ADDRESS_559)

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 0
	@0
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 2
	@2
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 6
	@6
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 3
	@3
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//pop this 5
	@5
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 4
	@4
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 1
	@1
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.draw 1
(MovingObject.draw)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_560
	D;JGT
	@FIRST_MINUS_560
	D;JLT
	@SAME_SIGN_560
	0;JMP
(FIRST_PLUS_560)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_560
	D;JLT
	@SAME_SIGN_560
	0;JMP
(DIF_SIGN_LT_560)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_560
	0;JMP
(FIRST_MINUS_560)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_560
	D;JGT
	@SAME_SIGN_560
	0;JMP
(DIF_SIGN_GT_560)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_560
	0;JMP
(SAME_SIGN_560)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_560
	D;JGT
	@LOWER_560
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_560
	0;JMP
(GRATER_560)
	@SP
	A=M-1
	M=0
	@CON_560
	0;JMP
(LOWER_560)
	@SP
	A=M-1
	M=-1
(CON_560)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_561
	D;JGT
	@FIRST_MINUS_561
	D;JLT
	@SAME_SIGN_561
	0;JMP
(FIRST_PLUS_561)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_561
	D;JLT
	@SAME_SIGN_561
	0;JMP
(DIF_SIGN_LT_561)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_561
	0;JMP
(FIRST_MINUS_561)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_561
	D;JGT
	@SAME_SIGN_561
	0;JMP
(DIF_SIGN_GT_561)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_561
	0;JMP
(SAME_SIGN_561)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_561
	D;JGT
	@LOWER_561
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_561
	0;JMP
(GRATER_561)
	@SP
	A=M-1
	M=-1
	@CON_561
	0;JMP
(LOWER_561)
	@SP
	A=M-1
	M=0
(CON_561)

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_562
	D;JGT
	@FIRST_MINUS_562
	D;JLT
	@SAME_SIGN_562
	0;JMP
(FIRST_PLUS_562)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_562
	D;JLT
	@SAME_SIGN_562
	0;JMP
(DIF_SIGN_LT_562)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_562
	0;JMP
(FIRST_MINUS_562)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_562
	D;JGT
	@SAME_SIGN_562
	0;JMP
(DIF_SIGN_GT_562)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_562
	0;JMP
(SAME_SIGN_562)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_562
	D;JGT
	@LOWER_562
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_562
	0;JMP
(GRATER_562)
	@SP
	A=M-1
	M=0
	@CON_562
	0;JMP
(LOWER_562)
	@SP
	A=M-1
	M=-1
(CON_562)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_563
	D;JGT
	@FIRST_MINUS_563
	D;JLT
	@SAME_SIGN_563
	0;JMP
(FIRST_PLUS_563)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_563
	D;JLT
	@SAME_SIGN_563
	0;JMP
(DIF_SIGN_LT_563)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_563
	0;JMP
(FIRST_MINUS_563)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_563
	D;JGT
	@SAME_SIGN_563
	0;JMP
(DIF_SIGN_GT_563)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_563
	0;JMP
(SAME_SIGN_563)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_563
	D;JGT
	@LOWER_563
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_563
	0;JMP
(GRATER_563)
	@SP
	A=M-1
	M=0
	@CON_563
	0;JMP
(LOWER_563)
	@SP
	A=M-1
	M=0
(CON_563)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_564
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_564)

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_565
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_565)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_566
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_566)

//push constant 13
	@13
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_567
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_567)

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawRectangle 4
	@RETURN_ADDRESS_568
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawRectangle
	0;JMP
(RETURN_ADDRESS_568)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_569
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_569)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_570
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_570)

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.drawCircle 3
	@RETURN_ADDRESS_571
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@3
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawCircle
	0;JMP
(RETURN_ADDRESS_571)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//push this 0
	@0
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_572
	D;JGT
	@FIRST_MINUS_572
	D;JLT
	@SAME_SIGN_572
	0;JMP
(FIRST_PLUS_572)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_572
	D;JLT
	@SAME_SIGN_572
	0;JMP
(DIF_SIGN_LT_572)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_572
	0;JMP
(FIRST_MINUS_572)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_572
	D;JGT
	@SAME_SIGN_572
	0;JMP
(DIF_SIGN_GT_572)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_572
	0;JMP
(SAME_SIGN_572)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_572
	D;JGT
	@LOWER_572
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_572
	0;JMP
(GRATER_572)
	@SP
	A=M-1
	M=0
	@CON_572
	0;JMP
(LOWER_572)
	@SP
	A=M-1
	M=0
(CON_572)

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_573
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_573)

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_574
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_574)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_575
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_575)

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_576
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_576)

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_577
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_577)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_578
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_578)

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_579
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_579)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_580
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_580)

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_581
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_581)

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_582
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_582)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_583
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_583)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_584
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_584)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_585
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_585)

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_586
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_586)

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_587
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_587)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_588
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_588)

//push constant 9
	@9
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_589
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_589)

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_590
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_590)

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_591
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_591)

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Screen.drawLine 4
	@RETURN_ADDRESS_592
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawLine
	0;JMP
(RETURN_ADDRESS_592)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//label IF_FALSE0
(IF_FALSE0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.isTurn 0
(MovingObject.isTurn)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 4
	@4
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 3
	@3
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_593
	D;JGT
	@FIRST_MINUS_593
	D;JLT
	@SAME_SIGN_593
	0;JMP
(FIRST_PLUS_593)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_593
	D;JLT
	@SAME_SIGN_593
	0;JMP
(DIF_SIGN_LT_593)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_593
	0;JMP
(FIRST_MINUS_593)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_593
	D;JGT
	@SAME_SIGN_593
	0;JMP
(DIF_SIGN_GT_593)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_593
	0;JMP
(SAME_SIGN_593)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_593
	D;JGT
	@LOWER_593
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_593
	0;JMP
(GRATER_593)
	@SP
	A=M-1
	M=0
	@CON_593
	0;JMP
(LOWER_593)
	@SP
	A=M-1
	M=0
(CON_593)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 4
	@4
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push this 4
	@4
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop this 4
	@4
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.reset 0
(MovingObject.reset)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 1
	@1
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 2
	@2
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 3
	@3
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_594
	D;JGT
	@FIRST_MINUS_594
	D;JLT
	@SAME_SIGN_594
	0;JMP
(FIRST_PLUS_594)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_594
	D;JLT
	@SAME_SIGN_594
	0;JMP
(DIF_SIGN_LT_594)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_594
	0;JMP
(FIRST_MINUS_594)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_594
	D;JGT
	@SAME_SIGN_594
	0;JMP
(DIF_SIGN_GT_594)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_594
	0;JMP
(SAME_SIGN_594)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_594
	D;JGT
	@LOWER_594
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_594
	0;JMP
(GRATER_594)
	@SP
	A=M-1
	M=0
	@CON_594
	0;JMP
(LOWER_594)
	@SP
	A=M-1
	M=0
(CON_594)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//pop this 5
	@5
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_595
	D;JGT
	@FIRST_MINUS_595
	D;JLT
	@SAME_SIGN_595
	0;JMP
(FIRST_PLUS_595)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_595
	D;JLT
	@SAME_SIGN_595
	0;JMP
(DIF_SIGN_LT_595)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_595
	0;JMP
(FIRST_MINUS_595)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_595
	D;JGT
	@SAME_SIGN_595
	0;JMP
(DIF_SIGN_GT_595)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_595
	0;JMP
(SAME_SIGN_595)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_595
	D;JGT
	@LOWER_595
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_595
	0;JMP
(GRATER_595)
	@SP
	A=M-1
	M=0
	@CON_595
	0;JMP
(LOWER_595)
	@SP
	A=M-1
	M=0
(CON_595)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop this 5
	@5
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.advance 0
(MovingObject.advance)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop this 5
	@5
	D=A
	@THIS
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_596
	D;JGT
	@FIRST_MINUS_596
	D;JLT
	@SAME_SIGN_596
	0;JMP
(FIRST_PLUS_596)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_596
	D;JLT
	@SAME_SIGN_596
	0;JMP
(DIF_SIGN_LT_596)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_596
	0;JMP
(FIRST_MINUS_596)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_596
	D;JGT
	@SAME_SIGN_596
	0;JMP
(DIF_SIGN_GT_596)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_596
	0;JMP
(SAME_SIGN_596)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_596
	D;JGT
	@LOWER_596
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_596
	0;JMP
(GRATER_596)
	@SP
	A=M-1
	M=0
	@CON_596
	0;JMP
(LOWER_596)
	@SP
	A=M-1
	M=0
(CON_596)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_597
	D;JGT
	@FIRST_MINUS_597
	D;JLT
	@SAME_SIGN_597
	0;JMP
(FIRST_PLUS_597)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_597
	D;JLT
	@SAME_SIGN_597
	0;JMP
(DIF_SIGN_LT_597)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_597
	0;JMP
(FIRST_MINUS_597)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_597
	D;JGT
	@SAME_SIGN_597
	0;JMP
(DIF_SIGN_GT_597)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_597
	0;JMP
(SAME_SIGN_597)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_597
	D;JGT
	@LOWER_597
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_597
	0;JMP
(GRATER_597)
	@SP
	A=M-1
	M=-1
	@CON_597
	0;JMP
(LOWER_597)
	@SP
	A=M-1
	M=0
(CON_597)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call MovingObject.reset 4
	@RETURN_ADDRESS_598
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@MovingObject.reset
	0;JMP
(RETURN_ADDRESS_598)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE1
(IF_FALSE1)

//label IF_FALSE0
(IF_FALSE0)

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_599
	D;JGT
	@FIRST_MINUS_599
	D;JLT
	@SAME_SIGN_599
	0;JMP
(FIRST_PLUS_599)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_599
	D;JLT
	@SAME_SIGN_599
	0;JMP
(DIF_SIGN_LT_599)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_599
	0;JMP
(FIRST_MINUS_599)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_599
	D;JGT
	@SAME_SIGN_599
	0;JMP
(DIF_SIGN_GT_599)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_599
	0;JMP
(SAME_SIGN_599)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_599
	D;JGT
	@LOWER_599
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_599
	0;JMP
(GRATER_599)
	@SP
	A=M-1
	M=0
	@CON_599
	0;JMP
(LOWER_599)
	@SP
	A=M-1
	M=0
(CON_599)

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_600
	D;JGT
	@FIRST_MINUS_600
	D;JLT
	@SAME_SIGN_600
	0;JMP
(FIRST_PLUS_600)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_600
	D;JLT
	@SAME_SIGN_600
	0;JMP
(DIF_SIGN_LT_600)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_600
	0;JMP
(FIRST_MINUS_600)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_600
	D;JGT
	@SAME_SIGN_600
	0;JMP
(DIF_SIGN_GT_600)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_600
	0;JMP
(SAME_SIGN_600)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_600
	D;JGT
	@LOWER_600
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_600
	0;JMP
(GRATER_600)
	@SP
	A=M-1
	M=0
	@CON_600
	0;JMP
(LOWER_600)
	@SP
	A=M-1
	M=-1
(CON_600)

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@IF_FALSE3
	0;JMP

//label IF_TRUE3
(IF_TRUE3)

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call MovingObject.reset 4
	@RETURN_ADDRESS_601
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@4
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@MovingObject.reset
	0;JMP
(RETURN_ADDRESS_601)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE3
(IF_FALSE3)

//label IF_FALSE2
(IF_FALSE2)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.tailX 0
(MovingObject.tailX)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 5
	@5
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.tailY 0
(MovingObject.tailY)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 6
	@6
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.getLength 0
(MovingObject.getLength)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 2
	@2
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.getDirection 0
(MovingObject.getDirection)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push this 1
	@1
	D=A
	@THIS
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function MovingObject.dispose 0
(MovingObject.dispose)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop pointer 0
	@THIS
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Memory.deAlloc 1
	@RETURN_ADDRESS_602
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Memory.deAlloc
	0;JMP
(RETURN_ADDRESS_602)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.init 0
(Output.init)

//push constant 16384
	@16384
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 4
	@Output4
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop static 2
	@Output2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 1
	@Output1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 0
	@Output0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_603
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_603)

//pop static 3
	@Output3
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.initMap 0
	@RETURN_ADDRESS_604
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.initMap
	0;JMP
(RETURN_ADDRESS_604)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.createShiftedMap 0
	@RETURN_ADDRESS_605
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.createShiftedMap
	0;JMP
(RETURN_ADDRESS_605)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.initMap 0
(Output.initMap)

//push constant 127
	@127
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.new 1
	@RETURN_ADDRESS_606
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.new
	0;JMP
(RETURN_ADDRESS_606)

//pop static 5
	@Output5
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_607
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_607)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_608
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_608)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_609
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_609)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 34
	@34
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 20
	@20
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_610
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_610)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 18
	@18
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 18
	@18
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 18
	@18
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 18
	@18
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 18
	@18
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 18
	@18
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_611
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_611)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 36
	@36
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_612
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_612)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 37
	@37
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 49
	@49
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_613
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_613)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 38
	@38
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_614
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_614)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 39
	@39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_615
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_615)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 40
	@40
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_616
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_616)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 41
	@41
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_617
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_617)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 42
	@42
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_618
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_618)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 43
	@43
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_619
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_619)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_620
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_620)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 45
	@45
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_621
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_621)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_622
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_622)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 47
	@47
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_623
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_623)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_624
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_624)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 49
	@49
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_625
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_625)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 50
	@50
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_626
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_626)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_627
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_627)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 52
	@52
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 26
	@26
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 25
	@25
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 60
	@60
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_628
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_628)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 53
	@53
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_629
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_629)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_630
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_630)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 55
	@55
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 49
	@49
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_631
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_631)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 56
	@56
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_632
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_632)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 57
	@57
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 62
	@62
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_633
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_633)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 58
	@58
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_634
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_634)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 59
	@59
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_635
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_635)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 60
	@60
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_636
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_636)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 61
	@61
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_637
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_637)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 62
	@62
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_638
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_638)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 64
	@64
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 59
	@59
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 59
	@59
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 59
	@59
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_639
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_639)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_640
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_640)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 65
	@65
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_641
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_641)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 66
	@66
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_642
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_642)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 67
	@67
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_643
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_643)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 68
	@68
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_644
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_644)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 69
	@69
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_645
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_645)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 70
	@70
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_646
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_646)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 71
	@71
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 59
	@59
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_647
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_647)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 72
	@72
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_648
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_648)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_649
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_649)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 74
	@74
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 60
	@60
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_650
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_650)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 75
	@75
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_651
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_651)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 76
	@76
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_652
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_652)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 77
	@77
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_653
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_653)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 78
	@78
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 55
	@55
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 55
	@55
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 59
	@59
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 59
	@59
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_654
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_654)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 79
	@79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_655
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_655)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 80
	@80
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_656
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_656)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 81
	@81
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 59
	@59
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_657
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_657)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 82
	@82
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_658
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_658)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 83
	@83
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_659
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_659)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 84
	@84
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 45
	@45
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_660
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_660)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 85
	@85
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_661
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_661)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 86
	@86
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_662
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_662)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 87
	@87
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 18
	@18
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_663
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_663)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 88
	@88
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_664
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_664)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 89
	@89
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_665
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_665)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 90
	@90
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 49
	@49
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 35
	@35
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_666
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_666)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 91
	@91
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_667
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_667)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 92
	@92
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_668
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_668)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 93
	@93
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_669
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_669)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 94
	@94
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_670
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_670)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 95
	@95
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_671
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_671)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 96
	@96
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_672
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_672)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_673
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_673)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 98
	@98
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_674
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_674)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 99
	@99
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_675
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_675)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 60
	@60
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_676
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_676)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_677
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_677)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 38
	@38
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_678
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_678)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 62
	@62
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_679
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_679)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 55
	@55
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_680
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_680)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_681
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_681)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 106
	@106
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 56
	@56
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_682
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_682)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 107
	@107
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_683
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_683)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 14
	@14
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_684
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_684)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 29
	@29
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 43
	@43
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 43
	@43
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 43
	@43
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 43
	@43
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_685
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_685)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 29
	@29
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_686
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_686)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_687
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_687)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 112
	@112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_688
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_688)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 113
	@113
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 62
	@62
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_689
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_689)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 29
	@29
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 55
	@55
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_690
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_690)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_691
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_691)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 28
	@28
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_692
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_692)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_693
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_693)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_694
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_694)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 18
	@18
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_695
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_695)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 120
	@120
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 30
	@30
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_696
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_696)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 62
	@62
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 24
	@24
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_697
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_697)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 122
	@122
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 51
	@51
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_698
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_698)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 123
	@123
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 56
	@56
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 56
	@56
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_699
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_699)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 124
	@124
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_700
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_700)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 125
	@125
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 56
	@56
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 12
	@12
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_701
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_701)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 126
	@126
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 38
	@38
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 45
	@45
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 25
	@25
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.create 12
	@RETURN_ADDRESS_702
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@12
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.create
	0;JMP
(RETURN_ADDRESS_702)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.create 1
(Output.create)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.new 1
	@RETURN_ADDRESS_703
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.new
	0;JMP
(RETURN_ADDRESS_703)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Output5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 3
	@3
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 4
	@4
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 4
	@4
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 5
	@5
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 5
	@5
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 6
	@6
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 6
	@6
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 7
	@7
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 8
	@8
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 9
	@9
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 9
	@9
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 10
	@10
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 10
	@10
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 11
	@11
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.createShiftedMap 4
(Output.createShiftedMap)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 127
	@127
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.new 1
	@RETURN_ADDRESS_704
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.new
	0;JMP
(RETURN_ADDRESS_704)

//pop static 6
	@Output6
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 127
	@127
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_705
	D;JGT
	@FIRST_MINUS_705
	D;JLT
	@SAME_SIGN_705
	0;JMP
(FIRST_PLUS_705)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_705
	D;JLT
	@SAME_SIGN_705
	0;JMP
(DIF_SIGN_LT_705)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_705
	0;JMP
(FIRST_MINUS_705)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_705
	D;JGT
	@SAME_SIGN_705
	0;JMP
(DIF_SIGN_GT_705)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_705
	0;JMP
(SAME_SIGN_705)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_705
	D;JGT
	@LOWER_705
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_705
	0;JMP
(GRATER_705)
	@SP
	A=M-1
	M=0
	@CON_705
	0;JMP
(LOWER_705)
	@SP
	A=M-1
	M=-1
(CON_705)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Output5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.new 1
	@RETURN_ADDRESS_706
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.new
	0;JMP
(RETURN_ADDRESS_706)

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Output6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP1
(WHILE_EXP1)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_707
	D;JGT
	@FIRST_MINUS_707
	D;JLT
	@SAME_SIGN_707
	0;JMP
(FIRST_PLUS_707)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_707
	D;JLT
	@SAME_SIGN_707
	0;JMP
(DIF_SIGN_LT_707)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_707
	0;JMP
(FIRST_MINUS_707)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_707
	D;JGT
	@SAME_SIGN_707
	0;JMP
(DIF_SIGN_GT_707)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_707
	0;JMP
(SAME_SIGN_707)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_707
	D;JGT
	@LOWER_707
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_707
	0;JMP
(GRATER_707)
	@SP
	A=M-1
	M=0
	@CON_707
	0;JMP
(LOWER_707)
	@SP
	A=M-1
	M=-1
(CON_707)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@WHILE_END1
	D;JNE

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 256
	@256
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_708
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_708)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP1
	@WHILE_EXP1
	0;JMP

//label WHILE_END1
(WHILE_END1)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_709
	D;JGT
	@FIRST_MINUS_709
	D;JLT
	@SAME_SIGN_709
	0;JMP
(FIRST_PLUS_709)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_709
	D;JLT
	@SAME_SIGN_709
	0;JMP
(DIF_SIGN_LT_709)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_709
	0;JMP
(FIRST_MINUS_709)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_709
	D;JGT
	@SAME_SIGN_709
	0;JMP
(DIF_SIGN_GT_709)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_709
	0;JMP
(SAME_SIGN_709)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_709
	D;JGT
	@LOWER_709
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_709
	0;JMP
(GRATER_709)
	@SP
	A=M-1
	M=0
	@CON_709
	0;JMP
(LOWER_709)
	@SP
	A=M-1
	M=0
(CON_709)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END0
(IF_END0)

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.getMap 1
(Output.getMap)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_710
	D;JGT
	@FIRST_MINUS_710
	D;JLT
	@SAME_SIGN_710
	0;JMP
(FIRST_PLUS_710)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_710
	D;JLT
	@SAME_SIGN_710
	0;JMP
(DIF_SIGN_LT_710)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_710
	0;JMP
(FIRST_MINUS_710)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_710
	D;JGT
	@SAME_SIGN_710
	0;JMP
(DIF_SIGN_GT_710)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_710
	0;JMP
(SAME_SIGN_710)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_710
	D;JGT
	@LOWER_710
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_710
	0;JMP
(GRATER_710)
	@SP
	A=M-1
	M=0
	@CON_710
	0;JMP
(LOWER_710)
	@SP
	A=M-1
	M=-1
(CON_710)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 126
	@126
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_711
	D;JGT
	@FIRST_MINUS_711
	D;JLT
	@SAME_SIGN_711
	0;JMP
(FIRST_PLUS_711)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_711
	D;JLT
	@SAME_SIGN_711
	0;JMP
(DIF_SIGN_LT_711)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_711
	0;JMP
(FIRST_MINUS_711)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_711
	D;JGT
	@SAME_SIGN_711
	0;JMP
(DIF_SIGN_GT_711)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_711
	0;JMP
(SAME_SIGN_711)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_711
	D;JGT
	@LOWER_711
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_711
	0;JMP
(GRATER_711)
	@SP
	A=M-1
	M=-1
	@CON_711
	0;JMP
(LOWER_711)
	@SP
	A=M-1
	M=0
(CON_711)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop argument 0
	@0
	D=A
	@ARG
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push static 2
	@Output2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 5
	@Output5
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END1
	@IF_END1
	0;JMP

//label IF_FALSE1
(IF_FALSE1)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 6
	@Output6
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END1
(IF_END1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.drawChar 4
(Output.drawChar)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.getMap 1
	@RETURN_ADDRESS_712
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.getMap
	0;JMP
(RETURN_ADDRESS_712)

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 1
	@Output1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 11
	@11
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_713
	D;JGT
	@FIRST_MINUS_713
	D;JLT
	@SAME_SIGN_713
	0;JMP
(FIRST_PLUS_713)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_713
	D;JLT
	@SAME_SIGN_713
	0;JMP
(DIF_SIGN_LT_713)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_713
	0;JMP
(FIRST_MINUS_713)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_713
	D;JGT
	@SAME_SIGN_713
	0;JMP
(DIF_SIGN_GT_713)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_713
	0;JMP
(SAME_SIGN_713)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_713
	D;JGT
	@LOWER_713
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_713
	0;JMP
(GRATER_713)
	@SP
	A=M-1
	M=0
	@CON_713
	0;JMP
(LOWER_713)
	@SP
	A=M-1
	M=-1
(CON_713)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push static 2
	@Output2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 4
	@Output4
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 256
	@256
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//neg
	@SP
	A=M-1
	M=-M
	D=A+1
	@SP
	M=D

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 4
	@Output4
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 255
	@255
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END0
(IF_END0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 4
	@Output4
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.moveCursor 0
(Output.moveCursor)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_714
	D;JGT
	@FIRST_MINUS_714
	D;JLT
	@SAME_SIGN_714
	0;JMP
(FIRST_PLUS_714)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_714
	D;JLT
	@SAME_SIGN_714
	0;JMP
(DIF_SIGN_LT_714)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_714
	0;JMP
(FIRST_MINUS_714)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_714
	D;JGT
	@SAME_SIGN_714
	0;JMP
(DIF_SIGN_GT_714)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_714
	0;JMP
(SAME_SIGN_714)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_714
	D;JGT
	@LOWER_714
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_714
	0;JMP
(GRATER_714)
	@SP
	A=M-1
	M=0
	@CON_714
	0;JMP
(LOWER_714)
	@SP
	A=M-1
	M=-1
(CON_714)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 22
	@22
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_715
	D;JGT
	@FIRST_MINUS_715
	D;JLT
	@SAME_SIGN_715
	0;JMP
(FIRST_PLUS_715)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_715
	D;JLT
	@SAME_SIGN_715
	0;JMP
(DIF_SIGN_LT_715)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_715
	0;JMP
(FIRST_MINUS_715)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_715
	D;JGT
	@SAME_SIGN_715
	0;JMP
(DIF_SIGN_GT_715)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_715
	0;JMP
(SAME_SIGN_715)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_715
	D;JGT
	@LOWER_715
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_715
	0;JMP
(GRATER_715)
	@SP
	A=M-1
	M=-1
	@CON_715
	0;JMP
(LOWER_715)
	@SP
	A=M-1
	M=0
(CON_715)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_716
	D;JGT
	@FIRST_MINUS_716
	D;JLT
	@SAME_SIGN_716
	0;JMP
(FIRST_PLUS_716)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_716
	D;JLT
	@SAME_SIGN_716
	0;JMP
(DIF_SIGN_LT_716)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_716
	0;JMP
(FIRST_MINUS_716)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_716
	D;JGT
	@SAME_SIGN_716
	0;JMP
(DIF_SIGN_GT_716)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_716
	0;JMP
(SAME_SIGN_716)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_716
	D;JGT
	@LOWER_716
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_716
	0;JMP
(GRATER_716)
	@SP
	A=M-1
	M=0
	@CON_716
	0;JMP
(LOWER_716)
	@SP
	A=M-1
	M=-1
(CON_716)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_717
	D;JGT
	@FIRST_MINUS_717
	D;JLT
	@SAME_SIGN_717
	0;JMP
(FIRST_PLUS_717)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_717
	D;JLT
	@SAME_SIGN_717
	0;JMP
(DIF_SIGN_LT_717)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_717
	0;JMP
(FIRST_MINUS_717)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_717
	D;JGT
	@SAME_SIGN_717
	0;JMP
(DIF_SIGN_GT_717)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_717
	0;JMP
(SAME_SIGN_717)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_717
	D;JGT
	@LOWER_717
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_717
	0;JMP
(GRATER_717)
	@SP
	A=M-1
	M=-1
	@CON_717
	0;JMP
(LOWER_717)
	@SP
	A=M-1
	M=0
(CON_717)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 20
	@20
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.error 1
	@RETURN_ADDRESS_718
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.error
	0;JMP
(RETURN_ADDRESS_718)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.divide 2
	@RETURN_ADDRESS_719
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.divide
	0;JMP
(RETURN_ADDRESS_719)

//pop static 0
	@Output0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 352
	@352
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_720
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_720)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 0
	@Output0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop static 1
	@Output1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Output0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 2
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_721
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_721)

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_722
	D;JGT
	@FIRST_MINUS_722
	D;JLT
	@SAME_SIGN_722
	0;JMP
(FIRST_PLUS_722)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_722
	D;JLT
	@SAME_SIGN_722
	0;JMP
(DIF_SIGN_LT_722)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_722
	0;JMP
(FIRST_MINUS_722)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_722
	D;JGT
	@SAME_SIGN_722
	0;JMP
(DIF_SIGN_GT_722)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_722
	0;JMP
(SAME_SIGN_722)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_722
	D;JGT
	@LOWER_722
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_722
	0;JMP
(GRATER_722)
	@SP
	A=M-1
	M=0
	@CON_722
	0;JMP
(LOWER_722)
	@SP
	A=M-1
	M=0
(CON_722)

//pop static 2
	@Output2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.drawChar 1
	@RETURN_ADDRESS_723
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.drawChar
	0;JMP
(RETURN_ADDRESS_723)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.printChar 0
(Output.printChar)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.newLine 0
	@RETURN_ADDRESS_724
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.newLine
	0;JMP
(RETURN_ADDRESS_724)

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_725
	D;JGT
	@FIRST_MINUS_725
	D;JLT
	@SAME_SIGN_725
	0;JMP
(FIRST_PLUS_725)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_725
	D;JLT
	@SAME_SIGN_725
	0;JMP
(DIF_SIGN_LT_725)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_725
	0;JMP
(FIRST_MINUS_725)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_725
	D;JGT
	@SAME_SIGN_725
	0;JMP
(DIF_SIGN_GT_725)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_725
	0;JMP
(SAME_SIGN_725)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_725
	D;JGT
	@LOWER_725
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_725
	0;JMP
(GRATER_725)
	@SP
	A=M-1
	M=0
	@CON_725
	0;JMP
(LOWER_725)
	@SP
	A=M-1
	M=0
(CON_725)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//call Output.println 0
	@RETURN_ADDRESS_726
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_726)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.backSpace 0
	@RETURN_ADDRESS_727
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.backSpace
	0;JMP
(RETURN_ADDRESS_727)

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_728
	D;JGT
	@FIRST_MINUS_728
	D;JLT
	@SAME_SIGN_728
	0;JMP
(FIRST_PLUS_728)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_728
	D;JLT
	@SAME_SIGN_728
	0;JMP
(DIF_SIGN_LT_728)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_728
	0;JMP
(FIRST_MINUS_728)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_728
	D;JGT
	@SAME_SIGN_728
	0;JMP
(DIF_SIGN_GT_728)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_728
	0;JMP
(SAME_SIGN_728)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_728
	D;JGT
	@LOWER_728
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_728
	0;JMP
(GRATER_728)
	@SP
	A=M-1
	M=0
	@CON_728
	0;JMP
(LOWER_728)
	@SP
	A=M-1
	M=0
(CON_728)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//call Output.backSpace 0
	@RETURN_ADDRESS_729
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.backSpace
	0;JMP
(RETURN_ADDRESS_729)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END1
	@IF_END1
	0;JMP

//label IF_FALSE1
(IF_FALSE1)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.drawChar 1
	@RETURN_ADDRESS_730
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.drawChar
	0;JMP
(RETURN_ADDRESS_730)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 2
	@Output2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push static 0
	@Output0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop static 0
	@Output0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 1
	@Output1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop static 1
	@Output1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//push static 0
	@Output0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_731
	D;JGT
	@FIRST_MINUS_731
	D;JLT
	@SAME_SIGN_731
	0;JMP
(FIRST_PLUS_731)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_731
	D;JLT
	@SAME_SIGN_731
	0;JMP
(DIF_SIGN_LT_731)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_731
	0;JMP
(FIRST_MINUS_731)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_731
	D;JGT
	@SAME_SIGN_731
	0;JMP
(DIF_SIGN_GT_731)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_731
	0;JMP
(SAME_SIGN_731)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_731
	D;JGT
	@LOWER_731
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_731
	0;JMP
(GRATER_731)
	@SP
	A=M-1
	M=0
	@CON_731
	0;JMP
(LOWER_731)
	@SP
	A=M-1
	M=0
(CON_731)

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@IF_FALSE3
	0;JMP

//label IF_TRUE3
(IF_TRUE3)

//call Output.println 0
	@RETURN_ADDRESS_732
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_732)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END3
	@IF_END3
	0;JMP

//label IF_FALSE3
(IF_FALSE3)

//push static 2
	@Output2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop static 2
	@Output2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END3
(IF_END3)

//label IF_END1
(IF_END1)

//label IF_END0
(IF_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.printString 2
(Output.printString)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.length 1
	@RETURN_ADDRESS_733
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.length
	0;JMP
(RETURN_ADDRESS_733)

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_734
	D;JGT
	@FIRST_MINUS_734
	D;JLT
	@SAME_SIGN_734
	0;JMP
(FIRST_PLUS_734)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_734
	D;JLT
	@SAME_SIGN_734
	0;JMP
(DIF_SIGN_LT_734)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_734
	0;JMP
(FIRST_MINUS_734)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_734
	D;JGT
	@SAME_SIGN_734
	0;JMP
(DIF_SIGN_GT_734)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_734
	0;JMP
(SAME_SIGN_734)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_734
	D;JGT
	@LOWER_734
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_734
	0;JMP
(GRATER_734)
	@SP
	A=M-1
	M=0
	@CON_734
	0;JMP
(LOWER_734)
	@SP
	A=M-1
	M=-1
(CON_734)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.charAt 2
	@RETURN_ADDRESS_735
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.charAt
	0;JMP
(RETURN_ADDRESS_735)

//call Output.printChar 1
	@RETURN_ADDRESS_736
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printChar
	0;JMP
(RETURN_ADDRESS_736)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.printInt 0
(Output.printInt)

//push static 3
	@Output3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.setInt 2
	@RETURN_ADDRESS_737
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.setInt
	0;JMP
(RETURN_ADDRESS_737)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 3
	@Output3
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_738
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_738)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.println 0
(Output.println)

//push static 1
	@Output1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 352
	@352
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push static 0
	@Output0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop static 1
	@Output1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 0
	@Output0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop static 2
	@Output2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 1
	@Output1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 8128
	@8128
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_739
	D;JGT
	@FIRST_MINUS_739
	D;JLT
	@SAME_SIGN_739
	0;JMP
(FIRST_PLUS_739)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_739
	D;JLT
	@SAME_SIGN_739
	0;JMP
(DIF_SIGN_LT_739)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_739
	0;JMP
(FIRST_MINUS_739)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_739
	D;JGT
	@SAME_SIGN_739
	0;JMP
(DIF_SIGN_GT_739)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_739
	0;JMP
(SAME_SIGN_739)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_739
	D;JGT
	@LOWER_739
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_739
	0;JMP
(GRATER_739)
	@SP
	A=M-1
	M=0
	@CON_739
	0;JMP
(LOWER_739)
	@SP
	A=M-1
	M=0
(CON_739)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 1
	@Output1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Output.backSpace 0
(Output.backSpace)

//push static 2
	@Output2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push static 0
	@Output0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_740
	D;JGT
	@FIRST_MINUS_740
	D;JLT
	@SAME_SIGN_740
	0;JMP
(FIRST_PLUS_740)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_740
	D;JLT
	@SAME_SIGN_740
	0;JMP
(DIF_SIGN_LT_740)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_740
	0;JMP
(FIRST_MINUS_740)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_740
	D;JGT
	@SAME_SIGN_740
	0;JMP
(DIF_SIGN_GT_740)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_740
	0;JMP
(SAME_SIGN_740)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_740
	D;JGT
	@LOWER_740
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_740
	0;JMP
(GRATER_740)
	@SP
	A=M-1
	M=-1
	@CON_740
	0;JMP
(LOWER_740)
	@SP
	A=M-1
	M=0
(CON_740)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@IF_FALSE1
	0;JMP

//label IF_TRUE1
(IF_TRUE1)

//push static 0
	@Output0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop static 0
	@Output0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 1
	@Output1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop static 1
	@Output1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END1
	@IF_END1
	0;JMP

//label IF_FALSE1
(IF_FALSE1)

//push constant 31
	@31
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 0
	@Output0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push static 1
	@Output1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_741
	D;JGT
	@FIRST_MINUS_741
	D;JLT
	@SAME_SIGN_741
	0;JMP
(FIRST_PLUS_741)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_741
	D;JLT
	@SAME_SIGN_741
	0;JMP
(DIF_SIGN_LT_741)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_741
	0;JMP
(FIRST_MINUS_741)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_741
	D;JGT
	@SAME_SIGN_741
	0;JMP
(DIF_SIGN_GT_741)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_741
	0;JMP
(SAME_SIGN_741)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_741
	D;JGT
	@LOWER_741
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_741
	0;JMP
(GRATER_741)
	@SP
	A=M-1
	M=0
	@CON_741
	0;JMP
(LOWER_741)
	@SP
	A=M-1
	M=0
(CON_741)

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@IF_FALSE2
	0;JMP

//label IF_TRUE2
(IF_TRUE2)

//push constant 8128
	@8128
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 1
	@Output1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE2
(IF_FALSE2)

//push static 1
	@Output1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 321
	@321
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop static 1
	@Output1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END1
(IF_END1)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 2
	@Output2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop static 2
	@Output2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END0
(IF_END0)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.drawChar 1
	@RETURN_ADDRESS_742
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.drawChar
	0;JMP
(RETURN_ADDRESS_742)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Scenes.intro 1
(Scenes.intro)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.clearScreen 0
	@RETURN_ADDRESS_743
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.clearScreen
	0;JMP
(RETURN_ADDRESS_743)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_744
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_744)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 26
	@26
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_745
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_745)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_746
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_746)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_747
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_747)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_748
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_748)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_749
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_749)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_750
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_750)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_751
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_751)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_752
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_752)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_753
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_753)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_754
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_754)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_755
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_755)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_756
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_756)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_757
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_757)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_758
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_758)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_759
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_759)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_760
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_760)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_761
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_761)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_762
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_762)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_763
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_763)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_764
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_764)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_765
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_765)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_766
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_766)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_767
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_767)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_768
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_768)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_769
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_769)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_770
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_770)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_771
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_771)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_772
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_772)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_773
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_773)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 2000
	@2000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_774
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_774)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 23
	@23
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_775
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_775)

//push constant 76
	@76
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_776
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_776)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_777
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_777)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_778
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_778)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_779
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_779)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_780
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_780)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_781
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_781)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_782
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_782)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_783
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_783)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_784
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_784)

//push constant 112
	@112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_785
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_785)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_786
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_786)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_787
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_787)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_788
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_788)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_789
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_789)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_790
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_790)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_791
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_791)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_792
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_792)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_793
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_793)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_794
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_794)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_795
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_795)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_796
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_796)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_797
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_797)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_798
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_798)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_799
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_799)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_800
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_800)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 3000
	@3000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_801
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_801)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_802
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_802)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Screen.clearScreen 0
	@RETURN_ADDRESS_803
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.clearScreen
	0;JMP
(RETURN_ADDRESS_803)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_804
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_804)

//push constant 87
	@87
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_805
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_805)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_806
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_806)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_807
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_807)

//push constant 99
	@99
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_808
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_808)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_809
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_809)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_810
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_810)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_811
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_811)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_812
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_812)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_813
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_813)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_814
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_814)

//push constant 58
	@58
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_815
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_815)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_816
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_816)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_817
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_817)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_818
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_818)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_819
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_819)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_820
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_820)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_821
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_821)

//push constant 78
	@78
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_822
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_822)

//push constant 65
	@65
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_823
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_823)

//push constant 78
	@78
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_824
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_824)

//push constant 68
	@68
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_825
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_825)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_826
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_826)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_827
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_827)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_828
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_828)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_829
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_829)

//push constant 70
	@70
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_830
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_830)

//push constant 82
	@82
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_831
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_831)

//push constant 79
	@79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_832
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_832)

//push constant 71
	@71
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_833
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_833)

//push constant 71
	@71
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_834
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_834)

//push constant 69
	@69
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_835
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_835)

//push constant 82
	@82
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_836
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_836)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_837
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_837)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_838
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_838)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_839
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_839)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 2000
	@2000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_840
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_840)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_841
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_841)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_842
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_842)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 48
	@48
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_843
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_843)

//push constant 85
	@85
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_844
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_844)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_845
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_845)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_846
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_846)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_847
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_847)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_848
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_848)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_849
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_849)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_850
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_850)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_851
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_851)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_852
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_852)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_853
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_853)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_854
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_854)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_855
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_855)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_856
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_856)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_857
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_857)

//push constant 107
	@107
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_858
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_858)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_859
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_859)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_860
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_860)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_861
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_861)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_862
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_862)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_863
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_863)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_864
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_864)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_865
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_865)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_866
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_866)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_867
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_867)

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_868
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_868)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_869
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_869)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_870
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_870)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_871
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_871)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_872
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_872)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_873
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_873)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_874
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_874)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_875
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_875)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_876
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_876)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_877
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_877)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_878
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_878)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_879
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_879)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_880
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_880)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_881
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_881)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_882
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_882)

//push constant 54
	@54
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_883
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_883)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_884
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_884)

//push constant 112
	@112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_885
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_885)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_886
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_886)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_887
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_887)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_888
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_888)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_889
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_889)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_890
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_890)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_891
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_891)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_892
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_892)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1000
	@1000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_893
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_893)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_894
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_894)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_895
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_895)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_896
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_896)

//push constant 68
	@68
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_897
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_897)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_898
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_898)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_899
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_899)

//push constant 39
	@39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_900
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_900)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_901
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_901)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_902
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_902)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_903
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_903)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_904
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_904)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_905
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_905)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_906
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_906)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_907
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_907)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_908
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_908)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_909
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_909)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_910
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_910)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_911
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_911)

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_912
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_912)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_913
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_913)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_914
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_914)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_915
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_915)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_916
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_916)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_917
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_917)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_918
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_918)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_919
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_919)

//push constant 39
	@39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_920
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_920)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_921
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_921)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_922
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_922)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_923
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_923)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_924
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_924)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_925
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_925)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_926
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_926)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_927
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_927)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_928
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_928)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_929
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_929)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1000
	@1000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_930
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_930)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_931
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_931)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_932
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_932)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 59
	@59
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_933
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_933)

//push constant 82
	@82
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_934
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_934)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_935
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_935)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_936
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_936)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_937
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_937)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_938
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_938)

//push constant 98
	@98
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_939
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_939)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_940
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_940)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_941
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_941)

//push constant 58
	@58
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_942
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_942)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_943
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_943)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_944
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_944)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_945
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_945)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_946
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_946)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_947
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_947)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_948
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_948)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_949
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_949)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_950
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_950)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_951
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_951)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_952
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_952)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_953
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_953)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_954
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_954)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_955
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_955)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_956
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_956)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_957
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_957)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_958
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_958)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_959
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_959)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_960
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_960)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_961
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_961)

//push constant 39
	@39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_962
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_962)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_963
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_963)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_964
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_964)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_965
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_965)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_966
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_966)

//push constant 99
	@99
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_967
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_967)

//push constant 99
	@99
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_968
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_968)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_969
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_969)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_970
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_970)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_971
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_971)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_972
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_972)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_973
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_973)

//push constant 98
	@98
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_974
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_974)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_975
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_975)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_976
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_976)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_977
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_977)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_978
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_978)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_979
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_979)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_980
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_980)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_981
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_981)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_982
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_982)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_983
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_983)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_984
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_984)

//push constant 112
	@112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_985
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_985)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_986
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_986)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_987
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_987)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_988
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_988)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_989
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_989)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_990
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_990)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_991
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_991)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_992
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_992)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_993
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_993)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1000
	@1000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_994
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_994)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_995
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_995)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_996
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_996)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_997
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_997)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 27
	@27
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_998
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_998)

//push constant 112
	@112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_999
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_999)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1000)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1001
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1001)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1002
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1002)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1003
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1003)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1004
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1004)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1005
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1005)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1006
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1006)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1007
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1007)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1008
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1008)

//push constant 107
	@107
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1009
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1009)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1010
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1010)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1011
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1011)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1012
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1012)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1013
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1013)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1014
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1014)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1015
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1015)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1016
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1016)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1017
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1017)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1018
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1018)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1019
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1019)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1020
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1020)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1021
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1021)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1022
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1022)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1023
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1023)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1024
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1024)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1025
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1025)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1026
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1026)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1000
	@1000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1027
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1027)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1028
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1028)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_1029
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_1029)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//call Keyboard.keyPressed 0
	@RETURN_ADDRESS_1030
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Keyboard.keyPressed
	0;JMP
(RETURN_ADDRESS_1030)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1031
	D;JGT
	@FIRST_MINUS_1031
	D;JLT
	@SAME_SIGN_1031
	0;JMP
(FIRST_PLUS_1031)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1031
	D;JLT
	@SAME_SIGN_1031
	0;JMP
(DIF_SIGN_LT_1031)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1031
	0;JMP
(FIRST_MINUS_1031)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1031
	D;JGT
	@SAME_SIGN_1031
	0;JMP
(DIF_SIGN_GT_1031)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1031
	0;JMP
(SAME_SIGN_1031)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1031
	D;JGT
	@LOWER_1031
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_1031
	0;JMP
(GRATER_1031)
	@SP
	A=M-1
	M=0
	@CON_1031
	0;JMP
(LOWER_1031)
	@SP
	A=M-1
	M=0
(CON_1031)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Scenes.failed 1
(Scenes.failed)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.clearScreen 0
	@RETURN_ADDRESS_1032
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.clearScreen
	0;JMP
(RETURN_ADDRESS_1032)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1033
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1033)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 15
	@15
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1034
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1034)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1035
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1035)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1036
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1036)

//push constant 89
	@89
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1037
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1037)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1038
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1038)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1039
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1039)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1040
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1040)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1041
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1041)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1042
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1042)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1043
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1043)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1044
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1044)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1045
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1045)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1046
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1046)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1047
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1047)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1048
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1048)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1049
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1049)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1050
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1050)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1051
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1051)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 3000
	@3000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1052
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1052)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 29
	@29
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1053
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1053)

//push constant 66
	@66
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1054
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1054)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1055
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1055)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1056
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1056)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1057
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1057)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1058
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1058)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1059
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1059)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1060
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1060)

//push constant 98
	@98
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1061
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1061)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1062
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1062)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1063
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1063)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1064
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1064)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1065
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1065)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1066
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1066)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1067
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1067)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1068
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1068)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1069
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1069)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1070
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1070)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1071
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1071)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1072
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1072)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1073
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1073)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1074
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1074)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1075
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1075)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1076
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1076)

//push constant 112
	@112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1077
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1077)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1078
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1078)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1079
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1079)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1080
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1080)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1081
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1081)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1082
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1082)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_1083
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_1083)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1084
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1084)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 3000
	@3000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1085
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1085)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1086
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1086)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 50
	@50
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1087
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1087)

//push constant 78
	@78
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1088
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1088)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1089
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1089)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1090
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1090)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1091
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1091)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1092
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1092)

//push constant 99
	@99
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1093
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1093)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1094
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1094)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1095
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1095)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1096
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1096)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1097
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1097)

//push constant 99
	@99
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1098
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1098)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1099
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1099)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1100)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1101)

//push constant 99
	@99
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1102)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1103)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1104)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1105)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1106
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1106)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1107
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1107)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1108)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1109)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1110)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1111)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1112)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1113
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1113)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1114)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1115)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1116)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1117)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1118)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1119)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1120
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1120)

//push constant 98
	@98
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1121)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1122
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1122)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1123
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1123)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1124
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1124)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1125
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1125)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1126
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1126)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1127
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1127)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1128
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1128)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1129
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1129)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1130
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1130)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1131
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1131)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1132
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1132)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1133
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1133)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1134
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1134)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1135
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1135)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1136
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1136)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1137
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1137)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_1138
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_1138)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1139
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1139)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 2000
	@2000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1140
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1140)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1141
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1141)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_1142
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_1142)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 53
	@53
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1143
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1143)

//push constant 72
	@72
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1144
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1144)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1145
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1145)

//push constant 112
	@112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1146
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1146)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1147
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1147)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1148
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1148)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1149
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1149)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1150
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1150)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1151
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1151)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1152
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1152)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1153
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1153)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1154
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1154)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1155
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1155)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1156
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1156)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1157
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1157)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1158
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1158)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1159
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1159)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1160
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1160)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1161
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1161)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1162
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1162)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1163
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1163)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1164
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1164)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1165
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1165)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1166
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1166)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1167
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1167)

//push constant 70
	@70
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1168
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1168)

//push constant 82
	@82
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1169
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1169)

//push constant 79
	@79
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1170
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1170)

//push constant 71
	@71
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1171
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1171)

//push constant 71
	@71
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1172
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1172)

//push constant 69
	@69
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1173
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1173)

//push constant 82
	@82
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1174
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1174)

//push constant 45
	@45
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1175
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1175)

//push constant 50
	@50
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1176
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1176)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1177
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1177)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1178
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1178)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1179
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1179)

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1180
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1180)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1181
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1181)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1182
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1182)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1183
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1183)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1184
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1184)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1185
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1185)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1186
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1186)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1187
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1187)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1188
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1188)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1189
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1189)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1190
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1190)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1191
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1191)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1192
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1192)

//push constant 65
	@65
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1193
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1193)

//push constant 76
	@76
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1194
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1194)

//push constant 85
	@85
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1195
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1195)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1196
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1196)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1197
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1197)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1000
	@1000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1198
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1198)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1199
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1199)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_1200
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_1200)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 39
	@39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1201
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1201)

//push constant 84
	@84
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1202
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1202)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1203
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1203)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1204
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1204)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1205
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1205)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1206
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1206)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1207
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1207)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1208
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1208)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1209
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1209)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1210
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1210)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1211
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1211)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1212
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1212)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1213
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1213)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1214
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1214)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1215
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1215)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1216
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1216)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1217
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1217)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1218
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1218)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1219
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1219)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1220
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1220)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1221
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1221)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1222
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1222)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1223
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1223)

//push constant 98
	@98
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1224
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1224)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1225
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1225)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1226
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1226)

//push constant 83
	@83
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1227
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1227)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1228
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1228)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1229
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1229)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1230
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1230)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1231
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1231)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1232
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1232)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1233
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1233)

//push constant 65
	@65
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1234
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1234)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1235
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1235)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1236
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1236)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1237
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1237)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1238
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1238)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1239
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1239)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1240
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1240)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1241
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1241)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1000
	@1000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1242
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1242)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1243
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1243)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//call Keyboard.keyPressed 0
	@RETURN_ADDRESS_1244
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Keyboard.keyPressed
	0;JMP
(RETURN_ADDRESS_1244)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1245
	D;JGT
	@FIRST_MINUS_1245
	D;JLT
	@SAME_SIGN_1245
	0;JMP
(FIRST_PLUS_1245)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1245
	D;JLT
	@SAME_SIGN_1245
	0;JMP
(DIF_SIGN_LT_1245)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1245
	0;JMP
(FIRST_MINUS_1245)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1245
	D;JGT
	@SAME_SIGN_1245
	0;JMP
(DIF_SIGN_GT_1245)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1245
	0;JMP
(SAME_SIGN_1245)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1245
	D;JGT
	@LOWER_1245
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_1245
	0;JMP
(GRATER_1245)
	@SP
	A=M-1
	M=0
	@CON_1245
	0;JMP
(LOWER_1245)
	@SP
	A=M-1
	M=0
(CON_1245)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Scenes.succeeded 1
(Scenes.succeeded)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.clearScreen 0
	@RETURN_ADDRESS_1246
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.clearScreen
	0;JMP
(RETURN_ADDRESS_1246)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1247
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1247)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1248
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1248)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1249
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1249)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1250
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1250)

//push constant 89
	@89
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1251
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1251)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1252
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1252)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1253
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1253)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1254
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1254)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1255
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1255)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1256
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1256)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1257
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1257)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1258
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1258)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1259
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1259)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1260
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1260)

//push constant 87
	@87
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1261
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1261)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1262
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1262)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1263
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1263)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1264
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1264)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1265
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1265)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1266
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1266)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 3000
	@3000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1267
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1267)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 36
	@36
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1268
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1268)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1269
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1269)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1270
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1270)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1271
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1271)

//push constant 73
	@73
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1272
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1272)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1273
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1273)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1274
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1274)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1275
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1275)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1276
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1276)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1277
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1277)

//push constant 39
	@39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1278
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1278)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1279
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1279)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1280
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1280)

//push constant 112
	@112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1281
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1281)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1282
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1282)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1283
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1283)

//push constant 112
	@112
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1284
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1284)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1285
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1285)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1286
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1286)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1287
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1287)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1288
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1288)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1289
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1289)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1290
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1290)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1291
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1291)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1292
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1292)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1293
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1293)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1294
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1294)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1295
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1295)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1296
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1296)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1297
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1297)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1298
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1298)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1299
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1299)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1300
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1300)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1301
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1301)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1302
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1302)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1303
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1303)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1304
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1304)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_1305
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_1305)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1306
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1306)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 3000
	@3000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1307
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1307)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1308
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1308)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 22
	@22
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1309
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1309)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1310
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1310)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1311
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1311)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1312
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1312)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1313
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1313)

//push constant 67
	@67
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1314
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1314)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1315
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1315)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1316
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1316)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1317
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1317)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1318
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1318)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1319
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1319)

//push constant 100
	@100
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1320
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1320)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1321
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1321)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1322
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1322)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1323
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1323)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1324
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1324)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1325
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1325)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1326
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1326)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1327
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1327)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1328
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1328)

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1329
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1329)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1330
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1330)

//push constant 46
	@46
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1331
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1331)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_1332
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_1332)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1333
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1333)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 2000
	@2000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1334
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1334)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1335
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1335)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_1336
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_1336)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 57
	@57
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1337
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1337)

//push constant 89
	@89
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1338
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1338)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1339
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1339)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1340
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1340)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1341
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1341)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1342
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1342)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1343
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1343)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1344
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1344)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1345
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1345)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1346
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1346)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1347
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1347)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1348
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1348)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1349
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1349)

//push constant 118
	@118
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1350
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1350)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1351
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1351)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1352
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1352)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1353
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1353)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1354
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1354)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1355
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1355)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1356
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1356)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1357
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1357)

//push constant 107
	@107
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1358
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1358)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1359
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1359)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1360
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1360)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1361
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1361)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1362
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1362)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1363
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1363)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1364
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1364)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1365
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1365)

//push constant 102
	@102
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1366
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1366)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1367
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1367)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1368
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1368)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1369
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1369)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1370
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1370)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1371
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1371)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1372
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1372)

//push constant 33
	@33
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1373
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1373)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1374
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1374)

//push constant 40
	@40
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1375
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1375)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1376
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1376)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1377
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1377)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1378
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1378)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1379
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1379)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1380
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1380)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1381
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1381)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1382
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1382)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1383
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1383)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1384
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1384)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1385
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1385)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1386
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1386)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1387
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1387)

//push constant 44
	@44
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1388
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1388)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1389
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1389)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1390
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1390)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1391
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1391)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1392
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1392)

//push constant 63
	@63
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1393
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1393)

//push constant 41
	@41
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1394
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1394)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1395
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1395)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1000
	@1000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1396
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1396)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1397
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1397)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Output.println 0
	@RETURN_ADDRESS_1398
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.println
	0;JMP
(RETURN_ADDRESS_1398)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 39
	@39
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.new 1
	@RETURN_ADDRESS_1399
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.new
	0;JMP
(RETURN_ADDRESS_1399)

//push constant 84
	@84
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1400
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1400)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1401
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1401)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1402
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1402)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1403
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1403)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1404
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1404)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1405
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1405)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1406
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1406)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1407
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1407)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1408
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1408)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1409
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1409)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1410
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1410)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1411
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1411)

//push constant 115
	@115
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1412
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1412)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1413
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1413)

//push constant 119
	@119
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1414
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1414)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1415
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1415)

//push constant 105
	@105
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1416
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1416)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1417
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1417)

//push constant 116
	@116
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1418
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1418)

//push constant 101
	@101
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1419
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1419)

//push constant 110
	@110
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1420
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1420)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1421
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1421)

//push constant 98
	@98
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1422
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1422)

//push constant 121
	@121
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1423
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1423)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1424
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1424)

//push constant 83
	@83
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1425
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1425)

//push constant 104
	@104
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1426
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1426)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1427
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1427)

//push constant 117
	@117
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1428
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1428)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1429
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1429)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1430
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1430)

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1431
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1431)

//push constant 65
	@65
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1432
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1432)

//push constant 108
	@108
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1433
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1433)

//push constant 109
	@109
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1434
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1434)

//push constant 97
	@97
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1435
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1435)

//push constant 103
	@103
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1436
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1436)

//push constant 111
	@111
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1437
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1437)

//push constant 114
	@114
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.appendChar 2
	@RETURN_ADDRESS_1438
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.appendChar
	0;JMP
(RETURN_ADDRESS_1438)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Output.printString 1
	@RETURN_ADDRESS_1439
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Output.printString
	0;JMP
(RETURN_ADDRESS_1439)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 1000
	@1000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.wait 1
	@RETURN_ADDRESS_1440
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.wait
	0;JMP
(RETURN_ADDRESS_1440)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call String.dispose 1
	@RETURN_ADDRESS_1441
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@String.dispose
	0;JMP
(RETURN_ADDRESS_1441)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//call Keyboard.keyPressed 0
	@RETURN_ADDRESS_1442
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@0
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Keyboard.keyPressed
	0;JMP
(RETURN_ADDRESS_1442)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1443
	D;JGT
	@FIRST_MINUS_1443
	D;JLT
	@SAME_SIGN_1443
	0;JMP
(FIRST_PLUS_1443)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1443
	D;JLT
	@SAME_SIGN_1443
	0;JMP
(DIF_SIGN_LT_1443)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1443
	0;JMP
(FIRST_MINUS_1443)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1443
	D;JGT
	@SAME_SIGN_1443
	0;JMP
(DIF_SIGN_GT_1443)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1443
	0;JMP
(SAME_SIGN_1443)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1443
	D;JGT
	@LOWER_1443
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_1443
	0;JMP
(GRATER_1443)
	@SP
	A=M-1
	M=0
	@CON_1443
	0;JMP
(LOWER_1443)
	@SP
	A=M-1
	M=0
(CON_1443)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Screen.init 1
(Screen.init)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16384
	@16384
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 1
	@Screen1
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//pop static 2
	@Screen2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 17
	@17
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Array.new 1
	@RETURN_ADDRESS_1444
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Array.new
	0;JMP
(RETURN_ADDRESS_1444)

//pop static 0
	@Screen0
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Screen0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1445
	D;JGT
	@FIRST_MINUS_1445
	D;JLT
	@SAME_SIGN_1445
	0;JMP
(FIRST_PLUS_1445)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1445
	D;JLT
	@SAME_SIGN_1445
	0;JMP
(DIF_SIGN_LT_1445)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1445
	0;JMP
(FIRST_MINUS_1445)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1445
	D;JGT
	@SAME_SIGN_1445
	0;JMP
(DIF_SIGN_GT_1445)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1445
	0;JMP
(SAME_SIGN_1445)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1445
	D;JGT
	@LOWER_1445
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1445
	0;JMP
(GRATER_1445)
	@SP
	A=M-1
	M=0
	@CON_1445
	0;JMP
(LOWER_1445)
	@SP
	A=M-1
	M=-1
(CON_1445)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Screen0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push static 0
	@Screen0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//push static 0
	@Screen0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Screen.clearScreen 1
(Screen.clearScreen)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//label WHILE_EXP0
(WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 8192
	@8192
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1446
	D;JGT
	@FIRST_MINUS_1446
	D;JLT
	@SAME_SIGN_1446
	0;JMP
(FIRST_PLUS_1446)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1446
	D;JLT
	@SAME_SIGN_1446
	0;JMP
(DIF_SIGN_LT_1446)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1446
	0;JMP
(FIRST_MINUS_1446)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1446
	D;JGT
	@SAME_SIGN_1446
	0;JMP
(DIF_SIGN_GT_1446)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1446
	0;JMP
(SAME_SIGN_1446)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1446
	D;JGT
	@LOWER_1446
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1446
	0;JMP
(GRATER_1446)
	@SP
	A=M-1
	M=0
	@CON_1446
	0;JMP
(LOWER_1446)
	@SP
	A=M-1
	M=-1
(CON_1446)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@WHILE_END0
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Screen1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Screen.updateLocation 0
(Screen.updateLocation)

//push static 2
	@Screen2
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Screen1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Screen1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Screen1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 1
	@Screen1
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop that 0
	@0
	D=A
	@THAT
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END0
(IF_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Screen.setColor 0
(Screen.setColor)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//pop static 2
	@Screen2
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Screen.drawPixel 3
(Screen.drawPixel)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1447
	D;JGT
	@FIRST_MINUS_1447
	D;JLT
	@SAME_SIGN_1447
	0;JMP
(FIRST_PLUS_1447)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1447
	D;JLT
	@SAME_SIGN_1447
	0;JMP
(DIF_SIGN_LT_1447)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1447
	0;JMP
(FIRST_MINUS_1447)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1447
	D;JGT
	@SAME_SIGN_1447
	0;JMP
(DIF_SIGN_GT_1447)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1447
	0;JMP
(SAME_SIGN_1447)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1447
	D;JGT
	@LOWER_1447
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1447
	0;JMP
(GRATER_1447)
	@SP
	A=M-1
	M=0
	@CON_1447
	0;JMP
(LOWER_1447)
	@SP
	A=M-1
	M=-1
(CON_1447)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 511
	@511
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1448
	D;JGT
	@FIRST_MINUS_1448
	D;JLT
	@SAME_SIGN_1448
	0;JMP
(FIRST_PLUS_1448)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1448
	D;JLT
	@SAME_SIGN_1448
	0;JMP
(DIF_SIGN_LT_1448)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1448
	0;JMP
(FIRST_MINUS_1448)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1448
	D;JGT
	@SAME_SIGN_1448
	0;JMP
(DIF_SIGN_GT_1448)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1448
	0;JMP
(SAME_SIGN_1448)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1448
	D;JGT
	@LOWER_1448
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1448
	0;JMP
(GRATER_1448)
	@SP
	A=M-1
	M=-1
	@CON_1448
	0;JMP
(LOWER_1448)
	@SP
	A=M-1
	M=0
(CON_1448)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1449
	D;JGT
	@FIRST_MINUS_1449
	D;JLT
	@SAME_SIGN_1449
	0;JMP
(FIRST_PLUS_1449)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1449
	D;JLT
	@SAME_SIGN_1449
	0;JMP
(DIF_SIGN_LT_1449)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1449
	0;JMP
(FIRST_MINUS_1449)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1449
	D;JGT
	@SAME_SIGN_1449
	0;JMP
(DIF_SIGN_GT_1449)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1449
	0;JMP
(SAME_SIGN_1449)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1449
	D;JGT
	@LOWER_1449
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1449
	0;JMP
(GRATER_1449)
	@SP
	A=M-1
	M=0
	@CON_1449
	0;JMP
(LOWER_1449)
	@SP
	A=M-1
	M=-1
(CON_1449)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 255
	@255
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1450
	D;JGT
	@FIRST_MINUS_1450
	D;JLT
	@SAME_SIGN_1450
	0;JMP
(FIRST_PLUS_1450)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1450
	D;JLT
	@SAME_SIGN_1450
	0;JMP
(DIF_SIGN_LT_1450)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1450
	0;JMP
(FIRST_MINUS_1450)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1450
	D;JGT
	@SAME_SIGN_1450
	0;JMP
(DIF_SIGN_GT_1450)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1450
	0;JMP
(SAME_SIGN_1450)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1450
	D;JGT
	@LOWER_1450
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1450
	0;JMP
(GRATER_1450)
	@SP
	A=M-1
	M=-1
	@CON_1450
	0;JMP
(LOWER_1450)
	@SP
	A=M-1
	M=0
(CON_1450)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 7
	@7
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.error 1
	@RETURN_ADDRESS_1451
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.error
	0;JMP
(RETURN_ADDRESS_1451)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.divide 2
	@RETURN_ADDRESS_1452
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.divide
	0;JMP
(RETURN_ADDRESS_1452)

//pop local 0
	@0
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 16
	@16
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_1453
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_1453)

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//pop local 1
	@1
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 32
	@32
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Math.multiply 2
	@RETURN_ADDRESS_1454
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.multiply
	0;JMP
(RETURN_ADDRESS_1454)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push static 0
	@Screen0
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.updateLocation 2
	@RETURN_ADDRESS_1455
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.updateLocation
	0;JMP
(RETURN_ADDRESS_1455)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Screen.drawConditional 0
(Screen.drawConditional)

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.drawPixel 2
	@RETURN_ADDRESS_1456
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_1456)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//goto IF_END0
	@IF_END0
	0;JMP

//label IF_FALSE0
(IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Screen.drawPixel 2
	@RETURN_ADDRESS_1457
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@2
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Screen.drawPixel
	0;JMP
(RETURN_ADDRESS_1457)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_END0
(IF_END0)

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//return
	@LCL
	D=M
	@endframe
	M=D
	@endframe
	D=M
	@5
	D=D-A
	A=D
	D=M
	@retaddr
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M+1
	@SP
	M=D
	@endframe
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@endframe
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@endframe
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@endframe
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Screen.drawLine 11
(Screen.drawLine)
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1458
	D;JGT
	@FIRST_MINUS_1458
	D;JLT
	@SAME_SIGN_1458
	0;JMP
(FIRST_PLUS_1458)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1458
	D;JLT
	@SAME_SIGN_1458
	0;JMP
(DIF_SIGN_LT_1458)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1458
	0;JMP
(FIRST_MINUS_1458)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1458
	D;JGT
	@SAME_SIGN_1458
	0;JMP
(DIF_SIGN_GT_1458)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1458
	0;JMP
(SAME_SIGN_1458)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1458
	D;JGT
	@LOWER_1458
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1458
	0;JMP
(GRATER_1458)
	@SP
	A=M-1
	M=0
	@CON_1458
	0;JMP
(LOWER_1458)
	@SP
	A=M-1
	M=-1
(CON_1458)

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 511
	@511
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1459
	D;JGT
	@FIRST_MINUS_1459
	D;JLT
	@SAME_SIGN_1459
	0;JMP
(FIRST_PLUS_1459)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1459
	D;JLT
	@SAME_SIGN_1459
	0;JMP
(DIF_SIGN_LT_1459)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1459
	0;JMP
(FIRST_MINUS_1459)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1459
	D;JGT
	@SAME_SIGN_1459
	0;JMP
(DIF_SIGN_GT_1459)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1459
	0;JMP
(SAME_SIGN_1459)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1459
	D;JGT
	@LOWER_1459
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1459
	0;JMP
(GRATER_1459)
	@SP
	A=M-1
	M=-1
	@CON_1459
	0;JMP
(LOWER_1459)
	@SP
	A=M-1
	M=0
(CON_1459)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 0
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1460
	D;JGT
	@FIRST_MINUS_1460
	D;JLT
	@SAME_SIGN_1460
	0;JMP
(FIRST_PLUS_1460)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1460
	D;JLT
	@SAME_SIGN_1460
	0;JMP
(DIF_SIGN_LT_1460)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1460
	0;JMP
(FIRST_MINUS_1460)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1460
	D;JGT
	@SAME_SIGN_1460
	0;JMP
(DIF_SIGN_GT_1460)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1460
	0;JMP
(SAME_SIGN_1460)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1460
	D;JGT
	@LOWER_1460
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1460
	0;JMP
(GRATER_1460)
	@SP
	A=M-1
	M=0
	@CON_1460
	0;JMP
(LOWER_1460)
	@SP
	A=M-1
	M=-1
(CON_1460)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push constant 255
	@255
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1461
	D;JGT
	@FIRST_MINUS_1461
	D;JLT
	@SAME_SIGN_1461
	0;JMP
(FIRST_PLUS_1461)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1461
	D;JLT
	@SAME_SIGN_1461
	0;JMP
(DIF_SIGN_LT_1461)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1461
	0;JMP
(FIRST_MINUS_1461)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1461
	D;JGT
	@SAME_SIGN_1461
	0;JMP
(DIF_SIGN_GT_1461)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1461
	0;JMP
(SAME_SIGN_1461)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1461
	D;JGT
	@LOWER_1461
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1461
	0;JMP
(GRATER_1461)
	@SP
	A=M-1
	M=-1
	@CON_1461
	0;JMP
(LOWER_1461)
	@SP
	A=M-1
	M=0
(CON_1461)

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@IF_FALSE0
	0;JMP

//label IF_TRUE0
(IF_TRUE0)

//push constant 8
	@8
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.error 1
	@RETURN_ADDRESS_1462
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Sys.error
	0;JMP
(RETURN_ADDRESS_1462)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label IF_FALSE0
(IF_FALSE0)

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//call Math.abs 1
	@RETURN_ADDRESS_1463
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.abs
	0;JMP
(RETURN_ADDRESS_1463)

//pop local 3
	@3
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//sub
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D

//call Math.abs 1
	@RETURN_ADDRESS_1464
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	D=M
	@5
	D=D-A
	@1
	D=D-A
	@ARG
	M=D
	@SP
	D=M
	@LCL
	M=D
	@Math.abs
	0;JMP
(RETURN_ADDRESS_1464)

//pop local 2
	@2
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1465
	D;JGT
	@FIRST_MINUS_1465
	D;JLT
	@SAME_SIGN_1465
	0;JMP
(FIRST_PLUS_1465)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1465
	D;JLT
	@SAME_SIGN_1465
	0;JMP
(DIF_SIGN_LT_1465)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1465
	0;JMP
(FIRST_MINUS_1465)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1465
	D;JGT
	@SAME_SIGN_1465
	0;JMP
(DIF_SIGN_GT_1465)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1465
	0;JMP
(SAME_SIGN_1465)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1465
	D;JGT
	@LOWER_1465
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1465
	0;JMP
(GRATER_1465)
	@SP
	A=M-1
	M=0
	@CON_1465
	0;JMP
(LOWER_1465)
	@SP
	A=M-1
	M=-1
(CON_1465)

//pop local 6
	@6
	D=A
	@LCL
	D=M+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//push local 6
	@6
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 3
	@3
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1466
	D;JGT
	@FIRST_MINUS_1466
	D;JLT
	@SAME_SIGN_1466
	0;JMP
(FIRST_PLUS_1466)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1466
	D;JLT
	@SAME_SIGN_1466
	0;JMP
(DIF_SIGN_LT_1466)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1466
	0;JMP
(FIRST_MINUS_1466)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1466
	D;JGT
	@SAME_SIGN_1466
	0;JMP
(DIF_SIGN_GT_1466)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1466
	0;JMP
(SAME_SIGN_1466)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1466
	D;JGT
	@LOWER_1466
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1466
	0;JMP
(GRATER_1466)
	@SP
	A=M-1
	M=0
	@CON_1466
	0;JMP
(LOWER_1466)
	@SP
	A=M-1
	M=-1
(CON_1466)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//push local 6
	@6
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//not
	@SP
	A=M-1
	M=!M

//push argument 2
	@2
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_1467
	D;JGT
	@FIRST_MINUS_1467
	D;JLT
	@SAME_SIGN_1467
	0;JMP
(FIRST_PLUS_1467)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_1467
	D;JLT
	@SAME_SIGN_1467
	0;JMP
(DIF_SIGN_LT_1467)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_1467
	0;JMP
(FIRST_MINUS_1467)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_1467
	D;JGT
	@SAME_SIGN_1467
	0;JMP
(DIF_SIGN_GT_1467)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_1467
	0;JMP
(SAME_SIGN_1467)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_1467
	D;JGT
	@LOWER_1467
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_1467
	0;JMP
(GRATER_1467)
	@SP
	A=M-1
	M=0
	@CON_1467
	0;JMP
(LOWER_1467)
	@SP
	A=M-1
	M=-1
(CON_1467)

//and
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M&D

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@IF_TRUE1
	D;JNE

	0;JMP
