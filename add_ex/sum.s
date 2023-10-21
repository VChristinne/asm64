.text
.global _start
.align 2

_start:
    mov x0, #2                  // first number
    mov x1, #2                  // second number

    bl add_numbers
    bl _printf
    bl _terminate

_printf:
    mov x0, #1                  // stdout
    adr x1, result_string       // endereço da string de resultado
    mov x2, #11                 // string length
    mov x16, #4                 // sys_write
    svc 0                       // syscall
    ret

_terminate:
    mov x0, #0                  
    mov x16, #1            
    svc 0
    ret                  

add_numbers:
    add x0, x0, x1
    ret

result_string: .ascii "Result: %d\n"
