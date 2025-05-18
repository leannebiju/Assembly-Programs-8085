; prime numbers 

lda 5000h
mvi c, 00h
mov e,a 
mov b,a
loop1:
mov d,e
loop2:
cmp d
jc divlt
sub d
jnz loop2
divlt:
cpi 00h
jnz nd
inr c
nd:
mov a,b
dcr e
jnz loop1
mov a,c
mvi c, 00h
cpi 02h
jnz com
inr c
com:
mov a,c
sta 5001h
hlt
