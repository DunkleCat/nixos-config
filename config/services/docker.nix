{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    docker-distribution
    docker
    docker-compose
    docker-gc
    docker-ls
    docker-proxy
    docker-sync
  ];

  users.users.dunklecat.extraGroups = ["docker"];

  virtualisation.docker = {
    
    autoPrune = {
      dates = "weekly";
      enable = true;
      flags = [ "--all" ]; 
    };
    
    enable = true;
  };
}
