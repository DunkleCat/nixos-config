{ pkgs, ... }:

{
  services.emacs.enable = true;
  services.emacs.package = import /home/cassou/.emacs.d { pkgs = pkgs; };
}
