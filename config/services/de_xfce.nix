{
  services.xserver = {

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
