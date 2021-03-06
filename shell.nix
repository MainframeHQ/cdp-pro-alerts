{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  inherit (lib) optional optionals;

  elixir = beam.packages.erlangR21.elixir_1_8;
  nodejs = nodejs-10_x;
  postgresql = postgresql_10;
in

mkShell {
  buildInputs = [ elixir nodejs git postgresql ]
    ++ optional stdenv.isLinux inotify-tools # For file_system on Linux.
    ++ optionals stdenv.isDarwin (with darwin.apple_sdk.frameworks; [
      # For file_system on macOS.
      CoreFoundation
      CoreServices
    ]);

    # Put the PostgreSQL databases in the project diretory.
    shellHook = ''
      export PGDATA="$PWD/db"
      glibcLocales=$(nix-build --no-out-link "<nixpkgs>" -A glibcLocales)
      export LOCALE_ARCHIVE_2_27="${glibcLocales}/lib/locale/locale-archive"
      export SECRET_KEY_BASE="4inyd47D1m4yXPd2RwgzexDCfkbKM2C5ciuSNRk/t5pBNwRVZEUUC1gm9vP2vLXr"
      export TUB_CONTRACT_ADDRESS="0x448a5065aebb8e423f0896e6c5d525c040f59af3"
    '';
}
