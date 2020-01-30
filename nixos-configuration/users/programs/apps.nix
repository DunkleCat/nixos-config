{ pkgs, ... }:

let 
  unstable = import (fetchTarball https://github.com/NixOS/nixpkgs-channels/archive/nixos-unstable.tar.gz) {};
in

{
  home.packages = with pkgs; [
    anki
    discord
    inkscape
    unstable.keepassxc
    libreoffice-fresh
    spotify
    steam
    unstable.tdesktop
    texstudio 
    unetbootin
    # vscode-with-extendions
    vscodium 
    xmind
    dolphinEmuMaster
    pulseeffects
    asciinema

    unstable.etcher

    # Required
    # qt5.full  # Required by texstudio
  ];
}
