{ config, pkgs, ... }:

{
  systemd.services.nixos-upgrade = {
    description = "NixOS Upgrade";

    restartIfChanged = false;
    unitConfig.X-StopOnRemoval = false;

    serviceConfig.Type = "oneshot";

    environment = config.nix.envVars //
      { inherit (config.environment.sessionVariables) NIX_PATH;
        HOME = "/root";
      } // config.networking.proxy.envVars;

    path = with pkgs; [ coreutils gnutar xz.bin gzip gitMinimal config.nix.package.out ];

    script = let
        nixos-rebuild = "${config.system.build.nixos-rebuild}/bin/nixos-rebuild";
      in
      ''
          ${nixos-rebuild} boot --upgrade
      '';

    wants = ["network-online.target"];
    after = ["network-online.target"];
   startAt = "daily";
  };
  
  nix = {
    
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 7d";
    };

    optimise = {
      automatic = true;
      dates = [ "daily" ];
    };

    maxJobs = 4;
  };
}
