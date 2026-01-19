{ pkgs, ... }: {
  imports = [
    ./direnv.nix
    ./git.nix
    ./zsh.nix
    ./vscode.nix
  ];

  home.stateVersion = "24.05";

  # User packages (installed to ~/.nix-profile)
  home.packages = with pkgs; [
    # Add user packages here, e.g.:
    # ripgrep
    # fd
  ];
}
