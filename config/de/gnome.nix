{ pkgs, ... }:

{
  imports = [ ./gnome_minimal.nix ];

  services.gnome3 = {
    # gpaste.enable = true;
    # gvfs.enable = true;
    # seahorse.enable = true;
    sushi.enable = true;
    tracker-miners.enable = true;
    tracker.enable = true;
  };
  
  services.gvfs.enable = true;
  programs.seahorse.enable = true;

  environment.systemPackages = with pkgs.gnome3; [

    dconf
    dconf-editor
    file-roller
    gnome-keyring
    gnome-tweak-tool
    
  ];
}
