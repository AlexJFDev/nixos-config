
{
  stdenv,
  fetchzip,
}:

stdenv.mkDerivation {
  pname = "multimc";
  version = "0.7.0";

  src = fetchzip {
    url = "https://files.multimc.org/downloads/mmc-develop-lin64.tar.gz";
    sha256 = "qcfafzyRN+WDZv9BB678Z2BSTjrSgXc8gOffmD0w1s4=";
  };

  phases = [ "installPhase" ];

  installPhase = ''
    echo $src
    echo $out
    install -D $src/MultiMC $out/MultiMC
    cp -r $src/bin $out/bin
    sed -i '1s|#!/bin/bash|#!/bin/sh|' $out/MultiMC
    chmod -x $out/bin/MultiMC
  '';
}