build and install a nix c library.


see:
http://mjhoy.com/journal/2016/02/nix.html

I differ from the turorial in that:
-I use: with import <nixpkgs> {}; instead of { stdenv }:
-I use: $ nix-build
 -instead of nix-build '<nixpkgs>' -A libfoo
produces: 
/nix/store/2vbqsw71cvji7m4d65w3rqwvcxrnhkj3-libfoo-0.1
with subdirectories include/foo.h and lib/libfoo.a

At this point:
$ nix-env -q
-does not show a libfoo-0.1

so I deviated from his tutorial with
$ install: nix-env -i -f default.nix
-now $ nix-env -q shows libfoo-0.1