{
  stdenv,
  fetchzip,
  autoPatchelfHook,
  glibc,
  zlib
}:

stdenv.mkDerivation {
  pname = "node18_12";
  version = "18.12.1";

  src = fetchzip {
    url = "https://nodejs.org/dist/v18.12.1/node-v18.12.1-linux-x64.tar.gz";
    sha256 = "93OPw1o/7wpe2ii+9KG0w0DJ9ZTJa1yzzitgxixZfg8=";
  };

  nativeBuildInputs = [ autoPatchelfHook ];
  buildInputs = [ glibc zlib ];

  phases = [ "installPhase" ];

  installPhase = ''
    echo $src
    echo $out
    mkdir $out
    cp -r $src/* $out
  '';
}