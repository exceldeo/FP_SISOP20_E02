#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(int argc, char *argv[])
{

    if (argc < 2 && argc > 2)
    {
        printf(2, "Error, wrong arguments.\n");
        exit();
    }
    if (chdir(argv[1]) < 0)
    {
        printf(2, "Error, cannot change the directory\n");
    }
    exit();
}