{ systemVersion, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [  direnv
     dmidecode
     ed
     file
     fzf
     htop
     killall
     lshw
     lolcat
     mkpasswd
     neofetch
     parted
     pciutils
     tmux
     udisks
     usbutils
     wget    
  ];

  appstream.enable = true;
  security.allowSimultaneousMultithreading = true;

  system = {
    autoUpgrade = {
      channel = "https://nixos.org/channels/nixos-" + systemVersion;
      dates = "daily";
      enable = true;
    };
    stateVersion = systemVersion;
  };

  nix = {
    
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 30d";
    };

    optimise = {
      automatic = true;
      dates = [ "daily" ];
    };

    maxJobs = 4;
  };
}
