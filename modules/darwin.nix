{ pkgs, ... }: {
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = [
    pkgs.vim
  ];

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  # Enable alternative shell support in nix-darwin.
  # programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 6;

  # Required for user-specific options like dock settings
  system.primaryUser = "ankaijie";

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "x86_64-darwin";

  # Allow unfree packages (e.g., VS Code)
  nixpkgs.config.allowUnfree = true;

  security.pam.services.sudo_local.touchIdAuth = true;
  security.pam.services.sudo_local.reattach = true;

  fonts.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  system.defaults = {
    dock.autohide = true;
    CustomUserPreferences = {
      "com.apple.symbolichotkeys" = {
        AppleSymbolicHotKeys = {
          # Ctrl+Left: Move left a space
          "79" = { enabled = false; };
          # Ctrl+Right: Move right a space
          "81" = { enabled = false; };
        };
      };
    };
  };

  # Home Manager configuration
  users.users.ankaijie.home = "/Users/ankaijie";
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
}
