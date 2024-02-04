{ lib, pkgs, ...}:

{
  # Android Debug Bridge
  programs.adb.enable = true;
  users.users.jude.extraGroups = ["adbusers"];

  services.udev.packages = [
    pkgs.android-udev-rules
  ];
}
