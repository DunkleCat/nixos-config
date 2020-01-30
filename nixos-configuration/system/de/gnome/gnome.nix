{ pkgs, ... }:

{
  imports = [ ./gnome_minimal.nix ];

  environment.systemPackages = with pkgs; [
    
    gnome3.evolution
    gnome3.gnome-calendar
    gnome3.gnome-contacts
    gnome3.gnome-screenshot
    gnome3.polari
    gnome3.pomodoro
    gnome3.gnome-todo
    gnome3.simple-scan

    gnome-builder
    gnome-mpv

    adwaita-qt
    evince
  ];
}
