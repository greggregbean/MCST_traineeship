#include <stdio.h>
#include <stdint.h>

int dumb_min_search(uint16_t* arr, int len) {
    uint16_t min_el   = arr[0];
    size_t min_el_pos = 0;

    for (int i = 0; i < len; i++) {
        if (arr[i] < min_el) {
            min_el = arr[i];
            min_el_pos = i;
        }
    }

    return min_el_pos;
}

uint16_t min_search(uint16_t* arr, size_t len) {
    if (len < 8) {
        return dumb_min_search(arr, len);
    }

    else {
        size_t steps = len/8;

        // Step 0
        uint16_t res_vect [8] = {'\0'};

        __asm__(
            "phminposuw %[arr], %[res_vect];"
            : [res_vect]"=x"(res_vect)
            : [arr]"x"(* (__uint128_t*) arr)
        );

        uint16_t min_el     = res_vect[0];
        uint16_t min_el_pos = res_vect[1];
        
        uint16_t* arr_offset;

        // Other steps (if neccessary):
        for (int step = 1; step < steps; step++) {
            arr_offset = arr + 8*step;

            __asm__(
                "phminposuw %[arr_offset], %[res_vect];"
                : [res_vect]"=x"(res_vect)
                : [arr_offset]"x"(* (__uint128_t*) arr_offset)
            );

            if(res_vect[0] < min_el) {
                min_el     = res_vect[0];
                min_el_pos = res_vect[1] + step * 8;
            }
        }

        for (int i = steps * 8; i < len; i++) {
            if(arr[i] < min_el) {
                min_el     = arr[i];
                min_el_pos = i;
            }
        }

        return min_el_pos;
    }
}

int main() {
    uint16_t test_arr [100] = {2,  5,  1, 345,   78,   1,  23,  5,
                               2, 45,    3,   7,   23,   9,  10,  2,
                               24, 5,   23, 323, 323,  34,  34, 342,
                               0,  0};
    int min_el_pos = min_search(test_arr, 26);
    printf("Min el pos = %d, val = %d. \n", min_el_pos, test_arr[min_el_pos]);
}