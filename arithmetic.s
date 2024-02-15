.section .text

.global _start

_start:
    MOV R0, #24         ; R0 = 24
    MOV R1, #7          ; R1 = 7
    ADD R2, R1, R0      ; R2 = R1 + R0 = 31
    ADD R3, R0, 0x18    ; R3 = R0 + 0x18 = 48
    SUB R4, R3, R0      ; R4 = R3 - R0 = 24
    MUL R5, R4, #2      ; R5 = R4 x 2 = 48
