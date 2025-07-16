{ pkgs , ... }:{
  plugins.treesitter = {
    enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      nix
      c
      java
    ];

    settings = {
      highlight = {
        enable = true;
      };
    };
  };

  plugins.treesitter-context = {
    enable = true;
  };
}
