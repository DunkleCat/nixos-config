{
  boot.loader = {
    grub = {
      enable = true;
      useOSProber = true;
    }
  }

  boot.tmpOnTmpfs = true;
}
