{
  programs.git = {
    enable = true;
    # package = pkgs.gitFull;
    extraConfig = {
      core.editor = "hx";
      init.defaultBranch = "main";
    #   user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPSWvSDBzAR7ol5A8Tqp9F3mOvsNSZX8IsK36VS81jpA";
    #   gpg = {
    #     format = "ssh";
    #     "ssh" = {
    #       program = "op-ssh-sign";
    #     };
    #   };
    #   commit.gpgSign = true;
    #  credentials.helper = "${pkgs.gitAndTools.gitFull}/bin/git-credential-libsecret";
    #  credential = {
    #    helper = "cache --timeout=3600";
    #  };
      merge.conflictStyle = "zdiff3";
      branch.sort = "committerdate";
      push.autoSetupRemote = true;
    };
    delta = {
      enable = true;
      options = {
        features = "line-numbers decorations";
      };
    };
    lfs.enable = true;
    ignores = [
      ".direnv/"
      ".devenv/"
      ".venv/"
      ".env"
    ];
  };
}
