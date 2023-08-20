#---------------------------------------------
#    TEXT
#---------------------------------------------
.section .text

# Function for printing "\n"
.type new_line, @function
new_line:
    mov $1,   %eax
    mov $1,   %rdi
    mov $msg, %rsi
    mov $1,   %rdx
    syscall
    ret

# Restorer for sigaction
.type restorer, @function
restorer:
    mov $SYS_RT_SIGRETURN, %rax
    syscall 
    ret

# Function for printing xdigit in rax
.type print_xdigit, @function
print_xdigit:
    mov $ascii_string, %rbx
    add %rax,          %rbx
    mov %rbx,          %rsi  
    mov $SYS_WRITE,    %rax  
    mov $STD_OUT,      %rdi 
    mov $1,            %rdx
    syscall
    ret

# Function for printing rps
.type print_rsp, @function
print_rsp:
    mov  %rsp, %r8   # r8  stores the rsp
    movb $60,  %r10b # r10b stores the right shift offset

    print_loop:
        mov  %r8,   %r9
        movb %r10b, %cl # because write syscall changes the rcx
        shr  %cl,   %r9
        and  $0xf,  %r9
        mov  %r9,   %rax
        call print_xdigit
        sub  $0x4,  %r10b
    jge print_loop

    call new_line

    ret

# Simple handler function
.type simple_handler, @function
simple_handler:
    call print_rsp
    movq  $1, (sigusr1_flag)
    ret

# --- START ----
.global _start
.type _start, @function
_start:
    # Print rsp in main
    call print_rsp

    sigaltstack:
    # ss_info
    sub  $0x18,          %rsp    # 0x18 is the size of struct ss_info
    movq $0x0,          (%rsp)
    movq $0x0,         8(%rsp)
    movq $0x0,        16(%rsp)
    movq $ss_mem,       (%rsp)   
    movq $SIGSTKSZ,   16(%rsp) 

    mov  %rsp,             %rdi  # &sig_stack         -> rdi
    mov  $0,               %rsi  # NULL               -> rsi
    mov  $SYS_SIGALTSTACK, %rax  # sigaltstack number -> rax
    syscall

    cmp $0, %rax
    jl  error

    sigaction:
    # struct sigaction
    sub  $0x20, %rsp             # 0x20 is the size of struct sigaction
    movq $0x0,            (%rsp)
    movq $0x0,           8(%rsp)
    movq $0x0,          16(%rsp)
    movq $0x0,          24(%rsp)
    movq $simple_handler, (%rsp) 
    movq $SA_ONSTACK,    8(%rsp)
    addq $SA_RESTORER,   8(%rsp)
    movq $restorer,     16(%rsp)

    mov $SIGUSR1,          %rdi  # SIGUSR1 -> rdi
    mov %rsp,              %rsi  # &my_sa  -> rsi
    mov $0,                %rdx  # NULL    -> rdx
    mov $SIZE_OF_SIGSET_T, %r10  # implementation feature
    mov $SYS_RT_SIGACTION, %rax  # sigaction number -> rax
    syscall

    cmp $0, %rax
    jl  error

    loop:
        cmpq $1, (sigusr1_flag)
    jne loop

    jmp exit
    
error:
    mov eror_msg_len, %rdx   
    mov $1, %rax   
    mov $1, %rdi   
    mov $eror_msg, %rsi  
    syscall

exit:
    mov $60,  %rax
    xor %rdi, %rdi
    syscall 

.size _start, . - _start

#---------------------------------------------
#    DATA
#---------------------------------------------
.section .data
.align 0x1000
.global sigusr1_flag
sigusr1_flag:
    .quad 0

#---------------------------------------------
#   RODATA
#---------------------------------------------
.section .rodata
.align 0x1000

# --- Some useful defines ---
.equ SYS_WRITE,         0x1
.equ STD_OUT,           0x1

.equ SYS_SIGALTSTACK, 	0x83
.equ SIGSTKSZ,          0x2000

.equ SYS_RT_SIGACTION,  0xd
.equ SIGUSR1,           0xa
.equ SIZE_OF_SIGSET_T,  0x8
.equ SYS_RT_SIGRETURN,  0x0f
.equ SA_RESTORER,       0x04000000
.equ SA_ONSTACK,        0x08000000

# --- Rodata for errors ---
eror_msg: 
    .asciz "ERROR!!! \n"
eror_msg_len:
    .quad . - eror_msg

# --- Rodata for new_line function ---
msg:
    .asciz "\n"
msg_len:
    .quad . - msg

# --- Rodata for print_xdigit function ---    
ascii_string:
    .asciz "0123456789abcdef" 

#---------------------------------------------
#    BSS
#---------------------------------------------
.section .bss
.align 0x1000
.lcomm ss_mem, SIGSTKSZ 




