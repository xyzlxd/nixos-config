{ isWSL, inputs, ... }:

{ config, lib, pkgs, ... }:


let
  isDarwin = pkgs.stdenv.isDarwin;
  isLinux = pkgs.stdenv.isLinux;

in {

  imports = [
    ./nixvim
    ./git
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

  home.stateVersion = "25.11";
}
