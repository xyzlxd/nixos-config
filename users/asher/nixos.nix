{ pkgs, inputs, ... }:

{
  programs.zsh.enable = true;

  users.users.asher = {
    isNormalUser = true;
    home = "/home/asher";
    extraGroups = [ "docker" "lxd" "wheel" ];
    shell = pkgs.zsh;
    hashedPassword = "$y$j9T$q/XzGEVfRsT8CnDA2FGCK/$a6ba6TCNR7SfuIsqahpPo/uz8NTf1SybWSu8KEqAmR0";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIsWWKlg9qxz5XvroCKBGEm6t6MuzsWIcG9wXwI9kKxG asher"
    ];
  };
}
