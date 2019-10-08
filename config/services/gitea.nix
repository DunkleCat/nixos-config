{
  services.gitea = {
    cookieSecure = true;
    
    database = {
      passwordFile = "/etc/nixos/keys/gitea-database";
      type = "postgres";
      user = "gitea";
    };

    disableRegistration = true;

    dump = {
      enable = true;
      interval = "weekly";
    };

    enable = true;
    useWizard = true;
  };
}
