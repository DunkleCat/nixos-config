{ pkgs, config, ... }:

let
  unstableTarball =
    fetchTarball
      https://github.com/NixOS/nixpkgs-channels/archive/nixos-unstable.tar.gz;
in

{
  nixpkgs.config = {
    packageOverrides = pkgs: {
      unstable = import unstableTarball {
        config = config.nixpkgs.config;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    
    zsh
    bash

    lshw
    pciutils
    usbutils

    udisks
    # udiskie
    # usermount
    # udisks_glue

    git
    #  smartgithg
    git-cola

    vim
    neovim
    tmux

    fortune 

    mkpasswd
    openssh
    direnv

    # KUBERNETES
    # flannel
    # kail
    # kompose
    # kontemplate
    # kube-prompt
    # kube-router
    # kubecfg
    # kubectl
    # kubernetes
    # kubeval
    # minikube

    ######

    # DOCKER

    # docker-distribution
    # docker
    # docker-compose
    # docker-gc
    # docker-ls
    # docker-proxy
    # docker-sync

    ######

    # PLASMA SUITE
    # akonadi
    mpv
    # okular 
    # kmail
    # kdeApplications.kio-extras
    # kdeconnect
    
    ######

    # GNOME SUITE
    # adwaita-qt
    # evince

    # gnome3.dconf
    # gnome3.dconf-editor
    # gnome3.evolution
    # gnome3.file-roller
    # gnome3.gnome-calendar
    # gnome3.gnome-contacts
    # gnome3.gnome-keyring
    # gnome3.gnome-screenshot
    # gnome3.polari
    # gnome3.pomodoro
    # gnome3.gnome-todo
    # gnome3.simple-scan

    # gnome-builder

    # gnome-mpv 
    # gnome3.gnome-tweak-tool

    # gnomeExtensions.gsconnect
    # gnomeExtensions.timepp

    ######


    # HASKELL
    
    ghc

    ######

    firefox
    chromium
    unstable.keepassxc
    # thunderbird
    # unstable.rednotebook
    # kanboard 

    libreoffice-fresh

    mpv
    pavucontrol

    unstable.tdesktop
    steam
    # (steam.override { nativeOnly = true; })
    spotify
    discord

    # Programmazione
    # ocmal
    ocaml
    ocamlPackages.merlin

    texstudio
    texlive.combined.scheme-full

    xwayland

    unetbootin

    parted
  ];

  nixpkgs.config.allowUnfree = true;
}
