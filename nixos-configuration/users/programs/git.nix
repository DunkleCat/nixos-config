{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    git
    smartgithg
    git-cola
  ];

  programs.git = {
    enable = true;
    userName = "dunklecat";
    userEmail = "dunklecat@posteo.eu";
  };
}
