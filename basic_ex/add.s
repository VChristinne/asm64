.data
    num:    .word   5       
    result: .word   0       

.text
.global _start
.align 2

_start:
    b _add
    b _terminate

_add:
    ldr x1, =num 
    add x2, x2, #1          // adiciona 1 a 'result'
    mov x16, #4             // sys_write
    svc 0            

_terminate:
    mov x0, #0
    mov x16, #1          
    svc 0