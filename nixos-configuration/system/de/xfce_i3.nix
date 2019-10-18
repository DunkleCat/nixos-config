{
  imports = [ ./xfce.nix ];
  
  services.xserver.xfce = {
    noDesktop = true;
    enableXfwm = false;
  };

  windowManager.i3.enable = true;
  };
}
