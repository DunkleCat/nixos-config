{ systemVersion, ... }:

{
  system = {
    autoUpgrade = {
      channel = "nixos-" + systemVersion;
      dates = "weekly";
      enable = true;
    };
    stateVersion = systemVersion;
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
