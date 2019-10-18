{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pypy3
  ];
}
