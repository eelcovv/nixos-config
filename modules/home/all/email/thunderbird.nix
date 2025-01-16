{ pkgs, ... }:
{
  programs.thunderbird = {
    enable = true;

    # Thunderbird package is unavailable for Darwin.
    # Install the app manually.
    package = pkgs.hello;

    profiles."default" = {
      isDefault = true;
    };
  };

  accounts.email.accounts = {
    "eelco@davelab.nl".thunderbird = {
      enable = true;
    };
    "eelcovv@gmail.com".thunderbird = {
      enable = true;
    };
  };
}
