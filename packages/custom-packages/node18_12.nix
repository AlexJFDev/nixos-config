{
  stdenv,
  fetchzip,
}:

stdenv.mkDerivation {
  pname = "node18_12";
  version = "18.12.1";

  src = fetchzip {
    url = "https://nodejs.org/download/release/v18.12.1/node-v18.12.1.tar.gz";
    sha256 = "";
  };
}