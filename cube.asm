; cube of a number 

MVI D, 00H
LXI H, 0050H
MOV A, M
CPI 00H
JZ exit
MOV C, A
loop1:
DCR C
JZ skip1
ADD M
JMP loop1
skip1:
MOV C, M
MOV B, A
loop2:
DCR C
JZ exit
ADD B
JNC loop2
INR D
JMP loop2
exit:
STA 0051H
MOV A, D
STA 0052H
HLT
