{ hostName, ... };

{
  networking = {
  
    hostName = hostName;

    networkmanager = {
      enable = true;

      wifi = {
        macAddress = "random";
      };
    };  
  };
}
