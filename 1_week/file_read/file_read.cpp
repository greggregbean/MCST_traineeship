#include <stdio.h>

int main() {
    FILE* file = fopen("./file.txt", "r");
    char string [100] = {'\0'};
    fread(string, 100, 100, file);
    printf("%s", string);
}