{ pkgs, ... }:

{
  home.packages = with pkgs; [
    openjdk11
    gradle
    gradle-completion
  ];
}
