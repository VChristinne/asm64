.data
    num:    .word   5       

.text
.global _start

_start:
    mov x1, #5

    // multiplica 'num' por 3
    mov x3, #3
    mul x2, x1, x3

    // encerra o programa
    mov x0, #0
    mov x8, #93      // sys_exit
    svc #0           
