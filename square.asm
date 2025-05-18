; square of a number 

MVI D, 00H
LXI H, 0050H
MOV A, M
CPI 00H
JZ exit
MOV C, A
loop1:
DCR C
JZ exit
ADD M
JNC loop1
INR D
JMP loop1
exit:
STA 0051H
MOV A, D
STA 0052H
HLT
