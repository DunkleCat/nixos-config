{
  _module.args = {
    biosGrubDevice = "/dev/sda";
  };

  imports = [
    ./boot/bios.nix
    ./cpu/intel.nix
    ./laptop/tlp/service.nix
    ./laptop/touchpad.nix
    ./miscellaneous/bluetooth.nix
    ./miscellaneous/opengl.nix
    ./miscellaneous/pulseaudio.nix
    ./miscellaneous/scanner.nix
  ];
}
