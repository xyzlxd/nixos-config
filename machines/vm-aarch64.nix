{ config, pkgs, ... }: {
  imports = [
    ./hardware/vm-aarch64.nix
    ./vm-shared.nix
  ];

  virtualisation.vmware.guest.enable = true;

}
