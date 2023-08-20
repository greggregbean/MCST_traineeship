int main() {
    long double res;
    __asm__(
        "faddp %[a], %[b];     \n"
        "fstpt %[res];         \n"
        : [res]"=m"(res)
        : [a]"f"(0.000012345), [b]"f"(0.00006789)
    );
}