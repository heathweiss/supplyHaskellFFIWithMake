Create an executable to use the libfoo library.
Is different from consume1 in that it will use a Makefile instead of compiling from inside the default.nix

It is not working yet because the makefile can't find the library.
Need to find a way to supply the library file(s) to the environment from the .nix file, then the makefile can get them from the environment.