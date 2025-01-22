{ pkgs, lib, ... }: {
  environment = {
    localBinInPath = true;
    systemPackages = with pkgs; [
      lshw
      p7zip
      p7zip-rar
    ];
  };
}
