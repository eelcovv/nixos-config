# imported by all users of all systems
let
  hostName = builtins.getEnv "HOST";
  userName = builtins.getEnv "USER";
  isEelco = ((builtins.match ".*eelco.*" userName) != null);
  isTongfang = ((builtins.match ".*tongfang.*" hostName) != null); # userName == "eelco";
in
{

  home.stateVersion = "22.11";
  imports =
    (
      if true then [
        ./profiles/development.nix
        ./profiles/datascience.nix
        ./profiles/engingeering.nix
      ] else [ ]
    )
    ++
    (
      if isTongfang then [
        ./all/ptgui
      ] else [ ]
    )
    ++
    [
      ./profiles/graphics.nix
      ./profiles/internet.nix
      ./profiles/multimedia.nix
      ./profiles/officetools.nix
      ./profiles/publishing.nix
      ./profiles/security.nix
      ./profiles/socialmedia.nix
      ./profiles/systemtools.nix
      ./all/tmux.nix
      ./all/neovim
      # ./helix.nix
      ./all/ssh.nix
      ./all/starship.nix
      ./all/terminal.nix
      ./all/nix.nix
      ./all/git.nix
      ./all/direnv.nix
      ./all/zellij.nix
      # ./nushell.nix
      ./all/just.nix
      ./all/powershell.nix
      ./all/juspay.nix
      # conditional imports

      # Comment out because of annoying password prompts
      # ./all/_1password.nix
    ];

}
