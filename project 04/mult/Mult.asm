// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

//The inputs of this program are the current values stored in R0 and R1 (i.e., the two top RAM
//locations). The program computes the product R0*R1 and stores the result in R2. We assume (in this
//program) that R0>=0, R1>=0, and R0*R1<32768. Your program need not test these conditions, but rather
//assume that they hold. The supplied Mult.tst and Mult.cmp scripts will test your program on several
//representative data values.

@R2
M=0

@R1
D=M

@i
M=D

@END
D;JEQ

(LOOP)
@R0
D=M

@R2
M=D+M

@i
D=M
D=D-1
M=D

@LOOP
D;JGT

(END)
@END
0;JMP