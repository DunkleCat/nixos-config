{ pkgs, ... }:

{
  services.printing = {
    browsing = true;
    drivers = with pkgs; [ hplipWithPlugin ];
    enable = true;
    startWhenNeeded = true;
    tempDir = "/tmp/cups";
  };

  networking.firewall.allowedUDPPorts = [ 631 ];
  networking.firewall.allowedTCPPorts = [ 631 ];
}
