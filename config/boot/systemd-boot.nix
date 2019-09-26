{
  boot.loader = {
    systemd-boot = {
      configurationLimit = 20;
      editor = false;
      enable = true;
    };

    efi.canTouchEfiVariables = true;
  };                                                                                                            
}
