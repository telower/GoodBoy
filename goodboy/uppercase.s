@ uppercase.s

/* function to convert a given string to all uppercase */
.global	uppercase
uppercase:
    @ r5 counter
    @ r4
    sub sp,sp, #12
    str lr, [sp]
    str r4, [sp, #4]
    str r5, [sp, #8]
    mov r5, #0
    mov r4, r0
top: 
    ldrb r0, [r4, r5]
    bl toupper 
    strb r0, [r4, r5]
    cmp r0, #0
    beq done
    add r5, r5, #1
    b top
done: 
    ldr lr, [sp]
    ldr r4, [sp, #4]
    ldr r5, [sp, #8]
    add sp ,sp ,#12	
    mov pc, lr 

