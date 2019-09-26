{
  services.xserver = {
    enable = true;
    layout = "it";
    xkbOptions = "eurosign:e";

    libinput = {
      enable = true;
    };
  };
}
