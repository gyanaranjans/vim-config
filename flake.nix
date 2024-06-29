{
  description = "A simple flake for managing my Neovim configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.neovim = with nixpkgs.legacyPackages.x86_64-linux; neovim;

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.neovim;

  };
}
