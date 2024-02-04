{ config, pkgs, ... }:

{
  systemd.services = {
    clash = {
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        # ExecStart = "${pkgs.clash-meta}/bin/clash-meta -d /etc/nixos/profile/clash";
        ExecStart = "${pkgs.clash-meta}/bin/clash-meta -d /home/jude/.config/clash";
        Type = "simple";
        Restart = "on-abort";
      };
    };
  };

  # environment.sessionVariables = rec {
  #   http_proxy = "http://127.0.0.1:7890";
  #   HTTP_PROXY = http_proxy;
  #   https_proxy = http_proxy;
  #   HTTPS_PROXY = https_proxy;
  #   socks_proxy = "socks5://127.0.0.1:7891";
  #   SOCKS_PROXY = socks_proxy;
  #   all_proxy = socks_proxy;
  #   ALL_PROXY = all_proxy;
  #   no_proxy = "localhost, 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12";
  #   NO_PROXY = no_proxy;
  # };

  # networking.networkmanager.insertNameservers = [
  #   "127.0.0.1"
  #   "::1"
  # ];
}
