{
  users.users.guest = {
    extraGroups = [ "networkmanager" ];
    isNormalUser = true;
    passwordFile = "/etc/nixos/keys/users-guest";
    uid = 1050;
  };
}
