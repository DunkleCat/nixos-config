{
  services.xserver = {
  
   displayManager.lightdm = {
      enable = true;
    };

    desktopManager = {
      default = "xfce";
      xterm.enable = false;
      xfce = {
        enable = true;
	noDesktop = true;
	enableXfwm = false;
      };
    };

    # XMONAD
    windowManager = {
      default = "xmonad";
      xmonad = {
        enable = true;
	enableContribAndExtras = true;
	extraPackages = haskellPackages : [
	  haskellPackages.xmonad-contrib
	  haskellPackages.xmonad-extras
	  haskellPackages.xmonad
        ];
        config = ''
          import XMonad
          import XMonad.Config.Xfce
          main = xmonad xfceConfig
            { terminal = "xfce4-terminal"
	    , modMask = mod4Mask 
	    }
        '';
      };
    };
  };
}
