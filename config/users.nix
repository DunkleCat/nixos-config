{ pkgs, ... }:

{
  programs.zsh.enable = true;

  users = {
    mutableUsers = false;

    users.dunklecat = {
      extraGroups = [ "wheel" "audio" "networkmanager" "networking" ];
      passwordFile = "/etc/nixos/keys/users-dunklecat";
      isNormalUser = true;
      shell = pkgs.zsh;
      uid = 1000;
    };

    users.guest = {
      extraGroups = [ "networkmanager" ];
      isNormalUser = true;
      # password = "password";
      passwordFile = "/etc/nixos/keys/users-guest";
      uid = 1050;
    };
  };

  home-manager.users.dunklecat = { pkgs, ... }: {
    imports = [ ./users/programs.nix ];
  };
}
