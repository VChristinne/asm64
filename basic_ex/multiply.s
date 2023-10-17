.data
    num:    .word   5       
    result: .word   0       

.text
.global _start

_start:
    // Inicializa 'num' com o valor 5
    ldr x1, =num

    // Carrega o valor de 'num' em 'x2' (result)
    ldr x2, [x1]

    // Multiplica 'result' por 2
    lsl x2, x2, #1  // Multiplica x2 por 2 (deslocamento à esquerda por 1 bit)

    // Imprime o valor de 'result'
    mov x0, #1        // File descriptor 1 (stdout)
    ldr x1, =result   // Endereço do valor a ser impresso
    ldr x2, [x1]      // Carrega o valor de memória no registrador x2
    mov x8, #64       // Número da syscall para sys_write
    svc #0            // Chama a syscall

    // Encerra o programa
    mov x0, #0
    mov x8, #93       // Número da syscall para sys_exit
    svc #0
