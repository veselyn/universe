{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.self.modules.generic;
in {
  options = {
    self.modules.generic = {
      enable = lib.mkEnableOption "generic";
    };
  };

  config = lib.mkIf cfg.enable {
    nix.package = pkgs.nix;
    nix.settings.experimental-features = ["nix-command" "flakes"];
    nixpkgs.config.allowUnfree = true;
  };
}