{ lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    pavucontrol
  ];



hardware.pulseaudio.enable = true;
services.pipewire.enable = false;

 
}
