.section .text

.global _start

_start:
    MOV R1, #6          ;R1 = 6
    ; R1 = 6 (Decimal) = 0000 0110 (Binary)
    
    LSL R2 R1 #1        ;R2 = R1 shifted left once = R1 * 2^1     ;This shifts the bits of R1 to the left once stores result in R2 which is the same as multiplying by 2 to the 1 power
    ; R2 = 12 (Decimal) = 0000 1100 (Binary)
    
    LSL R3 R2 #3        ;R3 = R2 shifted left three times = R2 * 2^3   ; Shifts bits of R2 left 3 times (AKA multiply by 2 to the power of 3)
    ; R3 = 96 (Decimal) = 0110 0000 (Binary)

    LSR R4 R3 #5        ;R4 = R3 shifted right 5 times = R3 / 2^5      ; Shifts bits of R3 right 5 times (AKA divide by 2 to the power of 5)
    ; R4 = 3 (Decimal) = 0000 0011 (Binary)    
