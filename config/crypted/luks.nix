{ lockedDevice, ... }:

{
  boot.initrd.luks.devices.crypted.device = lockedDevice;
}
