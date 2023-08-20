.section .text

.type new_line, @function
new_line:
    mov $1,   %eax
    mov $1,   %rdi
    mov $msg, %rsi
    mov $1,  %rdx
    syscall
    ret

.global _start
.type _start, @function
_start:
    # Check if argc == 1
    mov (%rsp), %rax
    mov $1, %rbx
    cmp %rax, %rbx
    je exit

    # Offset in r8
    mov $16, %r8

next_arg:
    # Check if arg string addr is not null
    mov (%rsp, %r8), %rsi   
    or  %rsi, %rsi
    je  exit

    # Finding the length of arg string (http://www.int80h.org/strlen/)
    mov %rsi, %rdi
    sub	%ecx, %ecx
    sub	%al,  %al
    not	%ecx
    repne scasb    
    not	%ecx       # now the length in ecx  
    dec %ecx
    mov %ecx, %edx # put the length of string in %edx

    # Calling write
    mov $1, %rdi   # stdout
    mov $1, %eax   # sys_write 
    syscall        # write(stdout, argv[i], length)

    # Go to next arg
    call new_line
    add $8, %r8
    jmp next_arg

exit:
    mov $60,  %rax
    xor %rdi, %rdi
    syscall # == exit(0)
.size _start, . - _start

.section .rodata
.align 0x1000
msg:
    .ascii "\n"
msg_len:
    .quad . - msg



