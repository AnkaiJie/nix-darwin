{ ... }: {
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;  # Better caching for nix shells
  };
}
