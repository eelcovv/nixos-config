{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lshw
    mesa-demos
    gpuvis
    gpustat
    gpu-burn
    gpu-switch
    nvitop
  ];
}
