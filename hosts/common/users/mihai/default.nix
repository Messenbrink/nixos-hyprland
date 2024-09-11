{
  pkgs,
  config,
  inputs,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  imports = [
    inputs.sops-nix.nixosModules.sops
  ];
  users.users.mihai = {
    isNormalUser = true;
    description = "mihai";
    shell = pkgs.zsh;
    extraGroups = ["networkmanager" "wheel" "docker" "podman" "audio"] ++ ifTheyExist ["libvirtd" "mysql" "network" "git"];
    packages = [pkgs.home-manager];
  };

  # Import this user's personal/home configurations
  home-manager.users.mihai = import ../../../../home/${config.networking.hostName}.nix;

  # Sops secrets
  # sops = {
  #   defaultSopsFile = ./secrets/secrets.yaml;
  #   defaultSopsFormat = "yaml";
  #   age.keyFile = "/home/mihai/.config/sops/age/keys.txt";
  #   secrets.OPENAI_API_KEY = {
  #     owner = config.users.users.mihai.name;
  #   };
  # };

  # 1password
  programs = {
    _1password.enable = true;
    _1password-gui = {
      enable = true;
      # Certain features, including CLI integration and system authentication support,
      # require enabling PolKit integration on some desktop environments (e.g. Plasma).
      polkitPolicyOwners = ["mihai"];
    };
  };

  # OpenAI API Key
  # systemd.services."openaisecret" = {
  #   description = "OpenAI API Key";
  #   after = ["network.target"];
  #   wantedBy = ["multi-user.target"];
  #   script = ''
  #     mkdir -p /home/mihai/.secrets
  #     echo $(cat ${config.sops.secrets.OPENAI_API_KEY.path}) > /home/mihai/.secrets/openai_api_key.txt
  #   '';
  #   serviceConfig = {
  #     User = "mihai";
  #     WorkingDirectory = "/home/mihai";
  #   };
  # };
  # systemd.services.openaisecret.enable = true;

  # vpn
  # TODO: Figure out how to make nordvpn connection more dynamic
  #services.openvpn.servers = {
  #  homeVPN = {config = ''config /home/mihai/.nordvpn/us9565.nordvpn.com.udp.ovpn '';};
  #};
}
