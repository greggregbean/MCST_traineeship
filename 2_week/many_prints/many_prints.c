#include <stdio.h>

void print1 (char arg1) {
    printf("%c \n", arg1);
}

void print2 (char arg1, char arg2) {
    printf("%c, %c \n", arg1, arg2);
}

void print3 (char arg1, char arg2, char arg3) {
    printf("%c, %c, %c \n", arg1, arg2, arg3);
}

void print4 (char arg1, char arg2, char arg3, char arg4) {
    printf("%c, %c, %c, %c \n", arg1, arg2, arg3, arg4);
}

void print5 (char arg1, char arg2, char arg3, char arg4, char arg5) {
    printf("%c, %c, %c, %c, %c \n", arg1, arg2, arg3, arg4, arg5);
}

void print6 (char arg1, char arg2, char arg3, char arg4, char arg5, char arg6) {
    printf("%c, %c, %c, %c, %c, %c \n", arg1, arg2, arg3, arg4, arg5, arg6);
}

void print7 (char arg1, char arg2, char arg3, char arg4, char arg5, char arg6, char arg7) {
    printf("%c, %c, %c, %c, %c, %c, %c \n", arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}

void print8 (char arg1, char arg2, char arg3, char arg4, char arg5, char arg6, char arg7, char arg8) {
    printf("%c, %c, %c, %c, %c, %c, %c, %c \n", arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}

void print9 (char arg1, char arg2, char arg3, char arg4, char arg5, char arg6, char arg7, char arg8, char arg9) {
    printf("%c, %c, %c, %c, %c, %c, %c, %c, %c \n", arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

void print10 (char arg1, char arg2, char arg3, char arg4, char arg5, char arg6, char arg7, char arg8, char arg9, char arg10) {
    printf("%c, %c, %c, %c, %c, %c, %c, %c, %c, %c \n", arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
}

int main() {
    print1('1');
    print2('1', '2');
    print3('1', '2', '3');
    print4('1', '2', '3', '4');
    print5('1', '2', '3', '4', '5');
    print6('1', '2', '3', '4', '5', '6');
    print7('1', '2', '3', '4', '5', '6', '7');
    print8('1', '2', '3', '4', '5', '6', '7', '8');
    print9('1', '2', '3', '4', '5', '6', '7', '8', '9');
    print10('1', '2', '3', '4', '5', '6', '7', '8', '9', '0' + 10);
}