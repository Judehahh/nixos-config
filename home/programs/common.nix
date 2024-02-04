{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    neofetch

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    htop
    tmux

    # networking tools
    clash-meta

    # GUI
    steam
    chromium
    qq

    # C
#     clang
#     llvm
#     binutils
#     coreutils
#     gcc
#     ccls
#     cmake
#     gnumake

    # misc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    # system call monitoring
    lsof # list open files

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
    lshw
  ];

  programs = {
    tmux = {
      enable = true;
      clock24 = true;
      keyMode = "vi";
      extraConfig = "mouse on";
    };

    bash = {
      enable = true;
      enableCompletion = true;
      # TODO 在这里添加你的自定义 bashrc 内容
      bashrcExtra = ''
        export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
      '';

      # TODO 设置一些别名方便使用，你可以根据自己的需要进行增删
      shellAliases = {
        c = "clear";
      };
    };
  };
}
