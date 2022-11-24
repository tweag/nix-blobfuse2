{
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { nixpkgs, flake-utils, self, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        packages.blobfuse2 = pkgs.callPackage ./blobfuse2 { };
        packages.default = self.packages.${system}.blobfuse2;
      });
}
