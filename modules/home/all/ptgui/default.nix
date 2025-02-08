environment.systemPackages = with pkgs; [
...
(callPackage ./ptgui.nix {src = /var/lib/ptgui/PTGui_Pro_13.0.tar.gz; version = "Pro 13.0"; })
];
