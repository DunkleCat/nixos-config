{ pkgs, ... }:

let
  nur-no-pkgs = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
    inherit pkgs;
  };
in 

{
  programs.firefox = {
    enable = true;
    extensions = with nur-no-pkgs.repos.rycee.firefox-addons; [
      cookie-autodelete
      decentraleyes
      # disconnect
      facebook-container
      # google-no-tracking-url
      https-everywhere
      # i-dont-care-about-cookies
      # keepassxc-browser
      # lightbeam
      multi-account-containers
      privacy-badger
      # temporary-containers
      ublock-origin
      # video-resumer
    ];
  };
}
