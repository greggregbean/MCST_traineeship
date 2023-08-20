.section .text
.global _start
.type _start, @function
_start:
    # Check if argc == 1
    mov (%rsp), %rax
    mov $1, %rbx
    cmp %rax, %rbx
    je error

    # Open file
    mov $2, %rax       # sys_open in rax
    mov 16(%rsp), %rdi # name of file in rdi
    mov $0, %rsi       # read only
    syscall

    # Check if file was opened
    mov %rax, %r8  # r8 will store the fd
    cmp $0, %r8
    jl error

    # Read from file
read_10000:
    mov %r8, %rdi     # fd of file in rdi
    mov $0, %rax      # sys_read in rax
    mov $buf, %rsi    # buf to store the contents in rsi
    mov buf_len, %rdx # number of symbols to read in rdx
    syscall

    # Check if the EOF
    cmp $0, %rax
    je exit 

    # Write to commandline
    mov buf_len, %rdx # number of symbols to write in rdx
    mov $1, %rax      # sys_write in rax
    mov $1, %rdi      # stdout in rdi
    mov $buf, %rsi    # buf to take contents in rsi
    syscall

    jmp read_10000

error:
    mov eror_msg_len, %rdx   
    mov $1, %rax   
    mov $1, %rdi   
    mov $eror_msg, %rsi  
    syscall

exit:
    mov $60,  %rax
    xor %rdi, %rdi
    syscall # == exit(0)

.size _start, . - _start

.section .bss
.align 0x1000
.lcomm buf, 10000

.section .rodata
.align 0x1000
eror_msg: 
    .ascii "The file doesn't exist!!! \n"
eror_msg_len:
    .quad . - eror_msg
buf_len:  
    .quad 10000


