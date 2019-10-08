# Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`)

{ config, pkgs, ... }: 

{
  appstream.enable = true; # https://nixos.org/nixos/options.html#appstream
  security.allowSimultaneousMultithreading = true;

  _module.args = {
    hostName = "nxs";

    luksEnabled = true;
    lockedDevice = "dev/nvme0n1p2";
    
    systemVersion = "19.09";
  };


  imports = [ 

    # Include the results of the hardware scan.
    ./hardware-configuration.nix

    # BOOT
    ./config/crypted/luks.nix     

    # HARDWARE
    ./config/hardware/Thinkpad_A485.nix

    # INTERFACE
    ./config/de/gnome_full.nix

    # KEYMAPS
    ./config/keymaps/it.nix

    # NETWORKING
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

    # SYSTEM
    ./config/system.nix # Uses systemVersion

    # TIMEZONE
    ./config/timezones/rome.nix
 
    # USERS
    ./config/users.nix   

    # VIRTUALISATION
    # ./config/virtualisation/docker.nix
    
    # HOME MANAGER
    "${builtins.fetchTarball https://github.com/rycee/home-manager/archive/master.tar.gz }/nixos"
  ];
}
