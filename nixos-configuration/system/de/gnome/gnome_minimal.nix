{ pkgs, ... }:

{
  services = {
    
    xserver = {
      enable = true;

      displayManager.gdm.enable = true;
      desktopManager.gnome3.enable = true;
    };

    gnome3 = {
      sushi.enable = true;
      tracker-miners.enable = true;
      tracker.enable = true;
    };
  
    gvfs.enable = true;
  };

  programs.seahorse.enable = true;

  environment.systemPackages = with pkgs.gnome3; [
    
    xwayland 

    dconf
    dconf-editor
    file-roller
    gnome-keyring
    gnome-tweak-tool
  ];
}
