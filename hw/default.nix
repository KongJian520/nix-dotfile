{ lib, pkgs, ... }:
{
  imports = [
    ./configuration.nix
    ./nvidia.nix
    ./audio.nix
    ./user.nix
  ];




}
