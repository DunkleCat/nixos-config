{
  services.openssh = {
    enable = true;
    startWhenNeeded = true;
    passwordAuthentication = false;
  };
  
  programs.ssh.startAgent = true;                                                                               
}
