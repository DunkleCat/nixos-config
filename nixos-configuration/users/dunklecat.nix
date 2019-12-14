{ config, pkgs, ... }:

{
  programs.zsh.enable = true;

  users.users.dunklecat = {
    extraGroups = [ "audio" "networkmanager" "networking" "wheel" ];
    passwordFile = "/etc/nixos/keys/users-dunklecat";
    isNormalUser = true;
    shell = pkgs.zsh;
    uid = 1000;

    # motd = with config; ''
    #   Welcome to ${networking.hostName}
    # 
    #   - This machine is managed by NixOS
    #   - All changes are futile
    ##  
    #   OS:      NixOS ${system.nixos.release} (${system.nixos.codeName})
    #   Version: ${system.nixos.version}
    #   Kernel:	 ${boot.kernelPackages.kernel.version}
    #  '';    
  };

  home-manager.users.dunklecat = { pkgs, ... }: {

    programs.home-manager.enable = true;
    nixpkgs.config.allowUnfree = true;
    
    imports = [

      ./programs/zsh.nix

      # PROGRAMMING
      ./programs/languages/c_cpp.nix
      ./programs/languages/go.nix
      ./programs/languages/haskell.nix
      ./programs/languages/latex.nix
      ./programs/languages/ocaml.nix
      ./programs/languages/python.nix
      ./programs/languages/vala.nix
      # ./programs/direnv.nix
      ./programs/git.nix

      ./programs/emacs.nix  
      ./programs/neovim.nix

      ./programs/chromium.nix
      ./programs/firefox.nix
      ./programs/ssh.nix

      ./programs/apps.nix
    ];
  };
}
