{
  stdenv,
  fetchzip,
  python39
}:

stdenv.mkDerivation {
  pname = "node18_12";
  version = "18.12.1";

  src = fetchzip {
    url = "https://nodejs.org/download/release/v18.12.1/node-v18.12.1.tar.gz";
    sha256 = "rM6fYwScEhim69j2wU/0cGGiM2YiHpzD30eo2DS36+c=";
  };

  buildInputs = [ python39 ];
}