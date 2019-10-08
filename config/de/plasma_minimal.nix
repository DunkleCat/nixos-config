{
  imports = [ ./servers/x.nix ];

  services.xserver = {
    displayManager.sddm.enable = true;
    desktopManager.plasma5.enable = true;
  };
}
