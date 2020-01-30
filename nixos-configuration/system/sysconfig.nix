{ systemVersion, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [  direnv
     dmidecode
     ed
     file
     fzf
     htop
     inxi
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

     gparted
  ];

  appstream.enable = true;
  security.allowSimultaneousMultithreading = true;
}
