{
  networking.firewall = {
    # allowedTCPPorts = [ ... ];
    allowedTCPPortRanges = [
      { from = 1714; to = 1764; } #KDE Connect
    ];
    # allowedUDPPorts = [ ... ];
    allowedUDPPortRanges = [
      { from = 1714; to = 1764; } #KDE Connect
    ];
  };
}
