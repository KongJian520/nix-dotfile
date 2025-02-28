{
  config,
  pkgs,
  inputs,
  ...
}:
{
  home.packages = [
    pkgs.dconf
    pkgs.xdg-desktop-portal-hyprland
    pkgs.wayland
  ];
  wayland.windowManager.hyprland = {
    # Whether to enable Hyprland wayland compositor
    enable = true;
    # The hyprland package to use
    package = pkgs.hyprland;
    # Whether to enable XWayland
    xwayland.enable = true;
    extraConfig = ''


    '';
  };
  home.sessionVariables.NIXOS_OZONE_WL = "1";
}
