http://mjhoy.com/journal/2016/02/nix.html

build a c exe that will consume the library created in supply directory.

This is done with nix only, and does not use a makefile.
Will do another version that uses a makefile. see consume2.

Had to build the library supply locally, as otherwise can't find it.
See default.nix for details.