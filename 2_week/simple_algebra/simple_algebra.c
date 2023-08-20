#include <stdint.h>

// сложение/вычитание/наложение_маски/исключающее_или/логическое_или 32-/64-битных
// целочисленных значений

int main () {
    uint64_t a = 0xAAAABBBBCCCCDDDDU;
    uint64_t b = 0x1111222233334444U;
    uint64_t res;
    res = a + b;
    res = a - b;
    res = a & b;
    res = a | b;
    res = a ^ b;

    uint32_t c = 0xCCCCDDDDU;
    uint32_t d = 0x11112222U;
    uint32_t res_32;
    res_32 = c + d;
    res_32 = c - d;
    res_32 = c & d;
    res_32 = c | d;
    res_32 = c ^ d; 
}