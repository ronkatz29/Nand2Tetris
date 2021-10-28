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
//function Main.main 1
(Main.main)
	@0
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 5000
	@5000
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

//push constant 4
	@4
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

