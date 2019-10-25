{ pkgs, ... }:

{
  home.packages = with pkgs; [
    unetbootin
  ];
}
