{ isWSL, inputs, ... }:

{ config, lib, pkgs, ... }:


let
  isDarwin = pkgs.stdenv.isDarwin;
  isLinux = pkgs.stdenv.isLinux;

in {

  imports = [
    ./nixvim
    ./git
    ./zellij
    ./zsh
    ./lazygit
  ];
  
 
  programs.starship = {
    enable = true;
  };

  home.stateVersion = "25.11";
}
