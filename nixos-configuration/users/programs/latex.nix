{ pkgs, ... }:

{
  home.packages = with pkgs; [
    stable1903.texstudio
    texlive.combined.scheme-full
  ];
}
