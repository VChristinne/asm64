.text
.global _main
.align 2

_main:
    b _printf
    b _terminate

_printf:
    mov x0, #1              // stdout
    adr x1, helloworld      // address of string
    mov x2, #12             // string length
    mov x16, #4             // write
    svc 0                   // syscall

_terminate:
    mov x0, #0             // return 0
    mov x16, #1            // sys_exit
    svc 0                  // syscall

// hello world string
helloworld: .ascii "hello world\n"