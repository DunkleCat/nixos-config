{ pkgs, config, ... }:

{
  imports = [
    ./dunklecat.nix
    ./guest.nix
  ];
}
