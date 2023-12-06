{ pkgs, ... }:
# Just AWS, I use it to run a python3 command for a VPN thingy.
{
  packages = [
    pkgs.awscli2
  ];

  enterShell = ''
    echo 'Hello, you have AWS CLI enabled, version is:'
    aws --version
  '';

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
