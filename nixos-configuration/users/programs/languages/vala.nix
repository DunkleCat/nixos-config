{ pkgs, ... }:

{
  home.packages = with pkgs;
  [
    glib
    glibc
    gtk3
    pkg-config
    vala
  ];
}
