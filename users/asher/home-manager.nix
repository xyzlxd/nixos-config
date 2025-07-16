{ isWSL, inputs, ... }:

{ config, lib, pkgs, ... }:


let
  isDarwin = pkgs.stdenv.isDarwin;
  isLinux = pkgs.stdenv.isLinux;

in {

  imports = [
    ./nixvim
  ];
  
  programs.zsh = {
    enable = true;
    syntaxHighlighting = {
      enable = true;
    };
    autosuggestion = {
      enable = true;
    };
  };
  
  programs.starship = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName = "Asher";
    userEmail = "asher@lxd.xyz";
  };

  home.stateVersion = "25.11";
}
