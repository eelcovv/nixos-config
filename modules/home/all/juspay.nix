# For Eelco work
{
  programs.ssh = {
    matchBlocks = {
      # To clone Juspay repos.
      # https://developer.1password.com/docs/ssh/agent/advanced/#match-key-with-host
      "bitbucket.org" = {
        identitiesOnly = true;
        identityFile = "~/.ssh/id_ed25519.pub";
      };
      "ssh.bitbucket.eelcovv.net" = {
        identityFile = "~/.ssh/id_ed25519.pub";
      };
    };
  };

  programs.git = {
    # Bitbucket git access and policies
    includes = [{
      condition = "gitdir:~/eelcovv/**";
      contents = {
        user.email = "eelcovv@gmail.com";
      };
    }];
  };
}
