#include <stdio.h>
#include <signal.h>
#include <sys/mman.h>


int main () {
    PROT_WRITE
    MAP_ANONYMOUS
    MAP_PRIVATE
    printf ("%ld", sizeof(sigset_t));
}