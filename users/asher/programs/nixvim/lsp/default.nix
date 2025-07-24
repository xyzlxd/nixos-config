{
  lsp = {
    servers = import ./servers;
  };

  imports = [
    ../plugins/lspconfig
    ../plugins/blink-cmp
  ];
}
