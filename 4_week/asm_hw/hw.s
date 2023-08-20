.section .text
.global _start
.type _start, @function

_start:
    mov $1,   %eax
    mov $1,   %rdi
    mov $msg, %rsi
    mov msg_len,  %rdx
    syscall # == write(stdout, msg, 14)

    mov $60,  %rax
    xor %rdi, %rdi
    syscall # == exit(0)
.size _start, . - _start

.section .rodata
.align 0x1000
msg:
    .ascii "Hello world! \n"
msg_len:
    .quad . - msg
