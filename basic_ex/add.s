.data
    num:    .word   5       // Reserva 4 bytes para 'num' e inicializa com 5
    result: .word   0       // Reserva 4 bytes para 'result', inicializado com 0

.text
.global _start

_start:
    // Inicializa 'num' com o valor 5
    ldr x1, =num

    // Carrega o valor de 'num' em 'x2' (result)
    ldr x2, [x1]

    // Adiciona 1 a 'result'
    add x2, x2, #1

    // Imprime o valor de 'result'
    mov x8, #64          // Número da syscall para sys_write
    ldr x3, =1           // File descriptor 1 (stdout)
    mov x4, x2           // Valor a ser impresso (result)
    svc #0               // Chama a syscall

    // Encerra o programa
    mov x0, #0
    mov x8, #93          // Número da syscall para sys_exit
    svc #0
