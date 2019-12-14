# For every question, uncomment the line underneath it if the answer is
# affermative (true). Otherwise (false) leave it commented

{
  _module.args = {
    hostName = "example";
    luksDevice = "/dev/something";
    systemVersion = "19.09";
  };

  imports = [
    # Do you want the latest kernel?
    # ./boot/kernelLatest.nix
    #
    # # Do you have LUKS enabled?
    # ./boot/luks.nix

    # DESKTOP ENVIRONMENT. CHOOSE ONLY ONE
    # Do you want a minimal gnome (only the desktop)? 
    # ./de/gnome_minimal.nix
    # Do you want a complete environment?
    # ./de/gnome.nix
    # Do you want full gnome + its suite? 
    # ./de/gnome_full.nix
    #
    # Do you want a minimal plasma?
    # ./de/plasma_minimal.nix
    # Do you want plasma + its suite?
    # ./de/plasma_full.nix
    #
    # Do you want xfce?
    # ./de/xfce.nix
    # Do you want xfce + i3?
    # ./de/xfce_i3.nix
    # Do you want xfce + xmonad
    # ./de/xfce_xmonad.nix

    # Which keymaps do you want to use?
    # ./keymaps/it.nix
    # ./keymaps/us.nix

    # Do you want internet?    
    # ./networking/networkManager.nix

    # Don't enable services you don't know
    # Do you need avahi?
    #
    # ./services/avahi.nix
    # Do you need cups to access network's printers?
    # ./services/cups.nix
    #
    # Do you need docker?
    # ./services/docker.nix
    # 
    # Do you need the fingerprint reader support? The support is not guaranteed
    # ./services/fingerprint.nix
    # 
    # Do you need gitea?
    # ./services/gitea.nix
    # 
    # Do you need kubernetes?
    # ./services/kubernetes.nix
    # 
    # Do you need nextcloud?
    # ./services/nextcloud.nix
    # 
    # Do you need openssh?
    # ./services/openssh.nix
    # 
    # Do you need resolved?
    # ./services/resolved.nix

    # Which is your timezone? 
    # ./timezones/rome.nix

    # Uncomment this three lines
    # ./sysconfig.nix
    # ./system.nix
    # ./systemModel.nix
  ];
}
