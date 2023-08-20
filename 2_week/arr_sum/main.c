// #include <emmintrin.h>
#include <stdio.h>

int main() {
    int arr1 [5] = {0, 1, 2, 3, 4};
    int arr2 [5] = {5, 6, 7, 8, 9};
    printf("Result = %d \n", arr_sum(arr1, arr2, 5));
}

    //              int32_t array_a[4] = {0,2,1,2}; // 128 bit
    //           int32_t array_b[4] = {8,5,0,6};
    //           int32_t array_c[4];
    
    //           __m128i a,b,c;
    //           a = _mm_loadu_si128((__m128i*)array_a); // loading array_a into register a
    //           b = _mm_loadu_si128((__m128i*)array_b);
    
    //           c = _mm_add_epi32(a, b); // must be { 8,7,1,8 }
    //          _mm_storeu_si128((__m128i*)array_c, c);