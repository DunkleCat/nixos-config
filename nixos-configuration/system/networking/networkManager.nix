{
  imports = [
    ./hostname.nix
  ];

  networking.networkmanager = {
    enable = true;

    wifi = {
      macAddress = "random";
    };
  };
}
