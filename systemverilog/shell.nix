with import <nixpkgs> {};
mkShell {
  packages = [ verilator gnumake ];
}
