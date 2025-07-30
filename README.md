The configuration is written with reference to [mitchellh/nixos-config](https://github.com/mitchellh/nixos-config)

use [disko](https://github.com/nix-community/disko) Declarative disk partitioning and formatting using nix , can use `sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode destroy,format,mount disko/disk-config.nix`
use [nixos-anywhere](https://github.com/nix-community/nixos-anywhere/blob/main/docs/quickstart.md#9-run-it) `nix run github:nix-community/nixos-anywhere -- --flake .#vm-intel --target-host root@192.168.152.141`
