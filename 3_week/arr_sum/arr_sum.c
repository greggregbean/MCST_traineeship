#include <stdint.h>
#include <stdio.h>

int main() {
    int32_t array_a[4] = {0,2,1,2};
    int32_t array_b[4] = {8,5,0,6};

    __asm__(
        "paddd  %[arr_a], %[arr_b];       \n" 
        : [arr_b]"+x"(* (__uint128_t*) array_b)
        : [arr_a]"x" (* (__uint128_t*) array_a)
    );

    for(int i = 0; i < 4; i++) {
        printf("%d ", array_b[i]);
    }
}


