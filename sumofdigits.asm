; sum of digits of a number 

LDA 5000H
ANI 0F0H
RRC
RRC
RRC
RRC
MOV C,A
LDA 5000H
ANI 0FH
ADD C
STA 5001H
HLT
