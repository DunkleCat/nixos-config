{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gcc 
    go
    gocode
  ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    deoplete-go
  ];
}
