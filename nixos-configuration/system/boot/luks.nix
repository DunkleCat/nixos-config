{ luksDevice, ... }:

{
  boot.initrd.luks.devices.crypted.device = luksDevice;
}
