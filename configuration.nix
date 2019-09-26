# Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`)

{ config, pkgs, ... }: 

{
  appstream.enable = true; # https://nixos.org/nixos/options.html#appstream
  security.allowSimultaneousMultithreading = true;

  _module.args = {
    hostName = "nxs";
    lockedDevice = "dev/nvme0n1p2";
  };


  imports = [ 

    # Include the results of the hardware scan.
    ./hardware-configuration.nix

    # BOOT
    ./config/boot/acpi_call.nix
    ./config/boot/luks.nix # Uses lockedDevice
    ./config/boot/systemd-boot.nix
    ./config/boot/tmpOnRAM.nix
     
    # HARDWARE
    ./config/hardware/amd.nix
    ./config/hardware/bluetooth.nix
    ./config/hardware/opengl.nix
    ./config/hardware/pulseaudio.nix
    ./config/hardware/scan.nix

    # INTERFACE
    ./config/services/xserver.nix
    ./config/services/de_gnome.nix

    # KEYMAPS
    ./config/keymaps/it.nix

    # NETWORKING
    ./config/networking/firewall.nix
    ./config/networking/hostname.nix # Uses hostName
    ./config/networking/networkManager.nix

    # PACKAGES
    ./config/packages.nix

    # SERVICES
    ./config/services/avahi.nix
    ./config/services/cups.nix
    ./config/services/docker.nix
    ./config/services/gitea.nix
    # ./config/services/kubernetes.nix
    ./config/services/resolved.nix
    # ./config/services/fingerprint.nix
    ./config/services/openssh.nix
    ./config/services/tlp.nix

    # SYSTEM
    ./config/system.nix

    # TIMEZONE
    ./config/timezones/rome.nix
 
    # USERS
    ./config/users.nix   

    # VIRTUALISATION
    # ./config/virtualisation/docker.nix
    
    # HOME MANAGER
    "${builtins.fetchGit {
      ref = "master";
      url = "https://github.com/rycee/home-manager";
    }}/nixos"
  ];
}