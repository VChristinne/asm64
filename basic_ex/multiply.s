.data
    num:    .word   5       
    result: .word   0       

.text
.global _start

_start:
    ldr x1, =num
    ldr x2, [x1]

    // Multiplica 'result' por 2
    lsl x2, x2, #1  // Multiplica x2 por 2 (deslocamento à esquerda por 1 bit)

    // print result
    mov x0, #1        
    ldr x1, =result             // endereço do valor a ser impresso
    ldr x2, [x1]                // carrega o valor de memória no registrador x2
    mov x8, #64                 // sys_write
    svc #0                      

    // exit
    mov x0, #0
    mov x8, #93                 
    svc #0
