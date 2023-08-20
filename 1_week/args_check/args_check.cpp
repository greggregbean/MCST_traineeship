#include <stdio.h>
#include <string.h>

int main (int argc, char* argv[]) {
    if (argc == 1)
        return 0;
    else if (argc == 2) {
        if (!strcmp(argv[1], "--help")) 
            printf ("Help \n");
        else if (!strcmp(argv[1], "--version"))
            printf ("Version \n");
        else 
            return 2;
        return 0;
    } 
}

