inputs: let
  mkConfiguration = import ../mk-configuration.nix inputs;
in
  mkConfiguration {
    system = "aarch64-darwin";
    hostName = "veselins-work-macbook-pro";
    user = "veselin";
    extraModules = [
      ./homebrew.nix
      ./system.nix
    ];
    extraHomeModules = [
      ./home/packages.nix
    ];
  }
