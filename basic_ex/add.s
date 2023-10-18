.data
    num:    .word   5       
    result: .word   0       

.text
.global _start

_start:
    ldr x1, =num                

    // carrega o valor de 'num' em 'x2' (result)
    ldr x2, [x1]

    // adiciona 1 a 'result'
    add x2, x2, #1

    mov x8, #64          // sys_write
    ldr x3, =1           // stdout
    mov x4, x2           
    svc #0               

    // encerra o programa
    mov x0, #0
    mov x8, #93          
    svc #0
