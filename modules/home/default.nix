{ pkgs, ... }: {
  imports = [
    ./direnv.nix
    ./fzf.nix
    ./git.nix
    ./vim.nix
    ./vscode.nix
    ./zsh.nix
  ];

  home.stateVersion = "24.05";

  # User packages (installed to ~/.nix-profile)
  home.packages = with pkgs; [
    # Add user packages here, e.g.:
    # ripgrep
    # fd
  ];
}
