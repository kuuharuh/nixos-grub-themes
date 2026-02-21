pkgs:

pkgs.stdenv.mkDerivation {
  name = "GRUB-Theme-CRT-TV";
  src = pkgs.fetchFromGitHub {
    owner = "bulat-ch";
    repo = "GRUB-Theme-CRT-TV";
    rev = "9a4eee5";
    hash = "sha256-yiNLDC8zYsHQvagwd9B9TSJJM8q+GyD9HqaxB0sSlQ4=";
  };
  installPhase = ''
    mkdir -p $out
    cp -r $src/1920x1080/CRT-TV/* $out/
  '';
}
