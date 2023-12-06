{ pkgs, ... }:
# Serves for any Node development, Angular, services, etc.
{

  languages.javascript.enable = true;
  languages.javascript.package = pkgs.nodejs_18;
  languages.javascript.npm.install.enable = true;

  enterShell = ''
    echo 'Hello welcome to the xxxx application. Node and NPM versions are:'
    export APP_ENV="dev/miguelsua-dev"
    node --version
    npm --version
  '';

}
