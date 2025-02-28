{ pkgs, ... }:
{

  # Enable common container config files in /etc/containers
  virtualisation.containers.enable = true;
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
      # Required for containers under podman-compose to be able to talk to each other.
      defaultNetwork.settings.dns_enabled = true;
    };
  };
  virtualisation.oci-containers.containers = {
    zashboard = {
      image = "ghcr.io/zephyruso/zashboard:latest";
      autoStart = true;
      ports = [
        "10051:80"
      ];
    };
  };
  # Useful other development tools
  environment.systemPackages = with pkgs; [
    # dive # look into docker image layers
    podman-tui # status of containers in the terminal
    podman-compose # start group of containers for dev
  ];

}
