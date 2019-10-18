{ config, pkgs, ... }:

let 
  unstableTarball =
    fetchTarball
      https://github.com/NixOS/nixpkgs-channels/archive/nixos-unstable.tar.gz;
in

let 
  stable1903Tarball =
    fetchTarball
      https://github.com/NixOS/nixpkgs-channels/archive/nixos-19.03.tar.gz;
in

{
  nixpkgs.config = {
    packageOverrides = pkgs: {
      unstable = import unstableTarball {
        config = config.nixpkgs.config;
      };
      stable1903 = import stable1903Tarball {
        config = config.nixpkgs.config;
      };
    };    
  };

  home.packages = with pkgs; [
    
    # CLI
    bash
    zsh

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

    # GUI
    chromium
    discord
    firefox
    unstable.keepassxc
    libreoffice-fresh
    spotify
    steam
    unstable.tdesktop
    unetbootin
  ];
}
