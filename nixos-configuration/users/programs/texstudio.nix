{ pkgs, ... }:

{
  home.packages = with pkgs; [
    texstudio
    qt5.full
  ];
}
