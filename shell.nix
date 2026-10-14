{ pkgs ? import <nixpkgs> {} }:
let
  fhs = pkgs.buildFHSEnv {
    name = "fedml-containment-zone";
    
    targetPkgs = pkgs: with pkgs; [
      python3
      uv
      stdenv.cc.cc.lib
      zlib
    ];
    
    runScript = "fish";
  };
in fhs.env
