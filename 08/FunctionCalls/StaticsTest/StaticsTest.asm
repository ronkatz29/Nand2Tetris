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
//function Class1.set 0
(Class1.set)

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
	@Class10
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

//pop static 1
	@Class11
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

//function Class1.get 0
(Class1.get)

//push static 0
	@Class10
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 1
	@Class11
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

//push constant 6
	@6
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push constant 8
	@8
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Class1.set 2
	@Class1.set&ret.1
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
	@Class1.set
	0;JMP
(Class1.set&ret.1)

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

//push constant 23
	@23
	D=A
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

//call Class2.set 2
	@Class2.set&ret.2
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
	@Class2.set
	0;JMP
(Class2.set&ret.2)

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

//call Class1.get 0
	@Class1.get&ret.3
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
	@Class1.get
	0;JMP
(Class1.get&ret.3)

//call Class2.get 0
	@Class2.get&ret.4
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
	@Class2.get
	0;JMP
(Class2.get&ret.4)

//label WHILE
(Class2.get.WHILE)

//goto WHILE
	@Class2.get.WHILE
	0;JMP

//function Class2.set 0
(Class2.set)

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
	@Class20
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

//pop static 1
	@Class21
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

//function Class2.get 0
(Class2.get)

//push static 0
	@Class20
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//push static 1
	@Class21
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

