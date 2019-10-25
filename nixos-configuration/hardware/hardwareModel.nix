# For every question, uncomment the line underneath it if the answer is 
# affermative (true). Otherwise (false) leave it commented

{
  imports = [ 
    
    # If you have one of the standard configuration of this laptops you can use
    # only the relative line. Read them carefully before using one.
    # ./Thinkpad_A485.nix

    # Otherwise select manually every module you need

    # BOOT
    # Do you use bios?
    # ./boot/bios.nix
    #
    # Do you use uefi?
    # ./boot/uefi.nix

    # CPU
    # Do you have an AMD cpu?
    # ./cpu/amd.nix
    #
    # Do you have a Intel cpu?
    # ./cpu/intel.nix

    # LAPTOP EXCLUSIVE FEATURES
    # Do you own a laptop that isn't a Thinkpad?
    # ./tlp/service.nix
    # 
    # Do you own a newer (starting from X220/T420 etc) Thinkpad?
    # ./tlp/modules/acpi_call.nix
    # Has your thinkpad only one battery?
    # ./tlp/monoBattery.nix
    # Has your thinkpad two batteries?
    # ./tlp/dualBattery.nix

    # MISCELLANEOUS
    # Do you have bluetooth?
    # ./miscellaneous/bluetooth.nix
    #
    # Do you want OpenGL drivers (usually yes)?
    # ./miscellaneous/opengl.nix
    # 
    # Do you want audio?
    # ./miscellaneous/pulseaudio.nix
    # 
    # Do you have a scanner?
    # ./miscellaneous/scanner.nix
  ];
}
