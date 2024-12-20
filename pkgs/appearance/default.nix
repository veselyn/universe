{self, ...}: {
  flake.packages = self.lib.mkPerDarwinSystem ({pkgs, ...}: {
    appearance = pkgs.writeShellApplication {
      name = "appearance";
      runtimeInputs = builtins.attrValues {
        inherit
          (pkgs)
          argc
          coreutils
          kitty
          neovim
          ;
      };
      text = builtins.readFile ./appearance.sh;
    };
  });
}
