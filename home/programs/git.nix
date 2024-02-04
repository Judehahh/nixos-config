{
  pkgs,
  ...
}: {
  home.packages = [pkgs.gh];

  programs.git = {
    enable = true;

    userName = "judehahh";
    userEmail = "liujh20121601@live.com";
  };
}
