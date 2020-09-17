#include <HsFFI.h>
#include "Lib_stub.h"

#include <stdio.h>

int main(int argc, char *argv[])
{
    hs_init(&argc, &argv);

    printf("Hello from C!\n");
    helloHaskell();

    hs_exit();
    return 0;
}
