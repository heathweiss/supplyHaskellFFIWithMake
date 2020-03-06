with (import <nixpkgs> {});

#build the supply locally, so it can find libfoo.
let
  library =
   stdenv.mkDerivation rec {
    name = "libfoo";
    
    src = ../supply;
    
    
    installPhase = ''
     mkdir -p $out/lib
     mkdir -p $out/include
     
     # the buildPhase has already produced libfoo.a
     #jhw: note that libfoo.a is inside of a result folder in the local directory. Yet it is still found and copied. Strange.
     cp libfoo.a $out/lib
     cp foo.h    $out/include
     
     
    '';
  
  
  };

in
stdenv.mkDerivation {
  name = "bar-0.1";
  src = ./.;
  
  buildInputs = [ library ];
  inherit library;
  buildPhase = ''
    gcc -o bar main.c $library/lib/libfoo.a
  '';
  
  installPhase = ''
    mkdir -p $out/bin
    cp bar $out/bin
  '';
}