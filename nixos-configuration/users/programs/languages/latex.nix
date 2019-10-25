{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # texlive.combined.scheme-minimal
    # texlive.combined.scheme-basic
    # texlive.combined.scheme-small
    # texlive.combined.scheme-medium
    texlive.combined.scheme-full
  ];

  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      latex-box
      vim-latex-live-preview
    ];
  };
}
