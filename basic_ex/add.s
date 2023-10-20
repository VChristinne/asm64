.data
    num:    .word   5       
    result: .word   0       

.text
.global _start

_start:
    ldr x1, =num                
    ldr x2, [x1]        // carrega o valor de 'num' em 'x2' (result)
    add x2, x2, #1      // adiciona 1 a 'result'

    mov x0, #1
    mov x1, x2           
    mov x2, #4

    mov x8, #64          // sys_write
    svc #0            

    // encerra o programa
    mov x0, #0
    mov x8, #93          
    svc #0
    