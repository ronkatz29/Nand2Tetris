//push constant 17
	@17
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 17
	@17
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//eq
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_0
	D;JGT
	@FIRST_MINUS_0
	D;JLT
	@SAME_SIGN_0
	0;JMP
(FIRST_PLUS_0)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_0
	D;JLT
	@SAME_SIGN_0
	0;JMP
(DIF_SIGN_LT_0)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_0
	0;JMP
(FIRST_MINUS_0)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_0
	D;JGT
	@SAME_SIGN_0
	0;JMP
(DIF_SIGN_GT_0)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_0
	0;JMP
(SAME_SIGN_0)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_0
	D;JGT
	@LOWER_0
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_0
	0;JMP
(GRATER_0)
	@SP
	A=M-1
	M=0
	@CON_0
	0;JMP
(LOWER_0)
	@SP
	A=M-1
	M=0
(CON_0)

//push constant 892
	@892
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 891
	@891
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//lt
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
	M=-1
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
	M=0
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
	M=0
	@CON_1
	0;JMP
(LOWER_1)
	@SP
	A=M-1
	M=-1
(CON_1)

//push constant 32767
	@32767
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 32766
	@32766
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_2
	D;JGT
	@FIRST_MINUS_2
	D;JLT
	@SAME_SIGN_2
	0;JMP
(FIRST_PLUS_2)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_2
	D;JLT
	@SAME_SIGN_2
	0;JMP
(DIF_SIGN_LT_2)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_2
	0;JMP
(FIRST_MINUS_2)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_2
	D;JGT
	@SAME_SIGN_2
	0;JMP
(DIF_SIGN_GT_2)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_2
	0;JMP
(SAME_SIGN_2)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_2
	D;JGT
	@LOWER_2
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_2
	0;JMP
(GRATER_2)
	@SP
	A=M-1
	M=-1
	@CON_2
	0;JMP
(LOWER_2)
	@SP
	A=M-1
	M=0
(CON_2)

//push constant 56
	@56
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 31
	@31
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 53
	@53
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

//push constant 112
	@112
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

//push constant 82
	@82
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//or
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M|D

//push constant 100
	@100
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop static 8
	@T28
	D=A
	@R13
	M=D
	@SP
	AM=M-1
	D=M
	@R13
	A=M
	M=D

//push static 8
	@T28
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 3030
	@3030
	D=A
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

//push constant 3040
	@3040
	D=A
	@SP
	M=M+1
	A=M-1
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

//push constant 32
	@32
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop this 2
	@2
	D=A
	@THIS
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

//push constant 46
	@46
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop that 6
	@6
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

//push pointer 0
	@THIS
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push pointer 1
	@THAT
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

//push this 2
	@2
	D=A
	@THIS
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

//push that 6
	@6
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

//push constant 3038
	@3038
	D=A
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

//push constant 15
	@15
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//pop this 2
	@2
	D=A
	@THIS
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

