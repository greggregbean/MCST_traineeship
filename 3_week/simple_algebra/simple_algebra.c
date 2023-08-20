#include <stdint.h>

int main() {
    uint64_t a = 0xAAAABBBBCCCCDDDDU;
    uint64_t b = 0x1111222233334444U;
    
    __asm__
    (   "mov %[a], %%rax;    \n" 
        "mov %[b], %%rdx;    \n" 
        "add %%rdx, %%rax;   \n" 
        "mov %[a], %%rax;    \n"
        "sub %%rdx, %%rax;   \n"
        "mov %[a], %%rax;    \n"
        "and %%rdx, %%rax;   \n"
        "mov %[a], %%rax;    \n"
        "or %%rdx, %%rax;    \n"
        "mov %[a], %%rax;    \n"
        "xor %%rdx, %%rax;   \n"
    :                               
    : [a]"m"(a), [b]"m"(b) 
    : "rax", "rdx"     
    );

    // Another variant:
    __asm__("add %[a], %[b]; \n" : : [a]"a"(a), [b]"b"(b));
    __asm__("sub %[a], %[b]; \n" : : [a]"a"(a), [b]"b"(b));
    __asm__("and %[a], %[b]; \n" : : [a]"a"(a), [b]"b"(b));
    __asm__("or  %[a], %[b]; \n" : : [a]"a"(a), [b]"b"(b));
    __asm__("xor %[a], %[b]; \n" : : [a]"a"(a), [b]"b"(b));
}