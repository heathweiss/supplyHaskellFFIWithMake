with import <nixpkgs> {}; stdenv.mkDerivation {
  name = "supplyHaskellFFIMake-0.0.2";
  

  # Source Code
  # See: https://nixos.org/nixpkgs/manual/#ssec-unpack-phase
  src = ./src;

  # Dependencies
  # See: https://nixos.org/nixpkgs/manual/#ssec-stdenv-dependencies
  buildInputs = [ coreutils gcc ];

  # Build Phases
  # See: https://nixos.org/nixpkgs/manual/#sec-stdenv-phases
  configurePhase = ''
    declare -xp
  '';
  buildPhase = ''
    #jhw: because I named the output file the same name as the project, I can call the exe with that name.
    gcc "$src/supplyHaskellFFI.c" -o ./supplyHaskellFFIMake
  '';
  installPhase = ''
    mkdir -p "$out/bin"
    #jhw: copy the executable.
    cp ./supplyHaskellFFIMake "$out/bin/"
  '';
}