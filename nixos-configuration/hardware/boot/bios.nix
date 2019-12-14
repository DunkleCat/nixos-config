{ biosGrubDevice, ... }:

{
  boot.loader = {
    grub = {
      enable = true;
      useOSProber = true;
      device = biosGrubDevice;
      version = 2;
    };
  };

  boot.tmpOnTmpfs = true;
}
