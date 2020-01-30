{
  imports = [ ./xfce.nix ];
  
  services.xserver = {

    enable = true;

    xfce = {
      noDesktop = true;
      enableXfwm = false;  
    };

    windowManager = {
      default = "xmonad";
      
      xmonad = {
        enable = true;
        enableContribAndExtras = true;
        
        extraPackages = haskellPackages: [
          haskellPackages.xmonad
          haskellPackages.xmonad-contrib
          haskellPackages.xmonad-extras
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
