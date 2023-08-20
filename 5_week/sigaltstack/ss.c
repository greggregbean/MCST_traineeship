// ------------------------------------
// Stdout without signal stack: 
//     Main local:    0x7fff08c54e6c. 
//     Handler local: 0x7fff08c548a4.
//
// Stdout with signal stack:
//     Main local:    0x7ffe1af8a30c. 
//     Handler local: 0x555df50fe164. 
// ------------------------------------

#include <signal.h>
#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include <errno.h>

sig_atomic_t sigusr1_flag = 0;
// volatile -- the variable will be changed from outside my code 
// by some system function that will use simple_handler;
// sig_atomic_t -- assigning a variable will definitely take 1 
// clock cycle and will not be interrupted;

void simple_handler(int signal_number) {
    int handler_local = 52;
    printf("Handler local: %p. \n", &handler_local);

    sigusr1_flag = 1;
}

int main() {
    int main_local = 72;
    printf("Main local:    %p. \n", &main_local);

    // Allocate sig stack
    stack_t sig_stack;
    sig_stack.ss_size = SIGSTKSZ;

    sig_stack.ss_sp = malloc(SIGSTKSZ);
    // if (sig_stack.ss_sp == NULL) {
    //     printf("Failed to allocate memory for sig stack! \n");
    //     return -1;
    // }

    int res_of_sigaltstack = sigaltstack(&sig_stack, NULL);
    // if (res_of_sigaltstack == -1) {
    //     printf ("Fail in sigaltstack() with errno %d: \"%s\"! \n", errno, strerror(errno));
    //     return -1;
    // }

    // Set sigaction for SIGUSR1
    struct sigaction my_sa;
    my_sa.sa_handler = &simple_handler;
    my_sa.sa_flags   = SA_ONSTACK;

    int res_of_sigaction = sigaction(SIGUSR1, &my_sa, NULL);
    // if (res_of_sigaction == -1) {
    //     printf ("Fail in sigaction() with errno %d: \"%s\"! \n", errno, strerror(errno));
    //     return -1;
    // }

    // Catch SIGUSR1
    while(1) {
        if (sigusr1_flag == 1) {
            printf("SIGUSR1 recieved. \n");
            break;
        }
    }
}


