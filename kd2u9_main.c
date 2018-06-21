#include <stdio.h>
#include "kd2u9.h"
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#include <errno.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Nepieciesami 2 komandrindas argumenti");
        return 0;
    }

    char *str = strdup(argv[1]);
    char *set = strdup(argv[2]);

    erase_if_found(str, set);
    printf("%s", str);

    return 0;
}