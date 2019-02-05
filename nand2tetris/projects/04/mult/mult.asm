// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//if R0,R1=0
@R0
D=M
@IF0
D;JEQ

@R1
D=M
@IF0
D;JEQ


@R0
D=M //D=R0
@result
M=D //result=R0
@R1
D=M
@counter
M=D  //counter=R1

(LOOP)
@counter
M=M-1
D=M

@END //if counter=0 goto END
D;JEQ

@R0
D=M
@result
M=M+D //result=result+R0

@LOOP
0;JMP //goto LOOP

(END)
@result
D=M
@R2
M=D  //R2=result

@END
0;JMP

(IF0)
@result
M=0
@END
0;JMP
