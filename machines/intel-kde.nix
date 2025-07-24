{ config, pkgs, ... }: {
  imports = [
    ./hardware/intel.nix
    ./vm-shared.nix
    ./desktop/kde
    ./desktop-share.nix
  ];

}
