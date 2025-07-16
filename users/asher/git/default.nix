{
  programs.git = {
    enable = true;
    userName = "Asher";
    userEmail = "asher@lxd.xyz";
    # https://blog.gitbutler.com/how-git-core-devs-configure-git/
    extraConfig = {
      column.ui = "auto";
      branch.sort = "-committerdate";
      tag.sort = "version:refname";
      init.defaultBranch = "main";
      diff = {
        algorithm = "histogram";
        colorMoved = "plain";
        mnemonicPrefix = true;
        renames = true;
      };
      push = {
        default = "simple"; # (default since 2.0)
        autoSetupRemote = true;
        followTags = true;
      };
      fetch = {
        prune = true;
        pruneTags = true;
        all = true;
      };

    };
  };
}
