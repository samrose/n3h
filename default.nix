# This file has been generated by node2nix 1.6.0. Do not edit!

{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, nodejs ? pkgs."nodejs-8_x"}:

let
  globalBuildInputs = pkgs.lib.attrValues (import ./supplement.nix {
    inherit nodeEnv;
    inherit (pkgs) fetchurl fetchgit;
  });
  nodeEnv = import ./node-env.nix {
    inherit (pkgs)  python2 utillinux runCommand writeTextFile; 
    stdenv = pkgs.clangStdenv;
    inherit nodejs;
    libtool = if pkgs.stdenv.isDarwin then pkgs.darwin.cctools else null;
  };
in
import ./node-packages.nix {
  inherit (pkgs) fetchurl fetchgit;
  inherit nodeEnv globalBuildInputs;
}
