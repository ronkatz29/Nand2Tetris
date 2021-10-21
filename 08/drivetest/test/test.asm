//Init command
	@256
	D=A
	@SP
	M=D
	@RETURN_ADDRESS_0
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
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@RETURN_ADDRESS_2
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
	M=M+1
	A=M-1
	M=D

//call Memory.alloc 1
	@RETURN_ADDRESS_3
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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//call Memory.deAlloc 1
	@RETURN_ADDRESS_4
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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Main.main 12
(Main.main)
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

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
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

//push constant 2
	@2
	D=A
	@SP
	M=M+1
	A=M-1
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

//push constant 3
	@3
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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

//push constant 4
	@4
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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

//push constant 5
	@5
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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

//push constant 6
	@6
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

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

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//push local 5
	@5
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

//call Math.multiply 2
	@RETURN_ADDRESS_5
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
(RETURN_ADDRESS_5)

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

//call Math.multiply 2
	@RETURN_ADDRESS_6
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
(RETURN_ADDRESS_6)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

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

//push local 5
	@5
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Math.multiply 2
	@RETURN_ADDRESS_7
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
(RETURN_ADDRESS_7)

//add
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M+D

//pop local 7
	@7
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

//push local 5
	@5
	D=A
	@LCL
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

//call Math.divide 2
	@RETURN_ADDRESS_8
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
	@Math.divide
	0;JMP
(RETURN_ADDRESS_8)

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

//call Math.divide 2
	@RETURN_ADDRESS_9
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
	@Math.divide
	0;JMP
(RETURN_ADDRESS_9)

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

//call Math.divide 2
	@RETURN_ADDRESS_10
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
	@Math.divide
	0;JMP
(RETURN_ADDRESS_10)

//pop local 8
	@8
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

//push constant 5000
	@5000
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 6
	@6
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Memory.poke 2
	@RETURN_ADDRESS_11
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

//push constant 5001
	@5001
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//push local 7
	@7
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Memory.poke 2
	@RETURN_ADDRESS_12
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
(RETURN_ADDRESS_12)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
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
	M=M+1
	A=M-1
	M=D

//push local 8
	@8
	D=A
	@LCL
	A=M+D
	D=M
	@SP
	M=M+1
	A=M-1
	M=D

//call Memory.poke 2
	@RETURN_ADDRESS_13
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
(RETURN_ADDRESS_13)

//pop temp 0
	@0
	D=A
	@R5
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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	@RETURN_ADDRESS_14
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
(RETURN_ADDRESS_14)

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
	M=M+1
	A=M-1
	M=D

//call Array.new 1
	@RETURN_ADDRESS_15
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
(RETURN_ADDRESS_15)

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	M=-1
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
	M=0
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
	M=-1
(CON_17)

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	M=-1
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
	M=0
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
	M=0
	@CON_18
	0;JMP
(LOWER_18)
	@SP
	A=M-1
	M=-1
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

//gt
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
	M=0
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
	M=-1
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
	M=-1
	@CON_19
	0;JMP
(LOWER_19)
	@SP
	A=M-1
	M=0
(CON_19)

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
	@FIRST_PLUS_20
	D;JGT
	@FIRST_MINUS_20
	D;JLT
	@SAME_SIGN_20
	0;JMP
(FIRST_PLUS_20)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_20
	D;JLT
	@SAME_SIGN_20
	0;JMP
(DIF_SIGN_LT_20)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_20
	0;JMP
(FIRST_MINUS_20)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_20
	D;JGT
	@SAME_SIGN_20
	0;JMP
(DIF_SIGN_GT_20)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_20
	0;JMP
(SAME_SIGN_20)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_20
	D;JGT
	@LOWER_20
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_20
	0;JMP
(GRATER_20)
	@SP
	A=M-1
	M=-1
	@CON_20
	0;JMP
(LOWER_20)
	@SP
	A=M-1
	M=0
(CON_20)

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
	@FIRST_PLUS_21
	D;JGT
	@FIRST_MINUS_21
	D;JLT
	@SAME_SIGN_21
	0;JMP
(FIRST_PLUS_21)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_21
	D;JLT
	@SAME_SIGN_21
	0;JMP
(DIF_SIGN_LT_21)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_21
	0;JMP
(FIRST_MINUS_21)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_21
	D;JGT
	@SAME_SIGN_21
	0;JMP
(DIF_SIGN_GT_21)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_21
	0;JMP
(SAME_SIGN_21)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_21
	D;JGT
	@LOWER_21
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_21
	0;JMP
(GRATER_21)
	@SP
	A=M-1
	M=0
	@CON_21
	0;JMP
(LOWER_21)
	@SP
	A=M-1
	M=-1
(CON_21)

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
	M=M+1
	A=M-1
	M=D

//call Math.abs 1
	@RETURN_ADDRESS_22
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
(RETURN_ADDRESS_22)

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
	M=M+1
	A=M-1
	M=D

//call Math.abs 1
	@RETURN_ADDRESS_23
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
(RETURN_ADDRESS_23)

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
	M=-1
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
	M=0
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
	M=0
	@CON_24
	0;JMP
(LOWER_24)
	@SP
	A=M-1
	M=-1
(CON_24)

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
	M=M+1
	A=M-1
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
	M=M+1
	A=M-1
	M=D

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
	M=-1
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
	M=0
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
	M=0
	@CON_25
	0;JMP
(LOWER_25)
	@SP
	A=M-1
	M=-1
(CON_25)

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
	M=0
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
	M=-1
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
	M=-1
	@CON_26
	0;JMP
(LOWER_26)
	@SP
	A=M-1
	M=0
(CON_26)

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	M=0
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
	M=-1
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
	M=0
(CON_27)

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
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@RETURN_ADDRESS_28
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
(RETURN_ADDRESS_28)

//pop temp 0
	@0
	D=A
	@R5
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
	@FIRST_PLUS_29
	D;JGT
	@FIRST_MINUS_29
	D;JLT
	@SAME_SIGN_29
	0;JMP
(FIRST_PLUS_29)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_29
	D;JLT
	@SAME_SIGN_29
	0;JMP
(DIF_SIGN_LT_29)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_29
	0;JMP
(FIRST_MINUS_29)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_29
	D;JGT
	@SAME_SIGN_29
	0;JMP
(DIF_SIGN_GT_29)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_29
	0;JMP
(SAME_SIGN_29)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_29
	D;JGT
	@LOWER_29
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_29
	0;JMP
(GRATER_29)
	@SP
	A=M-1
	M=0
	@CON_29
	0;JMP
(LOWER_29)
	@SP
	A=M-1
	M=-1
(CON_29)

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
	@RETURN_ADDRESS_33
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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//call Math.abs 1
	@RETURN_ADDRESS_34
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
(RETURN_ADDRESS_34)

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
	@WHILE_END0
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
	M=M+1
	A=M-1
	M=D

//lt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_35
	D;JGT
	@FIRST_MINUS_35
	D;JLT
	@SAME_SIGN_35
	0;JMP
(FIRST_PLUS_35)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_35
	D;JLT
	@SAME_SIGN_35
	0;JMP
(DIF_SIGN_LT_35)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_35
	0;JMP
(FIRST_MINUS_35)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_35
	D;JGT
	@SAME_SIGN_35
	0;JMP
(DIF_SIGN_GT_35)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_35
	0;JMP
(SAME_SIGN_35)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_35
	D;JGT
	@LOWER_35
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_35
	0;JMP
(GRATER_35)
	@SP
	A=M-1
	M=0
	@CON_35
	0;JMP
(LOWER_35)
	@SP
	A=M-1
	M=-1
(CON_35)

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
	M=M+1
	A=M-1
	M=D

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
	@FIRST_PLUS_36
	D;JGT
	@FIRST_MINUS_36
	D;JLT
	@SAME_SIGN_36
	0;JMP
(FIRST_PLUS_36)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_36
	D;JLT
	@SAME_SIGN_36
	0;JMP
(DIF_SIGN_LT_36)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_36
	0;JMP
(FIRST_MINUS_36)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_36
	D;JGT
	@SAME_SIGN_36
	0;JMP
(DIF_SIGN_GT_36)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_36
	0;JMP
(SAME_SIGN_36)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_36
	D;JGT
	@LOWER_36
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_36
	0;JMP
(GRATER_36)
	@SP
	A=M-1
	M=-1
	@CON_36
	0;JMP
(LOWER_36)
	@SP
	A=M-1
	M=0
(CON_36)

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
	D=A+1
	@SP
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_37
	D;JGT
	@FIRST_MINUS_37
	D;JLT
	@SAME_SIGN_37
	0;JMP
(FIRST_PLUS_37)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_37
	D;JLT
	@SAME_SIGN_37
	0;JMP
(DIF_SIGN_LT_37)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_37
	0;JMP
(FIRST_MINUS_37)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_37
	D;JGT
	@SAME_SIGN_37
	0;JMP
(DIF_SIGN_GT_37)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_37
	0;JMP
(SAME_SIGN_37)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_37
	D;JGT
	@LOWER_37
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_37
	0;JMP
(GRATER_37)
	@SP
	A=M-1
	M=-1
	@CON_37
	0;JMP
(LOWER_37)
	@SP
	A=M-1
	M=0
(CON_37)

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
	@FIRST_PLUS_38
	D;JGT
	@FIRST_MINUS_38
	D;JLT
	@SAME_SIGN_38
	0;JMP
(FIRST_PLUS_38)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_38
	D;JLT
	@SAME_SIGN_38
	0;JMP
(DIF_SIGN_LT_38)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_38
	0;JMP
(FIRST_MINUS_38)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_38
	D;JGT
	@SAME_SIGN_38
	0;JMP
(DIF_SIGN_GT_38)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_38
	0;JMP
(SAME_SIGN_38)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_38
	D;JGT
	@LOWER_38
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_38
	0;JMP
(GRATER_38)
	@SP
	A=M-1
	M=-1
	@CON_38
	0;JMP
(LOWER_38)
	@SP
	A=M-1
	M=0
(CON_38)

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
	D=M
	@LCL
	M=D
	@retaddr
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
	@FIRST_PLUS_39
	D;JGT
	@FIRST_MINUS_39
	D;JLT
	@SAME_SIGN_39
	0;JMP
(FIRST_PLUS_39)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_39
	D;JLT
	@SAME_SIGN_39
	0;JMP
(DIF_SIGN_LT_39)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_39
	0;JMP
(FIRST_MINUS_39)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_39
	D;JGT
	@SAME_SIGN_39
	0;JMP
(DIF_SIGN_GT_39)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_39
	0;JMP
(SAME_SIGN_39)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_39
	D;JGT
	@LOWER_39
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_39
	0;JMP
(GRATER_39)
	@SP
	A=M-1
	M=0
	@CON_39
	0;JMP
(LOWER_39)
	@SP
	A=M-1
	M=-1
(CON_39)

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
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@RETURN_ADDRESS_40
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
(RETURN_ADDRESS_40)

//pop temp 0
	@0
	D=A
	@R5
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
	M=M+1
	A=M-1
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

//label WHILE_EXP0
(WHILE_EXP0)

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
	D=A+1
	@SP
	M=D

//gt
	@SP
	A=M-1
	D=M
	@FIRST_PLUS_41
	D;JGT
	@FIRST_MINUS_41
	D;JLT
	@SAME_SIGN_41
	0;JMP
(FIRST_PLUS_41)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_41
	D;JLT
	@SAME_SIGN_41
	0;JMP
(DIF_SIGN_LT_41)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_41
	0;JMP
(FIRST_MINUS_41)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_41
	D;JGT
	@SAME_SIGN_41
	0;JMP
(DIF_SIGN_GT_41)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_41
	0;JMP
(SAME_SIGN_41)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_41
	D;JGT
	@LOWER_41
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_41
	0;JMP
(GRATER_41)
	@SP
	A=M-1
	M=-1
	@CON_41
	0;JMP
(LOWER_41)
	@SP
	A=M-1
	M=0
(CON_41)

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
	@RETURN_ADDRESS_42
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
(RETURN_ADDRESS_42)

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
	@FIRST_PLUS_43
	D;JGT
	@FIRST_MINUS_43
	D;JLT
	@SAME_SIGN_43
	0;JMP
(FIRST_PLUS_43)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_43
	D;JLT
	@SAME_SIGN_43
	0;JMP
(DIF_SIGN_LT_43)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_43
	0;JMP
(FIRST_MINUS_43)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_43
	D;JGT
	@SAME_SIGN_43
	0;JMP
(DIF_SIGN_GT_43)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_43
	0;JMP
(SAME_SIGN_43)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_43
	D;JGT
	@LOWER_43
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_43
	0;JMP
(GRATER_43)
	@SP
	A=M-1
	M=-1
	@CON_43
	0;JMP
(LOWER_43)
	@SP
	A=M-1
	M=0
(CON_43)

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	@FIRST_PLUS_44
	D;JGT
	@FIRST_MINUS_44
	D;JLT
	@SAME_SIGN_44
	0;JMP
(FIRST_PLUS_44)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_44
	D;JLT
	@SAME_SIGN_44
	0;JMP
(DIF_SIGN_LT_44)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_44
	0;JMP
(FIRST_MINUS_44)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_44
	D;JGT
	@SAME_SIGN_44
	0;JMP
(DIF_SIGN_GT_44)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_44
	0;JMP
(SAME_SIGN_44)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_44
	D;JGT
	@LOWER_44
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_44
	0;JMP
(GRATER_44)
	@SP
	A=M-1
	M=-1
	@CON_44
	0;JMP
(LOWER_44)
	@SP
	A=M-1
	M=0
(CON_44)

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	@FIRST_PLUS_45
	D;JGT
	@FIRST_MINUS_45
	D;JLT
	@SAME_SIGN_45
	0;JMP
(FIRST_PLUS_45)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_45
	D;JLT
	@SAME_SIGN_45
	0;JMP
(DIF_SIGN_LT_45)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_45
	0;JMP
(FIRST_MINUS_45)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_45
	D;JGT
	@SAME_SIGN_45
	0;JMP
(DIF_SIGN_GT_45)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_45
	0;JMP
(SAME_SIGN_45)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_45
	D;JGT
	@LOWER_45
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_45
	0;JMP
(GRATER_45)
	@SP
	A=M-1
	M=0
	@CON_45
	0;JMP
(LOWER_45)
	@SP
	A=M-1
	M=-1
(CON_45)

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
	D=M
	@LCL
	M=D
	@retaddr
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
	@FIRST_PLUS_46
	D;JGT
	@FIRST_MINUS_46
	D;JLT
	@SAME_SIGN_46
	0;JMP
(FIRST_PLUS_46)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_46
	D;JLT
	@SAME_SIGN_46
	0;JMP
(DIF_SIGN_LT_46)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_46
	0;JMP
(FIRST_MINUS_46)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_46
	D;JGT
	@SAME_SIGN_46
	0;JMP
(DIF_SIGN_GT_46)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_46
	0;JMP
(SAME_SIGN_46)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_46
	D;JGT
	@LOWER_46
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_46
	0;JMP
(GRATER_46)
	@SP
	A=M-1
	M=0
	@CON_46
	0;JMP
(LOWER_46)
	@SP
	A=M-1
	M=-1
(CON_46)

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
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@RETURN_ADDRESS_47
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
(RETURN_ADDRESS_47)

//pop temp 0
	@0
	D=A
	@R5
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
	M=M+1
	A=M-1
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

//label WHILE_EXP0
(WHILE_EXP0)

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
	@FIRST_PLUS_48
	D;JGT
	@FIRST_MINUS_48
	D;JLT
	@SAME_SIGN_48
	0;JMP
(FIRST_PLUS_48)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_48
	D;JLT
	@SAME_SIGN_48
	0;JMP
(DIF_SIGN_LT_48)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_48
	0;JMP
(FIRST_MINUS_48)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_48
	D;JGT
	@SAME_SIGN_48
	0;JMP
(DIF_SIGN_GT_48)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_48
	0;JMP
(SAME_SIGN_48)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_48
	D;JGT
	@LOWER_48
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_48
	0;JMP
(GRATER_48)
	@SP
	A=M-1
	M=0
	@CON_48
	0;JMP
(LOWER_48)
	@SP
	A=M-1
	M=-1
(CON_48)

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
	M=M+1
	A=M-1
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

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

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
	@FIRST_PLUS_49
	D;JGT
	@FIRST_MINUS_49
	D;JLT
	@SAME_SIGN_49
	0;JMP
(FIRST_PLUS_49)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_49
	D;JLT
	@SAME_SIGN_49
	0;JMP
(DIF_SIGN_LT_49)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_49
	0;JMP
(FIRST_MINUS_49)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_49
	D;JGT
	@SAME_SIGN_49
	0;JMP
(DIF_SIGN_GT_49)
	@SP
	AM=M-1
	A=A-1
	M=-1
	@CON_49
	0;JMP
(SAME_SIGN_49)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_49
	D;JGT
	@LOWER_49
	D;JLT
	@SP
	A=M-1
	M=0
	@CON_49
	0;JMP
(GRATER_49)
	@SP
	A=M-1
	M=-1
	@CON_49
	0;JMP
(LOWER_49)
	@SP
	A=M-1
	M=0
(CON_49)

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
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@RETURN_ADDRESS_50
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

//label IF_FALSE1
(IF_FALSE1)

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
	M=0
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
	M=-1
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
	M=-1
	@CON_51
	0;JMP
(LOWER_51)
	@SP
	A=M-1
	M=0
(CON_51)

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
	M=M+1
	A=M-1
	M=D

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
	@FIRST_PLUS_52
	D;JGT
	@FIRST_MINUS_52
	D;JLT
	@SAME_SIGN_52
	0;JMP
(FIRST_PLUS_52)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_LT_52
	D;JLT
	@SAME_SIGN_52
	0;JMP
(DIF_SIGN_LT_52)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_52
	0;JMP
(FIRST_MINUS_52)
	@SP
	A=M-1
	A=A-1
	D=M
	@DIF_SIGN_GT_52
	D;JGT
	@SAME_SIGN_52
	0;JMP
(DIF_SIGN_GT_52)
	@SP
	AM=M-1
	A=A-1
	M=0
	@CON_52
	0;JMP
(SAME_SIGN_52)
	@SP
	AM=M-1
	D=M
	A=A-1
	M=M-D
	D=M
	@GRATER_52
	D;JGT
	@LOWER_52
	D;JLT
	@SP
	A=M-1
	M=-1
	@CON_52
	0;JMP
(GRATER_52)
	@SP
	A=M-1
	M=0
	@CON_52
	0;JMP
(LOWER_52)
	@SP
	A=M-1
	M=0
(CON_52)

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//pop temp 0
	@0
	D=A
	@R5
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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
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
	M=M+1
	A=M-1
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
	M=0
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
	M=-1
	@CON_53
	0;JMP
(GRATER_53)
	@SP
	A=M-1
	M=0
	@CON_53
	0;JMP
(LOWER_53)
	@SP
	A=M-1
	M=0
(CON_53)

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

//pop temp 0
	@0
	D=A
	@R5
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
	M=M+1
	A=M-1
	M=D

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Sys.init 0
(Sys.init)

//call Memory.init 0
	@RETURN_ADDRESS_55
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
(RETURN_ADDRESS_55)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Math.init 0
	@RETURN_ADDRESS_56
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
(RETURN_ADDRESS_56)

//pop temp 0
	@0
	D=A
	@R5
	D=A+D
	@addr
	M=D
	@SP
	AM=M-1
	D=M
	@addr
	A=M
	M=D

//call Main.main 0
	@RETURN_ADDRESS_57
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
(RETURN_ADDRESS_57)

//pop temp 0
	@0
	D=A
	@R5
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
	@WHILE_END0
	D;JNE

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

//function Sys.halt 0
(Sys.halt)

//label WHILE_EXP0
(WHILE_EXP0)

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
	@WHILE_END0
	D;JNE

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

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
	M=-1
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
	M=0
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
	M=0
	@CON_58
	0;JMP
(LOWER_58)
	@SP
	A=M-1
	M=-1
(CON_58)

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

//push constant 1
	@1
	D=A
	@SP
	M=M+1
	A=M-1
	M=D

//call Sys.error 1
	@RETURN_ADDRESS_59
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
(RETURN_ADDRESS_59)

//pop temp 0
	@0
	D=A
	@R5
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

//label WHILE_EXP0
(WHILE_EXP0)

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
	M=M+1
	A=M-1
	M=D

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
	D=M
	@SP
	M=D+1
	@endframe
	AM=M-1
	D=M
	@THAT
	M=D
	@endframe
	AM=M-1
	D=M
	@THIS
	M=D
	@endframe
	AM=M-1
	D=M
	@ARG
	M=D
	@endframe
	AM=M-1
	D=M
	@LCL
	M=D
	@retaddr
	A=M
	0;JMP

//function Sys.error 0
(Sys.error)

//label WHILE_EXP0
(WHILE_EXP0)

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
	@WHILE_END0
	D;JNE

//goto WHILE_EXP0
	@WHILE_EXP0
	0;JMP

//label WHILE_END0
(WHILE_END0)

