{
  system = {
    autoUpgrade = {
      channel = "nixos-19.03";
      dates = "weekly";
      enable = true;
    };
    stateVersion = "19.03";
  };

  nix = {

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  
    optimise = {
      automatic = true;
      dates = [ "weekly" ];
    };

    maxJobs = 4;
  };
}
