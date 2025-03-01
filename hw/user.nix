{ lib, pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kongjian = {
    isNormalUser = true;
    shell=pkgs.zsh;
    description = "kongjian";
    extraGroups = [
      "audio"
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [ ];
  };
}
