{ pkgs, inputs, ... }:

{

  users.users.asher = {
    isNormalUser = true;
    home = "/home/asher";
    extraGroups = [ "docker" "lxd" "wheel" ];
    shell = pkgs.zsh;
    hashedPassword = "$y$j9T$AllMcLb69Mw0KWAXPJ6qw/$hwdemTr.m..TtKtEEF5j/zhqZvEP6cdKHUN6KoHO555";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIsWWKlg9qxz5XvroCKBGEm6t6MuzsWIcG9wXwI9kKxG asher"
    ];
  };
}
