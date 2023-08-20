#include <signal.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>

volatile sig_atomic_t sigusr1_flag = 0;
// volatile -- the variable will be changed from outside my code 
// by some system function that will use simple_handler;
// sig_atomic_t -- assigning a variable will definitely take 1 
// clock cycle and will not be interrupted;

void simple_handler(int signal_number) {
    sigusr1_flag = 1;
}

int main() {
    struct sigaction my_sa;
    my_sa.sa_handler = &simple_handler;

    int res_of_sigaction = sigaction(SIGUSR1, &my_sa, NULL);
    if (res_of_sigaction == -1) {
        printf ("Fail in sigaction() with errno %d: \"%s\"! \n", errno, strerror(errno));
        return -1;
    }

    while(1) {
        if (sigusr1_flag == 1) {
            printf("SIG_USR1\n");
            break;
        }
    }
}
