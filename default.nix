with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "ffhh-ansible-config";

  buildInputs = [
    python27
    python27Packages.virtualenv
  ];

  shellHook = ''
    virtualenv ENV
    source ENV/bin/activate
    pip install -r requirements.txt
  '';
}
