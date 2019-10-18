{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
 
    initExtra = ''
      eval "$(direnv hook zsh)" 
    '';
       
    oh-my-zsh = {
      enable = true;
      plugins = [ 
        "cabal"
        "common-aliases"
        "docker"
        "extract"
        "git" 
        "git-extras"
        "git-flow"
        "gradle"
        "redis"
        "sudo"
        "systemd"
        "tmux"
      ];
      theme = "avit";
    };
  };
}
