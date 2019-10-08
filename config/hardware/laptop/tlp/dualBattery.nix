# Only for ThinkPads
# reference: https://linrunner.de/en/tlp/docs/tlp-faq.html#battery
{
  imports = [
    ./service.nix
    ./modules/acpi_call.nix
  ];

  services.tlp.extraConfig = ''
    START_CHARGE_THRESH_BAT0=40
    STOP_CHARGE_THRESH_BAT0=50

    START_CHARGE_THRESH_BAT1=75
    STOP_CHARGE_THRESH_BAT1=80
  '';
}
