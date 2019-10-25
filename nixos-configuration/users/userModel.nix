{ pkgs, ... }:

{
  # Uncomment the line with the shell you prefer.
  # If unsure, choose bash
  # programs.bash.enable = true;
  # programs.zsh.enable = true;

  # Replace <user> with your username
  users.users.<user> = {
    extraGroup = [
      "audio"          # This will let you use and control the audio of the system
      "networkmanager" # Useful for managing the network
      "networking"
      "wheel"          # Administration group, commonly used to give privileges to perform administrative actions.
    ];
  #   Remember to create your password file using
  #     live during installation: mkpasswd <password> -m sha-512 >> /mnt/etc/nixos/keys/users-<user>
  #     installed system, useful to change it: mkpasswd <password> -m sha-512 >> /etc/nixos/keys/users-<user>
    passwordFile = "/etc/nixos/keys/users-<user>"
    isNormalUser = true;
  #   Uncomment the shell you want only
  #   shell = pkgs.bash
  #   shell = pkgs.zsh
  };

  imports =[
  #   Uncomment the programs you want for your user
  #   ./programs/alacritty.nix
  #   ./programs/bash.nix
  #   ./programs/chromium.nix
  #   ./programs/cli.nix # A bunch of cli useful applications
  #   ./programs/direnv.nix
  #   ./programs/discord.nix
  #   ./programs/firefox.nix
  #   ./programs/git.nix
  #   ./programs/keepassxc.nix
  #   ./programs/libreoffice.nix
  #   ./programs/neovim.nix
  #   ./programs/spotify.nix
  #   ./programs/ssh.nix
  #   ./programs/steam.nix
  #   ./programs/telegram.nix
  #   ./programs/texstudio.nix
  #   ./programs/unetbootin.nix
  #   ./programs/vscode.nix   # Use only vscode 
  #   ./programs/vscodium.nix # or vscodium, not both
  #   ./programs/zsh.nix
  ];

  home.packages = with pkgs; [
  #   If you don't find an application you want in the previous section,
  #   search the package name here: https://nixos.org/nixos/packages.html?channel=nixos-19.09
  #   and add it below
  #   Example:
  #   dwarf-fortress  
  ];
}
