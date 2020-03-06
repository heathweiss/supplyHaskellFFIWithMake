with import <nixpkgs> {};
 
stdenv.mkDerivation rec {
  name = "libfoo-0.2";
  
  src = ./.;

  
  installPhase = ''
    mkdir -p $out/lib
    mkdir -p $out/include
   
    # the buildPhase has already produced libfoo.a
    #jhw: note that libfoo.a is inside of a result folder in the local directory. Yet it is still found and copied. Strange.
    cp libfoo.a $out/lib
    cp foo.h    $out/include

    mkdir -p $out/bin
    cp libfoo $out/bin
  '';

  
}