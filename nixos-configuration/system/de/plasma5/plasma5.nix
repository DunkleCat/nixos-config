{ pkgs, ... }:

{
  imports = [ ./plasma_minimal.nix ];

  environment.systemPackages ) with pkgs; [
    akonadi
    kdeconnect
    kmail
    okular

    kdeApplications.kio-extras

  ];
}
