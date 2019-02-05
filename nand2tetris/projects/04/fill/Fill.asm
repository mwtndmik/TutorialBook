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
(LOOP)
@KBD
D=M
@BLACK
D;JGT

@LOOP
0;JMP


(WHITE)
@counter
M=-1
(WHITELOOP)
@counter
MD=M+1
@SCREEN
AD=A+D
M=!M //SCREEN[counter]=0

@16500
D=D-A
@LOOP //all SCREEN is white
D;JEQ

@WHITELOOP
0;JMP


(BLACK)
@counter
M=-1
(BLACKLOOP)
@counter
MD=M+1
@SCREEN
AD=A+D
M=!M //SCREEN[counter]=1

@16500
D=D-A
@KEYREMOVE //all SCREEN is BLACK
D;JEQ

@BLACKLOOP
0;JMP

(KEYREMOVE)
@KBD
D=M
@WHITE
D;JLT

@KEYREMOVE
0;JMP
