#include <foo.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
    foo("this is a test.");
    printf("The integer is: %d\n", foo());
    return foo();
}
