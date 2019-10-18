{
  imports = [ 
    
    # If you have one of the standard configuration of this laptops you can use
    # only the relative line. Read them carefully before using one.
    # ./Thinkpad_A485.nix

    # Otherwise select manually every module you need

    # BOOT
    # ./boot/bios.nix
    # ./boot/uefi.nix

    # CPU
    # ./cpu/amd.nix
    # ./cpu/intel.nix

    # LAPTOP EXCLUSIVE FEATURES
    #  Every laptop:
    # ./tlp/service.nix
    #  Newer Thinkpads
    # ./tlp/modules/acpi_call.nix
    #   W/ one battery
    # ./tlp/monoBattery.nix
    #   W/ dual battery
    # ./tlp/dualBattery.nix

    # MISCELLANEOUS
    # ./miscellaneous/bluetooth.nix
    # ./miscellaneous/opengl.nix
    # ./miscellaneous/pulseaudio.nix
    # ./miscellaneous/scanner.nix
  ];
}
