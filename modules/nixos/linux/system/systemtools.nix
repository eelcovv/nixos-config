{ pkgs, lib, ... }: {
  environment = {
    localBinInPath = true;
    systemPackages = with pkgs; [
      lshw
      p7zip
      p7zip-rar
      toybox
      pciutils
      libwebcam
      fswebcam
      asciicam
      htop
      nnn
      bc
      miller
    ];
  };
}
