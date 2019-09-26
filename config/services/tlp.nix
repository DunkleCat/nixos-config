{
  services.tlp = {
    enable = true;
    extraConfig = ''
      START_CHARGE_THRESH_BAT0=40
      STOP_CHARGE_THRESH_BAT0=50

      START_CHARGE_THRESH_BAT1=85
      STOP_CHARGE_THRESH_BAT1=90
    '';
  };
}
