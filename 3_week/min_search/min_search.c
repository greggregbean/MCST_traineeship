#include <stdint.h>
#include <malloc.h>

uint16_t* min_search(uint16_t* arr, int len) {
    uint16_t min_el = arr[0];
    uint16_t  min_el_pos = 0;

    uint16_t* res_vect = (uint16_t*) calloc(8, 2);

    for (int i = 0; i < len; i++) {
        if (arr[i] < min_el) {
            min_el = arr[i];
            min_el_pos = i;
        }
    }

    return res_vect;
}
