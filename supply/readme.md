build and install a nix c library.


see:
http://mjhoy.com/journal/2016/02/nix.html

I differ from the turorial in that:
-I use: with import <nixpkgs> {}; instead of { stdenv }:
-I use: $ nix-build
 -instead of nix-build '<nixpkgs>' -A libfoo

Installing it with 
$ install: nix-env -i -f default.nix
does not allow it to be found in the c exe project that uses the library.
Instead I need to build it at the same time in the .nix file, so the consuming exe can reference it via a variable. See ../consume<1,2>

mkDerivation:
Uses MakeFile
Copies the libfoo.a to $out/lib folder
Copies the foo.h to the $out/include folder.