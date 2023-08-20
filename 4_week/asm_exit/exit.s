.section .text
.global _start
.type _start, @function

_start:
    mov $60,  %rax
    xor %rdi, %rdi
    syscall # == exit(0)
.size _start, . - _start