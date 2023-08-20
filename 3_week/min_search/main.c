#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

int main() {
    uint16_t test_arr [8] = {0, 1, 2, 3, 4, 5, 6, 7};
    uint16_t* res_vect = min_search(test_arr, 8);
    printf("Min element is arr[%d] = %d. \n", res_vect[0], res_vect[1]);
}