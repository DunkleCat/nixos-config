{ pkgs, ... }:

{
  hardware.bluetooth = {
    enable = true;
    extraConfig = "
      [General]
      Enable=Source,Sink,Media,Socket
    ";

    package = pkgs.bluezFull;
  };
}
