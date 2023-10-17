.data
    num:    .word   5       
    result: .word   0       

.text
.global _start

_start:
    ldr x0, =num
    ldr x1, [x0]                // carrega o valor de 'num' em 'x1' 
    sub x1, x1, #4              // subtrai 4 de 'result'

    // print result
    mov x0, #1        
    ldr x1, =result             // Endereço do valor a ser impresso
    ldr x2, [x1]                // carrega o valor de memória no registrador x2
    mov x8, #64                 // sys_write
    svc #0                      

    // encerra o programa
    mov x0, #0
    mov x8, #93                 // sys_exit
    svc #0
