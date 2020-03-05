#include <stdio.h>
#include <stdlib.h>

char *say_hello() { return "Hello, I made this with direct gcc calls in default.nix! Note how exe is same as project name now"; }

int main() {
  printf("%s\n", say_hello());
  return EXIT_SUCCESS;
}
