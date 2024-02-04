{ config, pkgs, ... }:

{
  imports = [
    ./programs
    ./fcitx5
  ];

  home = {
    username = "jude";
    homeDirectory = "/home/jude";

    stateVersion = "23.11";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
