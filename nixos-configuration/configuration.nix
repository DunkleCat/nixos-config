# Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`)

{ config, pkgs, ... }: 

{
  imports = [ 

    ./hardware-configuration.nix

    ./hardware/hardware.nix
    ./system/system.nix 
    ./users/users.nix

    # HOME MANAGER
    "${ builtins.fetchTarball https://github.com/rycee/home-manager/archive/master.tar.gz }/nixos"
  ];

  nixpkgs.config.allowUnfree = true;
}
