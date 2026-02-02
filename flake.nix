{
  description = "Server configuration.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-stable";
  };

  outputs = { self, nixpkgs, ... }@inputs: 
    let
      mods = ./modules;
    in
  {


  };
}
