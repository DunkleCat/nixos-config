{
  imports = [
    # ./programs/alacritty.nix
    ./programs/bash.nix
    ./programs/chromium.nix
    ./programs/direnv.nix
    ./programs/firefox.nix
    ./programs/git.nix
    ./programs/neovim.nix
    ./programs/ssh.nix
    ./programs/zsh.nix
  ];
    
  programs.home-manager = {
    enable = true;
  };
}
