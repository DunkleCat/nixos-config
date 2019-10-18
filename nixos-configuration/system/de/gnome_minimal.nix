{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    xwayland
  ];
  
  imports = [ ./servers/x.nix ];

  services.xserver = {

    displayManager.gdm = {
      enable = true;
    };
  
    desktopManager.gnome3.enable = true;
  };
}
