{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # clang
    cmake
    gcc
    meson
    ninja
  ];

  # vimplugins meson
}
