//function SimpleFunction.test 2
(SimpleFunction.test)
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

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//not
	@SP
	A=M-1
	M=!M

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

