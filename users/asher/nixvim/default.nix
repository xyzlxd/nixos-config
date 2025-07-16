{
  programs.nixvim = {
    enable = true;
    
    imports = [
      ./global.nix
      ./plugins
      ./themes
    ];
  };
}
