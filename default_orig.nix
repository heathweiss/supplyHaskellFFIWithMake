with (import <nixpkgs> {});
derivation {
  name = "supplyHaskellFFIwh";
  version = "0.0.1";
  builder = "${bash}/bin/bash";
  args = [ ./builder.sh ];
  inherit gcc coreutils;
  src = ./supplyHaskellFFI.c;
  system = builtins.currentSystem;
}