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

uint16_t rec_min_search(uint16_t* arr, size_t len) {
        // number of arrays with 8 uin16_t
        size_t parts   = len / 8; 
        // the rest of arr, which contains less then 8 elements
        size_t rest    = len % 8; 
        // length of arrs bellow
        size_t new_len = (rest == 0)? parts : parts + 1; 
        
        // For debugging:
        // printf("P(%ld), R(%ld), NL(%ld). \n", parts, rest, new_len);

        if (parts >= 1) {
            // array for saving position of minimal element in each part     
            uint16_t pos_arr [new_len];
            // array for saving value of minimal element in each part
            uint16_t val_arr [new_len];
            
            // offset in arr for loking through parts
            uint16_t* arr_offset = arr;     
            // array for saving results of phminposuw  
            uint16_t  res_vect [8] =  {'\0'};  

            for(int i = 0; i < parts; i++) {
                __asm__(
                    "phminposuw %[arr_offset], %[res_vect];"
                    : [res_vect]"=x"(res_vect)
                    : [arr_offset]"x"(* (__uint128_t*) arr_offset)
                );

                val_arr[i] = res_vect[0];
                pos_arr[i] = res_vect[1] + i * 8;

                arr_offset += 8;

                // For debugging:
                // printf("String %d: min_el_pos = %d, min_el_val = %d. \n", 
                //                 i,      pos_arr[i],      val_arr[i]);
            } 

            if (rest != 0) {
                pos_arr[parts] = parts * 8 + dumb_min_search(arr_offset, rest);
                val_arr[parts] = arr[pos_arr[parts]];

                // For debugging:
                // printf("String %ld: min_el_pos = %d, min_el_val = %d. \n", 
                //              parts,  pos_arr[parts],  val_arr[parts]);
            }

            return pos_arr[rec_min_search(val_arr, new_len)];;
        }

        else { return dumb_min_search(arr, new_len); }  
}

int main() {
    int len = 530;

    uint16_t test_arr [len];
    uint16_t counter_8 = 1;

    for (int i = 0; i < len; i++, counter_8++) {
        test_arr[i] = rand() % 1000;
        printf("%d ", test_arr[i]);

        if (counter_8 % 8 == 0) printf("\n"); 
    }

    printf("\n");

    int min_el_pos = rec_min_search(test_arr, len);
    printf("Min el pos = %d, val = %d. \n", min_el_pos, test_arr[min_el_pos]);
}