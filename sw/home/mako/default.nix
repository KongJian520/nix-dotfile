{
  config,
  pkgs,
  inputs,
  ...
}:
{
  services.mako = {
    enable = true;
    extraConfig = ''
      sort=-time
      layer=top
      background-color=#5f3f4faa
      width=300
      height=110
      border-size=2
      border-color=#88c0d0
      border-radius=15
      icons=1
      max-icon-size=32
      default-timeout=5000
      ignore-timeout=1
      font=Source Han Serif CN 14
      anchor=bottom-right

      progress-color=over #5588AAFF
      format= <b>%s</b>\n%b
      [urgency=low]
      border-color=#cccccc

      [urgency=normal]
      border-color=#d08770

      [urgency=high]
      border-color=#bf616a
      default-timeout=0

      [category=mpd]
      default-timeout=2000
      group-by=category

      [mode=do-not-disturb]
      invisible=1
    '';
  };

}
