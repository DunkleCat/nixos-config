{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gcc 
    go
    gocode
  ];
}
