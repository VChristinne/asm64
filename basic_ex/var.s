.data
    num: .word 5            // 4 bytes para 'num' e inicializa com 5

.text
.global _start

_start:
    ldr x0, =num            // inicializa 'num' com o valor 5
    ldr x1, [x0]            // print 'num'
    mov x8, #64             // sys_write
    ldr x2, =1              // File descriptor 1 (stdout)
    mov x3, x1              // endereço da string
    mov x4, #1              // comprimento da string
    svc #0                  // syscall
    
    mov x0, #0              // encerra o programa
    mov x8, #93             // sys_exit
    svc #0
