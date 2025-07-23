{ pkgs , ... }:{
  plugins.treesitter = {
    enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      nix
      c
      java
      vim
      regex
      lua
      bash
      markdown
      markdown-inline
    ];

    settings = {
      highlight = {
        enable = true;
      };
      indent.enable = true;
    };
  };

  plugins.treesitter-context = {
    enable = true;
  };
}
