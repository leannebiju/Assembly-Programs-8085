; odd even separation

LXI H, 5000H    ; Load HL with the starting address of the list
INX H           ; Point HL to the first number in the list

LXI D, 4100H    ; Load DE with the starting address for even numbers
LXI B, 4200H    ; Load BC with the starting address for odd numbers

NEXT:
    MOV A, M    ; Load the current number into A
    ANI 01H     ; Check the least significant bit (LSB)
    JZ EVEN     ; If LSB is 0, it is even, jump to EVEN

ODD:
    MOV A, M    ; Load the current number into A
    STAX B      ; Store it in the odd numbers list (address in BC)
    INX B       ; Increment BC to the next odd memory location
    JMP CONTINUE; Jump to CONTINUE

EVEN:
    MOV A, M    ; Load the current number into A
    STAX D      ; Store it in the even numbers list (address in DE)
    INX D       ; Increment DE to the next even memory location

CONTINUE:
    INX H       ; Move to the next number in the list
    INR C       ; INCEREMENT the count
    LDA 5000H
    ADI 01H
    CMP C
    JNZ NEXT    ; Repeat until all numbers are processed

HLT             ; Stop the program
