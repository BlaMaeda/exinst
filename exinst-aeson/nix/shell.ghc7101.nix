# this file can be used with nix-shell

with (import <nixpkgs> {}).pkgs;
with (import <nixpkgs/pkgs/development/haskell-modules/lib.nix> { inherit pkgs; });

(overrideCabal (import ./build.ghc7101.nix) (drv: {
    buildTools = [
      # add extra stuff to be available on the shell here
    ];
})).env
