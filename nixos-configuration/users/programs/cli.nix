{ config, pkgs, ... }:

{
  home.packages = with pkgs; [

    # Useful tools
    file
    fzf
    lshw
    lolcat
    mkpasswd
    parted
    pciutils
    udisks
    # udiskie
    # usermount
    # udisks_glue
    usbutils

    tmux
    direnv
  ];
}
