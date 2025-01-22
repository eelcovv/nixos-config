{ pkgs, lib, ... }: {
  environment = {
    localBinInPath = true;
    systemPackages = with pkgs; [
      lshw
    ];
  };
}
