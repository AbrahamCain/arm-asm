.section .text

.global _start

_start:
    MOV R1, #1          ;R1 = 1
    MOV R4, #0x42       ;R4 = 0x42
    MOV R5, R6          ;R5 = R6
    MOV R2, R1, LSL #1  ;R2 = R1 LSL 1 = 2      ;This shifts the bits to the left once 
    MOVEQ R3, R1        ;This will move R1 into R3 if the EQ bit is set in the CPSR register