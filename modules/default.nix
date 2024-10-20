_: {
  imports = [
    ./flake
  ];

  flake.modules.darwin.default = ./darwin;
  flake.modules.flake.default = ./flake;
  flake.modules.generic.default = ./generic;
  flake.modules.home.default = ./home;
  flake.modules.nixos.default = ./nixos;
}
