{ isWSL, inputs, ... }:

{ config, lib, pkgs, ... }:


let
  isDarwin = pkgs.stdenv.isDarwin;
  isLinux = pkgs.stdenv.isLinux;

in {

  imports = [
    ./programs
  ];

  home.packages = [
    pkgs.gcc15
    pkgs.gnumake
    pkgs.gdb
  ];

  programs.starship = {
    enable = true;
  };

  home.stateVersion = "25.11";

  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
