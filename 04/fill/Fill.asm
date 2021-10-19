
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.




//Set color to be zero 
@color
M=0


(MAIN)
    //set i == RAM[SCREEN]
    @SCREEN
    D=A
    @i
    M=D
    //check if kbd is pressed or not 
    @KBD
    D=M
    @SET_WHITE
    D;JEQ
    @SET_BLACK
    0;JMP


(SET_BLACK)
    @color//Check what is the current color 
    D=M
    @MAIN
    D;JLT
    
    @color //set color to be black 
    M=-1
    @FILL
    0;JMP

(SET_WHITE)
    @color //Check what is the current color 
    D=M
    @MAIN
    D;JEQ
   
    @color //set color to be white
    M=0
    @FILL
    0;JMP


(FILL)
    // if KBD - I == 0 go to MAIN 
    
    @KBD
    D=A
    @i
    D=D-M
    @MAIN
    D;JEQ
    // Else set Ram[i] == color 
    //          and go to FILL 
    @color
    D=M
    @i
    A=M
    M=D
    //i ++ 
    @i
    M=M+1
    @FILL
    0;JMP


