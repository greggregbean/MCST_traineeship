#include <stdint.h>
#include <string.h>
#include <stdio.h>

int new_min_search(uint16_t* arr, size_t len) {
    // the position of minimal element in array
    size_t min_pos = 0;
    // array for search for min element
    uint16_t search_arr[8];
    // vector for results of phminposuw
    uint16_t res_vect[8];

    if (len < 8) {
        memcpy(search_arr, arr, len * 2);
        for (int i = len; i < 8; i++) {
            search_arr[i] = 0xFFFFU;
        }
    } 
    else { memcpy(search_arr, arr, 8 * 2); }

    __asm__(
        "phminposuw %[search_arr], %[res_vect];"
        : [res_vect]"=x"(res_vect)
        : [search_arr]"x"(* (__uint128_t*) search_arr)
    );

    min_pos       = res_vect[1];
    search_arr[0] = res_vect[0];

    int       new_len    = len - 8;
    uint16_t* arr_offset = arr + 8;

    while (new_len > 0) {
        if (new_len < 8) { 
            memcpy(search_arr + 1, arr_offset, new_len * 2);
            for (int i = new_len + 1; i < 8; i++) {
                search_arr[i] = 0xFFFFU;
            }
        }
        else { memcpy(search_arr + 1, arr_offset, 7 * 2); }

        __asm__(
            "phminposuw %[search_arr], %[res_vect];"
            : [res_vect]"=x"(res_vect)
            : [search_arr]"x"(* (__uint128_t*) search_arr)
        );

        if (res_vect[0] < search_arr[0]) {
            search_arr[0] = res_vect[0];
            min_pos = res_vect[1] + len - new_len - 1;
        }

        new_len    -= 7;
        arr_offset += 7; 
    }
    
    return min_pos;
}

int main() {
    uint16_t test_arr [100] = {2,  5,    1, 345,   2,   1,  23,  5,
                               2, 45,    3,   7,   23,   9,  10,  2,
                               24, 5,   23, 323, 323,  34,  34, 342,
                               0,  0};
    int min_el_pos = new_min_search(test_arr, 26);
    printf("Min el pos = %d, val = %d. \n", min_el_pos, test_arr[min_el_pos]);
}