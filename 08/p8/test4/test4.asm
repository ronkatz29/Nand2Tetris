//Init command
	@256
	D=A
	@SP
	M=D

//call init function
	@Sys.init&ret.0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Sys.init&ret.0)
//function Math.init 1
(Math.init)
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 16
	@16
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Array.new 1
	@Array.new&ret.1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Array.new&ret.1)

//pop static 1
	@Math1
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 16
	@16
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Array.new 1
	@Array.new&ret.2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Array.new&ret.2)

//pop static 0
	@Math0
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Math0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label WHILE_EXP0
(Array.new.WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 15
	@15
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_3
	D;JGT
	@FIRST_MINUS_3
	D;JLT
	@SAME_SIGN_3
	0;JMP
(FIRST_PLUS_3)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_3
	D;JLT
	@SAME_SIGN_3
	0;JMP
(DIF_SIGN_LT_3)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_3
	0;JMP
(FIRST_MINUS_3)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_3
	D;JGT
	@SAME_SIGN_3
	0;JMP
(DIF_SIGN_GT_3)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_3
	0;JMP
(SAME_SIGN_3)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_3
	D;JGT
	@LOWER_3
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_3
	0;JMP
(GRATER_3)
	@SP
	A=M-1
	M=0
	@CON_3
	0;JMP
(LOWER_3)
	@SP
	A=M-1
	M=-1
(CON_3)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@Array.new.WHILE_END0
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Math0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto WHILE_EXP0
	@Array.new.WHILE_EXP0
	0;JMP

//label WHILE_END0
(Array.new.WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
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
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_4
	D;JGT
	@FIRST_MINUS_4
	D;JLT
	@SAME_SIGN_4
	0;JMP
(FIRST_PLUS_4)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_4
	D;JLT
	@SAME_SIGN_4
	0;JMP
(DIF_SIGN_LT_4)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_4
	0;JMP
(FIRST_MINUS_4)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_4
	D;JGT
	@SAME_SIGN_4
	0;JMP
(DIF_SIGN_GT_4)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_4
	0;JMP
(SAME_SIGN_4)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_4
	D;JGT
	@LOWER_4
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_4
	0;JMP
(GRATER_4)
	@SP
	A=M-1
	M=0
	@CON_4
	0;JMP
(LOWER_4)
	@SP
	A=M-1
	M=-1
(CON_4)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Array.new.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Array.new.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Array.new.IF_TRUE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//neg
	@SP
	A=M-1
	M=-M

//pop argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE0
(Array.new.IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Math.multiply 5
(Math.multiply)
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_5
	D;JGT
	@FIRST_MINUS_5
	D;JLT
	@SAME_SIGN_5
	0;JMP
(FIRST_PLUS_5)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_5
	D;JLT
	@SAME_SIGN_5
	0;JMP
(DIF_SIGN_LT_5)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_5
	0;JMP
(FIRST_MINUS_5)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_5
	D;JGT
	@SAME_SIGN_5
	0;JMP
(DIF_SIGN_GT_5)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_5
	0;JMP
(SAME_SIGN_5)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_5
	D;JGT
	@LOWER_5
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_5
	0;JMP
(GRATER_5)
	@SP
	A=M-1
	M=0
	@CON_5
	0;JMP
(LOWER_5)
	@SP
	A=M-1
	M=-1
(CON_5)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_6
	D;JGT
	@FIRST_MINUS_6
	D;JLT
	@SAME_SIGN_6
	0;JMP
(FIRST_PLUS_6)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_6
	D;JLT
	@SAME_SIGN_6
	0;JMP
(DIF_SIGN_LT_6)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_6
	0;JMP
(FIRST_MINUS_6)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_6
	D;JGT
	@SAME_SIGN_6
	0;JMP
(DIF_SIGN_GT_6)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_6
	0;JMP
(SAME_SIGN_6)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_6
	D;JGT
	@LOWER_6
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_6
	0;JMP
(GRATER_6)
	@SP
	A=M-1
	M=-1
	@CON_6
	0;JMP
(LOWER_6)
	@SP
	A=M-1
	M=0
(CON_6)

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
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//gt
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
	M=0
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
	M=-1
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
	M=-1
	@CON_7
	0;JMP
(LOWER_7)
	@SP
	A=M-1
	M=0
(CON_7)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_8
	D;JGT
	@FIRST_MINUS_8
	D;JLT
	@SAME_SIGN_8
	0;JMP
(FIRST_PLUS_8)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_8
	D;JLT
	@SAME_SIGN_8
	0;JMP
(DIF_SIGN_LT_8)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_8
	0;JMP
(FIRST_MINUS_8)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_8
	D;JGT
	@SAME_SIGN_8
	0;JMP
(DIF_SIGN_GT_8)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_8
	0;JMP
(SAME_SIGN_8)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_8
	D;JGT
	@LOWER_8
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_8
	0;JMP
(GRATER_8)
	@SP
	A=M-1
	M=0
	@CON_8
	0;JMP
(LOWER_8)
	@SP
	A=M-1
	M=-1
(CON_8)

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Math.abs 1
	@Math.abs&ret.9
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Math.abs&ret.9)

//pop argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Math.abs 1
	@Math.abs&ret.10
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Math.abs&ret.10)

//pop argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_11
	D;JGT
	@FIRST_MINUS_11
	D;JLT
	@SAME_SIGN_11
	0;JMP
(FIRST_PLUS_11)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_11
	D;JLT
	@SAME_SIGN_11
	0;JMP
(DIF_SIGN_LT_11)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_11
	0;JMP
(FIRST_MINUS_11)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_11
	D;JGT
	@SAME_SIGN_11
	0;JMP
(DIF_SIGN_GT_11)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_11
	0;JMP
(SAME_SIGN_11)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_11
	D;JGT
	@LOWER_11
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_11
	0;JMP
(GRATER_11)
	@SP
	A=M-1
	M=0
	@CON_11
	0;JMP
(LOWER_11)
	@SP
	A=M-1
	M=-1
(CON_11)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Math.abs.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Math.abs.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Math.abs.IF_TRUE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop local 1
	@1
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE0
(Math.abs.IF_FALSE0)

//label WHILE_EXP0
(Math.abs.WHILE_EXP0)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_12
	D;JGT
	@FIRST_MINUS_12
	D;JLT
	@SAME_SIGN_12
	0;JMP
(FIRST_PLUS_12)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_12
	D;JLT
	@SAME_SIGN_12
	0;JMP
(DIF_SIGN_LT_12)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_12
	0;JMP
(FIRST_MINUS_12)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_12
	D;JGT
	@SAME_SIGN_12
	0;JMP
(DIF_SIGN_GT_12)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_12
	0;JMP
(SAME_SIGN_12)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_12
	D;JGT
	@LOWER_12
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_12
	0;JMP
(GRATER_12)
	@SP
	A=M-1
	M=0
	@CON_12
	0;JMP
(LOWER_12)
	@SP
	A=M-1
	M=-1
(CON_12)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@Math.abs.WHILE_END0
	D;JNE

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Math0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_13
	D;JGT
	@FIRST_MINUS_13
	D;JLT
	@SAME_SIGN_13
	0;JMP
(FIRST_PLUS_13)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_13
	D;JLT
	@SAME_SIGN_13
	0;JMP
(DIF_SIGN_LT_13)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_13
	0;JMP
(FIRST_MINUS_13)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_13
	D;JGT
	@SAME_SIGN_13
	0;JMP
(DIF_SIGN_GT_13)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_13
	0;JMP
(SAME_SIGN_13)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_13
	D;JGT
	@LOWER_13
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_13
	0;JMP
(GRATER_13)
	@SP
	A=M-1
	M=-1
	@CON_13
	0;JMP
(LOWER_13)
	@SP
	A=M-1
	M=0
(CON_13)

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@Math.abs.IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@Math.abs.IF_FALSE1
	0;JMP

//label IF_TRUE1
(Math.abs.IF_TRUE1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Math0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE1
(Math.abs.IF_FALSE1)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto WHILE_EXP0
	@Math.abs.WHILE_EXP0
	0;JMP

//label WHILE_END0
(Math.abs.WHILE_END0)

//push local 4
	@4
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@Math.abs.IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@Math.abs.IF_FALSE2
	0;JMP

//label IF_TRUE2
(Math.abs.IF_TRUE2)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//neg
	@SP
	A=M-1
	M=-M

//pop local 0
	@0
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE2
(Math.abs.IF_FALSE2)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Math.divide 4
(Math.divide)
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_14
	D;JGT
	@FIRST_MINUS_14
	D;JLT
	@SAME_SIGN_14
	0;JMP
(FIRST_PLUS_14)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_14
	D;JLT
	@SAME_SIGN_14
	0;JMP
(DIF_SIGN_LT_14)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_14
	0;JMP
(FIRST_MINUS_14)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_14
	D;JGT
	@SAME_SIGN_14
	0;JMP
(DIF_SIGN_GT_14)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_14
	0;JMP
(SAME_SIGN_14)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_14
	D;JGT
	@LOWER_14
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_14
	0;JMP
(GRATER_14)
	@SP
	A=M-1
	M=0
	@CON_14
	0;JMP
(LOWER_14)
	@SP
	A=M-1
	M=0
(CON_14)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Math.abs.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Math.abs.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Math.abs.IF_TRUE0)

//push constant 3
	@3
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@Sys.error&ret.15
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Sys.error&ret.15)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE0
(Sys.error.IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_16
	D;JGT
	@FIRST_MINUS_16
	D;JLT
	@SAME_SIGN_16
	0;JMP
(FIRST_PLUS_16)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_16
	D;JLT
	@SAME_SIGN_16
	0;JMP
(DIF_SIGN_LT_16)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_16
	0;JMP
(FIRST_MINUS_16)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_16
	D;JGT
	@SAME_SIGN_16
	0;JMP
(DIF_SIGN_GT_16)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_16
	0;JMP
(SAME_SIGN_16)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_16
	D;JGT
	@LOWER_16
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_16
	0;JMP
(GRATER_16)
	@SP
	A=M-1
	M=0
	@CON_16
	0;JMP
(LOWER_16)
	@SP
	A=M-1
	M=-1
(CON_16)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//gt
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
	M=-1
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
	M=0
	@CON_17
	0;JMP
(GRATER_17)
	@SP
	A=M-1
	M=-1
	@CON_17
	0;JMP
(LOWER_17)
	@SP
	A=M-1
	M=0
(CON_17)

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
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_18
	D;JGT
	@FIRST_MINUS_18
	D;JLT
	@SAME_SIGN_18
	0;JMP
(FIRST_PLUS_18)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_18
	D;JLT
	@SAME_SIGN_18
	0;JMP
(DIF_SIGN_LT_18)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_18
	0;JMP
(FIRST_MINUS_18)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_18
	D;JGT
	@SAME_SIGN_18
	0;JMP
(DIF_SIGN_GT_18)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_18
	0;JMP
(SAME_SIGN_18)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_18
	D;JGT
	@LOWER_18
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_18
	0;JMP
(GRATER_18)
	@SP
	A=M-1
	M=-1
	@CON_18
	0;JMP
(LOWER_18)
	@SP
	A=M-1
	M=0
(CON_18)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_19
	D;JGT
	@FIRST_MINUS_19
	D;JLT
	@SAME_SIGN_19
	0;JMP
(FIRST_PLUS_19)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_19
	D;JLT
	@SAME_SIGN_19
	0;JMP
(DIF_SIGN_LT_19)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_19
	0;JMP
(FIRST_MINUS_19)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_19
	D;JGT
	@SAME_SIGN_19
	0;JMP
(DIF_SIGN_GT_19)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_19
	0;JMP
(SAME_SIGN_19)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_19
	D;JGT
	@LOWER_19
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_19
	0;JMP
(GRATER_19)
	@SP
	A=M-1
	M=0
	@CON_19
	0;JMP
(LOWER_19)
	@SP
	A=M-1
	M=-1
(CON_19)

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push static 1
	@Math1
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//call Math.abs 1
	@Math.abs&ret.20
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Math.abs&ret.20)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Math.abs 1
	@Math.abs&ret.21
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Math.abs&ret.21)

//pop argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label WHILE_EXP0
(Math.abs.WHILE_EXP0)

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	@Math.abs.WHILE_END0
	D;JNE

//push constant 32767
	@32767
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 1
	@Math1
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push static 1
	@Math1
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_22
	D;JGT
	@FIRST_MINUS_22
	D;JLT
	@SAME_SIGN_22
	0;JMP
(FIRST_PLUS_22)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_22
	D;JLT
	@SAME_SIGN_22
	0;JMP
(DIF_SIGN_LT_22)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_22
	0;JMP
(FIRST_MINUS_22)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_22
	D;JGT
	@SAME_SIGN_22
	0;JMP
(DIF_SIGN_GT_22)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_22
	0;JMP
(SAME_SIGN_22)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_22
	D;JGT
	@LOWER_22
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_22
	0;JMP
(GRATER_22)
	@SP
	A=M-1
	M=0
	@CON_22
	0;JMP
(LOWER_22)
	@SP
	A=M-1
	M=-1
(CON_22)

//pop local 3
	@3
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@Math.abs.IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@Math.abs.IF_FALSE1
	0;JMP

//label IF_TRUE1
(Math.abs.IF_TRUE1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push static 1
	@Math1
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 1
	@Math1
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_23
	D;JGT
	@FIRST_MINUS_23
	D;JLT
	@SAME_SIGN_23
	0;JMP
(FIRST_PLUS_23)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_23
	D;JLT
	@SAME_SIGN_23
	0;JMP
(DIF_SIGN_LT_23)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_23
	0;JMP
(FIRST_MINUS_23)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_23
	D;JGT
	@SAME_SIGN_23
	0;JMP
(DIF_SIGN_GT_23)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_23
	0;JMP
(SAME_SIGN_23)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_23
	D;JGT
	@LOWER_23
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_23
	0;JMP
(GRATER_23)
	@SP
	A=M-1
	M=-1
	@CON_23
	0;JMP
(LOWER_23)
	@SP
	A=M-1
	M=0
(CON_23)

//pop local 3
	@3
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push local 3
	@3
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE2
	@SP
	AM=M-1
	D=M
	@Math.abs.IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@Math.abs.IF_FALSE2
	0;JMP

//label IF_TRUE2
(Math.abs.IF_TRUE2)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE2
(Math.abs.IF_FALSE2)

//label IF_FALSE1
(Math.abs.IF_FALSE1)

//goto WHILE_EXP0
	@Math.abs.WHILE_EXP0
	0;JMP

//label WHILE_END0
(Math.abs.WHILE_END0)

//label WHILE_EXP1
(Math.abs.WHILE_EXP1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//neg
	@SP
	A=M-1
	M=-M

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_24
	D;JGT
	@FIRST_MINUS_24
	D;JLT
	@SAME_SIGN_24
	0;JMP
(FIRST_PLUS_24)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_24
	D;JLT
	@SAME_SIGN_24
	0;JMP
(DIF_SIGN_LT_24)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_24
	0;JMP
(FIRST_MINUS_24)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_24
	D;JGT
	@SAME_SIGN_24
	0;JMP
(DIF_SIGN_GT_24)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_24
	0;JMP
(SAME_SIGN_24)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_24
	D;JGT
	@LOWER_24
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_24
	0;JMP
(GRATER_24)
	@SP
	A=M-1
	M=-1
	@CON_24
	0;JMP
(LOWER_24)
	@SP
	A=M-1
	M=0
(CON_24)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@Math.abs.WHILE_END1
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 1
	@Math1
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_25
	D;JGT
	@FIRST_MINUS_25
	D;JLT
	@SAME_SIGN_25
	0;JMP
(FIRST_PLUS_25)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_25
	D;JLT
	@SAME_SIGN_25
	0;JMP
(DIF_SIGN_LT_25)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_25
	0;JMP
(FIRST_MINUS_25)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_25
	D;JGT
	@SAME_SIGN_25
	0;JMP
(DIF_SIGN_GT_25)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_25
	0;JMP
(SAME_SIGN_25)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_25
	D;JGT
	@LOWER_25
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_25
	0;JMP
(GRATER_25)
	@SP
	A=M-1
	M=-1
	@CON_25
	0;JMP
(LOWER_25)
	@SP
	A=M-1
	M=0
(CON_25)

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@Math.abs.IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@Math.abs.IF_FALSE3
	0;JMP

//label IF_TRUE3
(Math.abs.IF_TRUE3)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Math0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 1
	@Math1
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE3
(Math.abs.IF_FALSE3)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto WHILE_EXP1
	@Math.abs.WHILE_EXP1
	0;JMP

//label WHILE_END1
(Math.abs.WHILE_END1)

//push local 2
	@2
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//if-goto IF_TRUE4
	@SP
	AM=M-1
	D=M
	@Math.abs.IF_TRUE4
	D;JNE

//goto IF_FALSE4
	@Math.abs.IF_FALSE4
	0;JMP

//label IF_TRUE4
(Math.abs.IF_TRUE4)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//neg
	@SP
	A=M-1
	M=-M

//pop local 1
	@1
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE4
(Math.abs.IF_FALSE4)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Math.sqrt 2
(Math.sqrt)
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_26
	D;JGT
	@FIRST_MINUS_26
	D;JLT
	@SAME_SIGN_26
	0;JMP
(FIRST_PLUS_26)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_26
	D;JLT
	@SAME_SIGN_26
	0;JMP
(DIF_SIGN_LT_26)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_26
	0;JMP
(FIRST_MINUS_26)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_26
	D;JGT
	@SAME_SIGN_26
	0;JMP
(DIF_SIGN_GT_26)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_26
	0;JMP
(SAME_SIGN_26)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_26
	D;JGT
	@LOWER_26
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_26
	0;JMP
(GRATER_26)
	@SP
	A=M-1
	M=0
	@CON_26
	0;JMP
(LOWER_26)
	@SP
	A=M-1
	M=-1
(CON_26)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Math.abs.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Math.abs.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Math.abs.IF_TRUE0)

//push constant 4
	@4
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@Sys.error&ret.27
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Sys.error&ret.27)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE0
(Sys.error.IF_FALSE0)

//push constant 7
	@7
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop local 0
	@0
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label WHILE_EXP0
(Sys.error.WHILE_EXP0)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//neg
	@SP
	A=M-1
	M=-M

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_28
	D;JGT
	@FIRST_MINUS_28
	D;JLT
	@SAME_SIGN_28
	0;JMP
(FIRST_PLUS_28)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_28
	D;JLT
	@SAME_SIGN_28
	0;JMP
(DIF_SIGN_LT_28)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_28
	0;JMP
(FIRST_MINUS_28)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_28
	D;JGT
	@SAME_SIGN_28
	0;JMP
(DIF_SIGN_GT_28)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_28
	0;JMP
(SAME_SIGN_28)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_28
	D;JGT
	@LOWER_28
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_28
	0;JMP
(GRATER_28)
	@SP
	A=M-1
	M=-1
	@CON_28
	0;JMP
(LOWER_28)
	@SP
	A=M-1
	M=0
(CON_28)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@Sys.error.WHILE_END0
	D;JNE

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Math0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Math0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Math.multiply 2
	@Math.multiply&ret.29
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@SP
	D=M
	@5
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
(Math.multiply&ret.29)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_30
	D;JGT
	@FIRST_MINUS_30
	D;JLT
	@SAME_SIGN_30
	0;JMP
(FIRST_PLUS_30)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_30
	D;JLT
	@SAME_SIGN_30
	0;JMP
(DIF_SIGN_LT_30)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_30
	0;JMP
(FIRST_MINUS_30)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_30
	D;JGT
	@SAME_SIGN_30
	0;JMP
(DIF_SIGN_GT_30)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_30
	0;JMP
(SAME_SIGN_30)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_30
	D;JGT
	@LOWER_30
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_30
	0;JMP
(GRATER_30)
	@SP
	A=M-1
	M=-1
	@CON_30
	0;JMP
(LOWER_30)
	@SP
	A=M-1
	M=0
(CON_30)

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@Math.multiply.IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@Math.multiply.IF_FALSE1
	0;JMP

//label IF_TRUE1
(Math.multiply.IF_TRUE1)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Math0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE1
(Math.multiply.IF_FALSE1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto WHILE_EXP0
	@Math.multiply.WHILE_EXP0
	0;JMP

//label WHILE_END0
(Math.multiply.WHILE_END0)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
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
	M=M+1
	A=M-1
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_31
	D;JGT
	@FIRST_MINUS_31
	D;JLT
	@SAME_SIGN_31
	0;JMP
(FIRST_PLUS_31)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_31
	D;JLT
	@SAME_SIGN_31
	0;JMP
(DIF_SIGN_LT_31)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_31
	0;JMP
(FIRST_MINUS_31)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_31
	D;JGT
	@SAME_SIGN_31
	0;JMP
(DIF_SIGN_GT_31)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_31
	0;JMP
(SAME_SIGN_31)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_31
	D;JGT
	@LOWER_31
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_31
	0;JMP
(GRATER_31)
	@SP
	A=M-1
	M=-1
	@CON_31
	0;JMP
(LOWER_31)
	@SP
	A=M-1
	M=0
(CON_31)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Math.multiply.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Math.multiply.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Math.multiply.IF_TRUE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE0
(Math.multiply.IF_FALSE0)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
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
	M=M+1
	A=M-1
	M=D

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_32
	D;JGT
	@FIRST_MINUS_32
	D;JLT
	@SAME_SIGN_32
	0;JMP
(FIRST_PLUS_32)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_32
	D;JLT
	@SAME_SIGN_32
	0;JMP
(DIF_SIGN_LT_32)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_32
	0;JMP
(FIRST_MINUS_32)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_32
	D;JGT
	@SAME_SIGN_32
	0;JMP
(DIF_SIGN_GT_32)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_32
	0;JMP
(SAME_SIGN_32)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_32
	D;JGT
	@LOWER_32
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_32
	0;JMP
(GRATER_32)
	@SP
	A=M-1
	M=0
	@CON_32
	0;JMP
(LOWER_32)
	@SP
	A=M-1
	M=-1
(CON_32)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Math.multiply.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Math.multiply.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Math.multiply.IF_TRUE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE0
(Math.multiply.IF_FALSE0)

//push argument 1
	@1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Array.new 0
(Array.new)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_33
	D;JGT
	@FIRST_MINUS_33
	D;JLT
	@SAME_SIGN_33
	0;JMP
(FIRST_PLUS_33)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_33
	D;JLT
	@SAME_SIGN_33
	0;JMP
(DIF_SIGN_LT_33)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_33
	0;JMP
(FIRST_MINUS_33)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_33
	D;JGT
	@SAME_SIGN_33
	0;JMP
(DIF_SIGN_GT_33)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_33
	0;JMP
(SAME_SIGN_33)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_33
	D;JGT
	@LOWER_33
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_33
	0;JMP
(GRATER_33)
	@SP
	A=M-1
	M=-1
	@CON_33
	0;JMP
(LOWER_33)
	@SP
	A=M-1
	M=0
(CON_33)

//not
	@SP
	A=M-1
	M=!M

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Math.multiply.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Math.multiply.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Math.multiply.IF_TRUE0)

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@Sys.error&ret.34
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Sys.error&ret.34)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE0
(Sys.error.IF_FALSE0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Memory.alloc 1
	@Memory.alloc&ret.35
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Memory.alloc&ret.35)

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
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
	M=M+1
	A=M-1
	M=D

//pop pointer 0
	@THIS
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push pointer 0
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Memory.deAlloc 1
	@Memory.deAlloc&ret.36
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Memory.deAlloc&ret.36)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Main.main 0
(Main.main)

//call Stata.init 0
	@Stata.init&ret.37
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Stata.init
	0;JMP
(Stata.init&ret.37)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//call Statb.init 0
	@Statb.init&ret.38
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Statb.init
	0;JMP
(Statb.init&ret.38)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 5
	@5
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Main.f 1
	@Main.f&ret.39
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Main.f
	0;JMP
(Main.f&ret.39)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Main.f 0
(Main.f)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Main.dump 1
	@Main.dump&ret.40
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Main.dump
	0;JMP
(Main.dump&ret.40)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Stata.setVal 1
	@Stata.setVal&ret.41
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Stata.setVal
	0;JMP
(Stata.setVal&ret.41)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//call Statb.setVal 1
	@Statb.setVal&ret.42
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Statb.setVal
	0;JMP
(Statb.setVal&ret.42)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 10
	@10
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Main.dump 1
	@Main.dump&ret.43
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Main.dump
	0;JMP
(Main.dump&ret.43)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Main.dump 3
(Main.dump)
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Stata.getVal 0
	@Stata.getVal&ret.44
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Stata.getVal
	0;JMP
(Stata.getVal&ret.44)

//pop local 0
	@0
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//call Statb.getVal 0
	@Statb.getVal&ret.45
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Statb.getVal
	0;JMP
(Statb.getVal&ret.45)

//pop local 1
	@1
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 5000
	@5000
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//call Memory.poke 2
	@Memory.poke&ret.46
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@SP
	D=M
	@5
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
(Memory.poke&ret.46)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 5001
	@5001
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//call Memory.poke 2
	@Memory.poke&ret.47
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@SP
	D=M
	@5
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
(Memory.poke&ret.47)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Stata.init 0
(Stata.init)

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop static 0
	@Stata0
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Stata.setVal 0
(Stata.setVal)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop static 0
	@Stata0
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Stata.getVal 0
(Stata.getVal)

//push static 0
	@Stata0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Sys.init 0
(Sys.init)

//call Memory.init 0
	@Memory.init&ret.48
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Memory.init
	0;JMP
(Memory.init&ret.48)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//call Math.init 0
	@Math.init&ret.49
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Math.init
	0;JMP
(Math.init&ret.49)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//call Main.main 0
	@Main.main&ret.50
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
	@Main.main
	0;JMP
(Main.main&ret.50)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label WHILE_EXP0
(Main.main.WHILE_EXP0)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	@Main.main.WHILE_END0
	D;JNE

//goto WHILE_EXP0
	@Main.main.WHILE_EXP0
	0;JMP

//label WHILE_END0
(Main.main.WHILE_END0)

//function Sys.halt 0
(Sys.halt)

//label WHILE_EXP0
(Main.main.WHILE_EXP0)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	@Main.main.WHILE_END0
	D;JNE

//goto WHILE_EXP0
	@Main.main.WHILE_EXP0
	0;JMP

//label WHILE_END0
(Main.main.WHILE_END0)

//function Sys.wait 1
(Sys.wait)
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_51
	D;JGT
	@FIRST_MINUS_51
	D;JLT
	@SAME_SIGN_51
	0;JMP
(FIRST_PLUS_51)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_51
	D;JLT
	@SAME_SIGN_51
	0;JMP
(DIF_SIGN_LT_51)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_51
	0;JMP
(FIRST_MINUS_51)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_51
	D;JGT
	@SAME_SIGN_51
	0;JMP
(DIF_SIGN_GT_51)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_51
	0;JMP
(SAME_SIGN_51)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_51
	D;JGT
	@LOWER_51
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_51
	0;JMP
(GRATER_51)
	@SP
	A=M-1
	M=0
	@CON_51
	0;JMP
(LOWER_51)
	@SP
	A=M-1
	M=-1
(CON_51)

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Main.main.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Main.main.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Main.main.IF_TRUE0)

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@Sys.error&ret.52
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Sys.error&ret.52)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE0
(Sys.error.IF_FALSE0)

//label WHILE_EXP0
(Sys.error.WHILE_EXP0)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_53
	D;JGT
	@FIRST_MINUS_53
	D;JLT
	@SAME_SIGN_53
	0;JMP
(FIRST_PLUS_53)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_53
	D;JLT
	@SAME_SIGN_53
	0;JMP
(DIF_SIGN_LT_53)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_53
	0;JMP
(FIRST_MINUS_53)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_53
	D;JGT
	@SAME_SIGN_53
	0;JMP
(DIF_SIGN_GT_53)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_53
	0;JMP
(SAME_SIGN_53)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_53
	D;JGT
	@LOWER_53
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_53
	0;JMP
(GRATER_53)
	@SP
	A=M-1
	M=-1
	@CON_53
	0;JMP
(LOWER_53)
	@SP
	A=M-1
	M=0
(CON_53)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@Sys.error.WHILE_END0
	D;JNE

//push constant 50
	@50
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop local 0
	@0
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label WHILE_EXP1
(Sys.error.WHILE_EXP1)

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//gt
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
	M=-1
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
	M=0
	@CON_54
	0;JMP
(GRATER_54)
	@SP
	A=M-1
	M=-1
	@CON_54
	0;JMP
(LOWER_54)
	@SP
	A=M-1
	M=0
(CON_54)

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END1
	@SP
	AM=M-1
	D=M
	@Sys.error.WHILE_END1
	D;JNE

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto WHILE_EXP1
	@Sys.error.WHILE_EXP1
	0;JMP

//label WHILE_END1
(Sys.error.WHILE_END1)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto WHILE_EXP0
	@Sys.error.WHILE_EXP0
	0;JMP

//label WHILE_END0
(Sys.error.WHILE_END0)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Sys.error 0
(Sys.error)

//label WHILE_EXP0
(Sys.error.WHILE_EXP0)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	@Sys.error.WHILE_END0
	D;JNE

//goto WHILE_EXP0
	@Sys.error.WHILE_EXP0
	0;JMP

//label WHILE_END0
(Sys.error.WHILE_END0)

//function Statb.init 0
(Statb.init)

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop static 0
	@Statb0
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Statb.setVal 0
(Statb.setVal)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop static 0
	@Statb0
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Statb.getVal 0
(Statb.getVal)

//push static 0
	@Statb0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Memory.init 0
(Memory.init)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop static 0
	@Memory0
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 2048
	@2048
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Memory0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 2049
	@2049
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push static 0
	@Memory0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
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
	M=M+1
	A=M-1
	M=D

//push static 0
	@Memory0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
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
	M=M+1
	A=M-1
	M=D

//push static 0
	@Memory0
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Memory.alloc 2
(Memory.alloc)
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Sys.error.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Sys.error.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Sys.error.IF_TRUE0)

//push constant 5
	@5
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@Sys.error&ret.56
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Sys.error&ret.56)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE0
(Sys.error.IF_FALSE0)

//push constant 2048
	@2048
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop local 1
	@1
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label WHILE_EXP0
(Sys.error.WHILE_EXP0)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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

//not
	@SP
	A=M-1
	M=!M

//if-goto WHILE_END0
	@SP
	AM=M-1
	D=M
	@Sys.error.WHILE_END0
	D;JNE

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop local 1
	@1
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto WHILE_EXP0
	@Sys.error.WHILE_EXP0
	0;JMP

//label WHILE_END0
(Sys.error.WHILE_END0)

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@Sys.error.IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@Sys.error.IF_FALSE1
	0;JMP

//label IF_TRUE1
(Sys.error.IF_TRUE1)

//push constant 6
	@6
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@Sys.error&ret.59
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@LCL
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@ARG
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
	@THAT
	D=M
	@SP
	M=M+1
	A=M-1
	M=D
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
(Sys.error&ret.59)

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE1
(Sys.error.IF_FALSE1)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=-1
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
	M=0
	@CON_60
	0;JMP
(GRATER_60)
	@SP
	A=M-1
	M=-1
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
	@Sys.error.IF_TRUE2
	D;JNE

//goto IF_FALSE2
	@Sys.error.IF_FALSE2
	0;JMP

//label IF_TRUE2
(Sys.error.IF_TRUE2)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=0
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
	M=-1
	@CON_61
	0;JMP
(GRATER_61)
	@SP
	A=M-1
	M=0
	@CON_61
	0;JMP
(LOWER_61)
	@SP
	A=M-1
	M=0
(CON_61)

//if-goto IF_TRUE3
	@SP
	AM=M-1
	D=M
	@Sys.error.IF_TRUE3
	D;JNE

//goto IF_FALSE3
	@Sys.error.IF_FALSE3
	0;JMP

//label IF_TRUE3
(Sys.error.IF_TRUE3)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 3
	@3
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto IF_END3
	@Sys.error.IF_END3
	0;JMP

//label IF_FALSE3
(Sys.error.IF_FALSE3)

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 3
	@3
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_END3
(Sys.error.IF_END3)

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_FALSE2
(Sys.error.IF_FALSE2)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

//function Memory.deAlloc 2
(Memory.deAlloc)
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push argument 0
	@0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop local 1
	@1
	D=A
	@LCL
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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

//if-goto IF_TRUE0
	@SP
	AM=M-1
	D=M
	@Sys.error.IF_TRUE0
	D;JNE

//goto IF_FALSE0
	@Sys.error.IF_FALSE0
	0;JMP

//label IF_TRUE0
(Sys.error.IF_TRUE0)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto IF_END0
	@Sys.error.IF_END0
	0;JMP

//label IF_FALSE0
(Sys.error.IF_FALSE0)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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

//if-goto IF_TRUE1
	@SP
	AM=M-1
	D=M
	@Sys.error.IF_TRUE1
	D;JNE

//goto IF_FALSE1
	@Sys.error.IF_FALSE1
	0;JMP

//label IF_TRUE1
(Sys.error.IF_TRUE1)

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//goto IF_END1
	@Sys.error.IF_END1
	0;JMP

//label IF_FALSE1
(Sys.error.IF_FALSE1)

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 0
	@0
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//push local 1
	@1
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push that 0
	@0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop temp 0
	@0
	D=A
	@R5
	A=A+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//pop pointer 1
	@THAT
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push temp 0
	@0
	D=A
	@R5
	A=A+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 0
	@0
	D=A
	@THAT
	A=M+D
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//label IF_END1
(Sys.error.IF_END1)

//label IF_END0
(Sys.error.IF_END0)

//push constant 0
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//return
	@LCL
	D=M
	@R14
	M=D
	@R14
	D=M
	@5
	D=D-A
	A=D
	D=M
	@R15
	M=D
	@SP
	AM=M-1
	D=M
	@ARG
	A=M
	M=D
	@ARG
	D=M
	@SP
	M=D+1
	@R14
	D=M
	@1
	D=D-A
	A=D
	D=M
	@THAT
	M=D
	@R14
	D=M
	@2
	D=D-A
	A=D
	D=M
	@THIS
	M=D
	@R14
	D=M
	@3
	D=D-A
	A=D
	D=M
	@ARG
	M=D
	@R14
	D=M
	@4
	D=D-A
	A=D
	D=M
	@LCL
	M=D
	@R15
	A=M
	0;JMP

