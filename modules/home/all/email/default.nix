let
  iCloudMailSettings = {
    imap = {
      host = "mail.davelab.nl";
    };
    smtp = {
      host = "mail.davelab.nl";
      port = 587;
      tls.useStartTls = true;
    };
  };
  GmailSettings = {
    imap = {
      host = "imap.gmail.com";
      port = 993;
    };
    smtp = {
      host = "smtp.gmail.com";
      port = 465;
      # tls.useStartTls = true;
    };
  };
in
{
  imports = [
    ./himalaya.nix
    ./thunderbird.nix
  ];
  accounts.email.accounts = {
    "eelco@davelab.nl" = iCloudMailSettings // {
      primary = true;
      realName = "Eelco van Vliet";
      address = "eelco@davelab.nl";
      aliases = [ "eelco@davelab.nl" ];
      userName = "eelco";
      passwordCommand = "op read op://Personal/iCloud-Apple/home-manager";
    };
    "eelcovv@gmail.com" = GmailSettings // {
      realName = "Eelco van Vliet";
      address = "eelcovv@gmail.com";
      userName = "eelcovv@gmail.com";
      passwordCommand = "op read op://Personal/Google-Juspay/home-manager";
    };
  };
}
