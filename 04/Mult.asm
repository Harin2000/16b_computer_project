// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R2
M=0

@ans
M=0 //ans=0

@i
M=0 //i=0

@R0
D=M 
@m
M=D //m=R0

@R1
D=M
@n
M=D //n=R1

(LOOP)
@i
D=M
@n
D=M-D
@STOP
D;JEQ //stop if n-i==0
@m
D=M
@ans
M=M+D
@i
M=M+1
@LOOP
0;JMP
(STOP)
@ans
D=M
@R2
M=D
(END)
@END
0;JMP
