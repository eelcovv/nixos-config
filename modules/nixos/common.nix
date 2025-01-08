# Common to Linux & darwin
{
  imports = [
    ./shared/nix.nix
    ./shared/primary-as-admin.nix # !! Required to get admin rights as primary user!
    ./shared/caches.nix
  ];
}
