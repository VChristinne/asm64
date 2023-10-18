.data
    operand1:   .word   10      // primeiro operando
    operand2:   .word   5       // segundo operando
    result:     .word   0       // reserva espaço para o resultado

    msg_add:    .asciz  "A soma é: %d\n"
    msg_sub:    .asciz  "A subtração é: %d\n"
    msg_mul:    .asciz  "A multiplicação é: %d\n"
    msg_div:    .asciz  "A divisão é: %d\n"

.text
.global _start

_start:
    // adição
    ldr x1, =operand1
    ldr x2, =operand2
    ldr w3, [x1]
    ldr w4, [x2]
    add w5, w3, w4
    str w5, [x1]
    ldr x0, =msg_add
    bl printf

    // subtração
    ldr x1, =operand1
    ldr x2, =operand2
    ldr w3, [x1]
    ldr w4, [x2]
    sub w5, w3, w4
    str w5, [x1]
    ldr x0, =msg_sub
    bl printf

    // multiplicação
    ldr x1, =operand1
    ldr x2, =operand2
    ldr w3, [x1]
    ldr w4, [x2]
    mul w5, w3, w4
    str w5, [x1]
    ldr x0, =msg_mul
    bl printf

    // divisão
    ldr x1, =operand1
    ldr x2, =operand2
    ldr w3, [x1]
    ldr w4, [x2]
    sdiv w5, w3, w4
    str w5, [x1]
    ldr x0, =msg_div
    bl printf

    // encerra o programa
    mov x0, #0
    mov x8, #93             // sys_exit
    svc #0                  // syscall

printf:
    mov x0, #1              // stdout
    ldr x1, =result         // endereço do resultado
    ldr x2, #4              // comprimento da string (4 caracteres + null terminator)
    mov x8, #64             // sys_write
    svc #0                  // syscall
    ret
