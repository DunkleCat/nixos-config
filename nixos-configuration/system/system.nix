{
  _module.args = {
    hostName = "nxs";
    luksDevice = "/dev/nvme0n1p2";
    systemVersion = "19.09";
  };

  imports = [
    # SYSTEM
    ./sysconfig.nix
    # ./boot/kernelLatest.nix
    ./boot/luks.nix
    ./de/gnome/gnome.nix
    ./keymaps/it.nix
    ./networking/networkManager.nix
    ./timezones/rome.nix

    # SERVICES
    ./services/autoUpgrade.nix
    ./services/avahi.nix
    ./services/cups.nix
    ./services/docker.nix
    # ./services/emacs.nix
    ./services/fingerprint.nix
    ./services/gitea.nix
    # ./services/kubernetes.nix
    # ./services/nextcloud.nix
    ./services/openssh.nix
    # ./services/resolved.nix
  ];
}
