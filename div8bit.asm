; division of 8 bit numbers 

; dividend in A (5001H)
; divisor in B (5000H)
; quotient in 5002H
; remainder in 5003H

MVI C, 00H
LDA 5000H
MOV B, A
LDA 5001H
DIV:
CMP B
JC SKIP
SUB B
INR C
JMP DIV
SKIP:
STA 5003H
MOV A,C 
STA 5002H
HLT
