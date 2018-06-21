.text
.global erase_if_found
erase_if_found:
  STMDB SP!, { R4 - R12, LR } 
  mov r2, #0
  mov r3, #0
  ldr r10, =val
  ldrb r10, [r10]

  loop_set:
    ldrb r5, [r1, r3]
    cmp r5, r10
    beq end
    loop_str:
      ldrb r6, [r0, r2]
      cmp r6, r10
      beq end_loop_str
      mov r7, r2
      mov r9, r2
      cmp r5, r6
      beq erease_one
      add r2, r2, #1
      b loop_str
    end_loop_str:
      add r3, r3, #1
      mov r2, #0
      b loop_set
    erease_one:
      add r7, r7, #1
      ldrb r8, [r0, r7]
      strb r8, [r0, r9]
      add r9, r9, #1
      cmp r8, r10
      beq loop_str
      b erease_one
  end:
    LDMIA SP!, { R4 - R12, PC }

.data
  val: .byte 0x00
         