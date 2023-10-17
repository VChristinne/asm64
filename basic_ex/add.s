.data
    num:    .word   5       
    result: .word   0       

.text
.global _start

_start:
    ldr x1, =num                // inicializa 'num'
    ldr x2, [x1]                // carrega o valor de 'num' em 'x2' (result)
    add x2, x2, #1              // adiciona 1 a 'result'

    // print 'result'
    mov x8, #64          // ssys_write
    ldr x3, =1           // stdout
    mov x4, x2           // print result
    svc #0               // syscall

    // encerra o programa
    mov x0, #0
    mov x8, #93          // sys_exit
    svc #0
