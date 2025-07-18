{
  programs.nixvim = {
    enable = true;
    
    imports = [
      ./global
      ./plugins
      ./themes
      ./options
      ./lsp
    ];
  };
}
