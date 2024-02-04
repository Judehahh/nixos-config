{ stdenv, lib, fetchurl, ... }:

stdenv.mkDerivation rec {
  pname = "uuplugin";
  version = "4.7.16";

  src = fetchurl {
    url = "https://uu.gdl.netease.com/uuplugin/steam-deck-plugin-x86_64/v${version}/uu.tar.gz";
    hash = "sha256-84150a069c02e912a1d97234bc563a994cf7b02b481caee84bf192c039385827";
  };

  installPhase = ''
    runHook preInstall
    install -m755 -D studio-link-standalone-v${version} $out/bin/studio-link
    runHook postInstall
  '';

  unpackPhase = ''
    tar xf $src
  '';
  installPhase = ''
    install -Dm755 uuplugin $out/bin/uuplugin
    install -Dm644 uu.conf $out/share/uuplugin/uu.conf
  '';
  meta = {
    description = "uuplugin";
    platforms = [ "x86_64-linux" ];
  };
}
