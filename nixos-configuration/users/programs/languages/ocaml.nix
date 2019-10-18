{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ocaml
    ocamlPackages.merlin
  ];
}
