.section .text

.global _start

_start:
  MOV R1, #0xde
  MOV R2, #0xad
  MOV R3, #0xbe
  MOV R4, #0xef
  MOV R5, #0xca
  MOV R6, #0xfe
  STMDB SP!, {R1, R2, R3, R4, R5, R6}
  POP {R8}
  LDMIB SP, {R9, R10}
  LDMIA SP, {R1, R2}
  LDMIA SP!, {R3, R4}
  NOP
  NOP
