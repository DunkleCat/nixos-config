{
  imports = [
    ./boot/uefi.nix 

    ./cpu/amd.nix

    ./laptop/tlp/dualBattery.nix
    ./laptop/touchpad.nix

    ./miscellaneous/bluetooth.nix
    ./miscellaneous/opengl.nix
    ./miscellaneous/pulseaudio.nix
    ./miscellaneous/scanner.nix
  ];
}
