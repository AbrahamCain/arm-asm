.section .text
.global _start

_start:
    MOV R1, 3       ; R1 = 3
    B loopBranch    ; Jump into the loop branch
branch1:
    ADD R1, #3      ; R1 = R1 + 3
    B loopBranch    ; Jump back to the beginning of the loopBranch

branch2:
    SUB R1, #1      ; R1 = R1 - 1
    BX LR           ; Jump back to the wherever this function was called

loopBranch:
    CMP R1, #4      ; R1 - 4 and set the C,Z,N,V flags in CSPR
    BLLT branch1    ; if the N flag is set (R1 is less than 4), jump to branch1
    B branch2       ; else, jump to branch2
    TST R1, #4      ; if R1 == 4, set the Z flag, otherwise set N or C flags accordingly
    BEQ endBranch   ; Jump to the endBranch if the zero flag is set
    B loopBranch    ; else, jump back to the beginning of the loop

endBranch:  
    NOP             ; Do nothing