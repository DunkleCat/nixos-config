{ config, pkgs, ... }:

let
  unstable = import (fetchTarball https://releases.nixos.org/nixos/unstable/nixos-20.03pre194293.2436c27541b/nixexprs.tar.xz) {};
in

{
  home.packages = with pkgs; [
    unstable.keepassxc
  ];
}
