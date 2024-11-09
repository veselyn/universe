{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.self.modules.nixos;
in {
  imports = [
  ];

  options = {
    self.modules.nixos = {
      enable = lib.mkEnableOption "nixos";

      username = lib.mkOption {
        type = lib.types.str;
      };
    };
  };

  config = lib.mkIf cfg.enable {
    users.users.${cfg.username} = {
      extraGroups = ["wheel"];
      hashedPassword = "$y$j9T$PeH7qw8mng473jD.vm154/$QAA7tdfQUrw1BdBrXjOX/hegKBsn0IW6FJRK4I43qOA";
      isNormalUser = true;
      shell = pkgs.zsh;
    };

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    programs.zsh.enable = true;
    system.stateVersion = "24.11";
  };
}
