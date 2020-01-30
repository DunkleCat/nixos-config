{
  imports = [ ./servers/x.nix ];

  services.xserver = {
    
    enable = true;

    displayManager.lightdm = {
      enable = true;
    };

    desktopManager = {
      default = "xfce";
      xterm.enable = false;
      xfce.enable = true;
    };
  };
}
