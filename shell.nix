with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "foo";
  buildInputs = [ (callPackage ./requirements.nix {}) ];
}
