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
//function Sys.init 0
(Sys.init)

//push constant 4000
	@4000
	D=A
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

//push constant 5000
	@5000
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

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

//call Sys.main 0
	@RETURN_ADDRESS_1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@LCL
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@ARG
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THIS
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@THAT
	D=M
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
	@Sys.main
	0;JMP
(RETURN_ADDRESS_1)

//pop temp 1
	@1
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//label LOOP
(LOOP)

//goto LOOP
	@LOOP
	0;JMP

//function Sys.main 5
(Sys.main)
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

//push constant 4001
	@4001
	D=A
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

//push constant 5001
	@5001
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

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

//push constant 200
	@200
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

//push constant 40
	@40
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

//push constant 6
	@6
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

//push constant 123
	@123
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

//call Sys.add12 1
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
	@Sys.add12
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

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

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

//function Sys.add12 0
(Sys.add12)

//push constant 4002
	@4002
	D=A
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

//push constant 5002
	@5002
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1

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

