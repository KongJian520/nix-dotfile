{ lib, ... }:
{
  imports = [
    ./fonts.nix
    ./podman.nix
    ./pkgs.nix
    ./mihomo.nix
    ./fcitx5.nix
    ./wine.nix
    ./zsh.nix
  ];
}
