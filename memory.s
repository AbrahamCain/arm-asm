.section .text

.global _start

_start:
  LDR R0, =0x41414141       ;Put the value "0x41414141" in the literal pool 
  LDR R1, =0x42424242       ;Put the value "0x42424242" in the literal pool 
  PUSH {R0}                 ;Push "0x41414141" to the stack
  PUSH {R1}                 ;Push "0x42424242" to the stack
  LDR R3, [SP]              ;Load the last item on the stack into register R3
  EOR R4, R3, R1            ;XOR R1 with R3 and store it in R4 = 0x42424242 ^ 0x42424242
  STR R4, [SP, #4]          ;Store R4 (0x0) on the stack with 4 bytes
  POP {R5, R6}              ;Pop that value from the stack (0x00000000) and store it in R5 and then pop the next value (0x41414141) and store it in R6
