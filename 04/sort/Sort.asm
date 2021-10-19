// This file is part of nand2tetris, as taught in The Hebrew University,
// and was written by Aviv Yaish, and is published under the Creative 
// Common Attribution-NonCommercial-ShareAlike 3.0 Unported License 
// https://creativecommons.org/licenses/by-nc-sa/3.0/

// An implementation of a sorting algorithm. 
// An array is given in R14 and R15, where R14 contains the start address of the 
// array, and R15 contains the length of the array. 
// You are not allowed to change R14, R15.
// The program should sort the array in-place and in descending order - 
// the largest number at the head of the array.
// You can assume that each array value x is between -16384 < x < 16384.
// You can assume that the address in R14 is at least >= 2048, and that 
// R14 + R15 <= 16383. 
// No other assumptions can be made about the length of the array.
// You can implement any sorting algorithm as long as its runtime complexity is 
// at most C*O(N^2), like bubble-sort. 

// Put your code here.


 
// BubbleSort(Array, n)
// {
//     for i = 0 to n-2
//     {
//         for j = 0 to n-2
//         {
//             if Array[j] > Array[j+1]
//             {
//                 swap(Array[j], Array[j+1])
//             }
//         }
//     }
// }
 

@R14
D=M
@start
M=D

@R15
D=M
@length
M=D

@i
M=0


(BIG_LOOP)
// if i == length go to END 
@i
D=M+1
@length
D=M-D
@END
D;JEQ

//j=-1
@j
M=-1
(SMALL_LOOP)
@j  // J++
M=M+1
//if (length - i - 1  -j) == 0
@length
D=M-1
@i
D=D-M 
@j
D=D-M
@BIG_LOOP_2
D;JEQ


// D = Ram[start+j]
@start
D=M
@j
A=M+D
D=M 

A=A+1 // RAM[START+ J+1]
D=D-M // D =  Ram[start+j] - RAM[START+ J+1] 
@SWAP
D;JLT
@SMALL_LOOP
0;JMP


(BIG_LOOP_2)
// i++
@i
M=M+1
//go to BIG_LOOP
@BIG_LOOP
0;JMP



(SWAP)
@start
D=M
@j
D=D+M
@start_plus_j
M=D 
//temp = Ram[start + j ]
A=M
D=M 
@temp
M=D 

@start_plus_j
A=M+1
D=M 
@start_plus_j
A=M
M=D
@temp
D=M
@start_plus_j
A=M+1
M=D
@SMALL_LOOP
0;JMP




(END)
@END
0;JMP