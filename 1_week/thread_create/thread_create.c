#include <pthread.h>
#include <stdio.h>

void* print_xs(void* unseed) {
    int i = 0;
    while (i <= 50) {
        fputc('x', stderr);
        i++;
    }

    return NULL;
}

int main() {
    pthread_t thread_id;
    pthread_create(&thread_id, NULL, &print_xs, NULL);

    int i = 0;
    while (i <= 50) {
        fputc('o', stderr);
        i++;
    }

    return 0;
}