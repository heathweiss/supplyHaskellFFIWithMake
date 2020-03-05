Supply a c library that will be used by a Haskell project to try out the FFI.
The main focus will be on using the gmsh c api from hmesh.

See: https://github.com/zetavg/nix-hello-world

Only supplies an executable. Will not go further, as I want to use cmake, to create both an executable and a library.
Will do that as a separate project.

to build using the default.nix:
$ nix-build 

I installed with nix, as that is how I will use gmsh from hmsh?
to install:
nix-env -i -f default.nix

I named the executable the same as the project so can call it with same name as shows up in nix-env -q

I use gcc calls within the .nix file, instead of using a builder.sh file.


============================================= branches ==========================================
main:
a mixture or files from my first attempt. All mixed up from 2 ways of doing it. Need to clean this up and see what is going on.

proposed: master:working1
build it with the .sh file.
Get rid of anything not needed for this.

proposed: master:working2
Build it with nothing but the .nix file.
Get rid of anything not needed for this.

proposed: master:working3
Build it with a makefile.
Get rid of anything not needed for this.



