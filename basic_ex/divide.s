.data
    num:    .word   4       
    result: .word   0       

.text
.global _start

_start:
    ldr x1, =num
    ldr x2, [x1]
    sdiv x2, x2, #2  // divide 'result' por 2
  
    mov x0, #1        // stdout
    ldr x1, =result   // endereço do valor a ser impresso
    ldr x2, [x1]      // carrega o valor de memória no registrador x2
    mov x8, #64       // sys_write
    svc #0            

    // encerra o programa
    mov x0, #0
    mov x8, #93       
    svc #0            
