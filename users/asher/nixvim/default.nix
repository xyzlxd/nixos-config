{
  programs.nixvim = {
    enable = true;
    
    imports = [
      ./global.nix
    ];
  };
}
