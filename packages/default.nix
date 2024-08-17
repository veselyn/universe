{
  self,
  nixpkgs,
  flake-utils,
  ...
}:
flake-utils.lib.eachDefaultSystemMap (system: let
  pkgs = self.lib.mkPkgs nixpkgs system {};
in {
  inherit
    (pkgs)
    gitpick
    yabaictl
    ;
})
