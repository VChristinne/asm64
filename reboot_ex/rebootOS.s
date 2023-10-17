.text
.global _main
.align 2

_main:
    b _reboot
    b _terminate

_reboot:
    mov x0, #1      // insta reboot
    mov x16, #55     // reboot
    svc #0          // syscall

_terminate:
    mov x0, #0      // return 0
    mov x16, #1     // sys_exit
    svc #0          // syscall