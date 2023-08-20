#define _GNU_SOURCE
#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <fcntl.h>
#include <errno.h>
#include <stdio.h>
#include <sys/mman.h>

int main(int argc, char *argv[]) {
//------
// open
//------
    // if ( syscall(SYS_open, "../hello_world/hello_world.cpp",  O_CREAT | O_EXCL) == -1 &&
    //      errno == EEXIST )
    //     printf ("Файл существует"); 
    
    // if ( syscall(SYS_open, "../hello_world/hello_world.cpp",  "trash") == -1 &&
    //      errno == EINVAL )
    //     printf ("Недопустимый аргумент");
    
    // if ( syscall(SYS_open, "../hello_world", O_RDWR) == -1 &&
    //      errno == EISDIR ) 
    //     printf ("Это каталог");

//------
// link
//------
    // if ( syscall(SYS_link, "../hello_world/hello_world.cpp", "../hello_world/hello_world.cpp") == -1 &&
    //      errno == EEXIST)
    //     printf ("Файл существует");
    
    // if ( syscall(SYS_link, "trash", "something") == -1 &&
    //      errno == ENOENT)
    //     printf ("Нет такого файла или каталога");

    // if ( syscall(SYS_link, "../hello_world/hello_world.cpp/trash", "something") == -1 &&
    //      errno == ENOTDIR)
    //     printf ("Это не каталог");

//------
// mmap
//------
    // if ( syscall(SYS_mmap, NULL, 10, PROT_WRITE | PROT_READ, MAP_SHARED, -1, 0) == -1 &&
    //      errno == EBADF)
    //     printf ("Неправильный дескриптор файла");
    
    if ( syscall(SYS_mmap, NULL, 10, PROT_WRITE | PROT_READ, MAP_SHARED, 3, 0) == -1 &&
         errno == ENODEV)
        printf ("Нет такого устройства");
}