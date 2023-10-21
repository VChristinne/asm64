.data
    num:    .word   5       
    result: .word   0       

.text
.global _start
.align 2

_start:
    mov x0, #1       
    mov x1, #2
    bl _add  
    mov x2, x0
    mov x16, #64             // sys_write
    b _terminate

_add:
    add x0, x0, x1

_terminate:
    mov x0, #0
    mov x16, #1          
    svc 0