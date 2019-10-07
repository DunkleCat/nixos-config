{
  services.xserver = {

    displayManager.gdm = {
      enable = true;
      wayland = false;
    };
  
    desktopManager.gnome3.enable = true;
  };
}
