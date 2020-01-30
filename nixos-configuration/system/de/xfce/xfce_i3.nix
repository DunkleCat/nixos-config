{
  imports = [ ./xfce.nix ];
  
  services.xserver = {
    enable = true;
    
    xfce = {
      noDesktop = true;
      enableXfwm = false;
    };

    windowManager.i3.enable = true;
  };
}
