{ pkgs, ... }:

{
  packages = [ pkgs.rtk ];

  enterTest = ''
    rtk --version
  '';
}
