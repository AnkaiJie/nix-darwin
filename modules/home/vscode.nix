{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    mutableExtensionsDir = true;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        ms-vscode-remote.remote-ssh
      ];
      userSettings = {
        "workbench.sideBar.location" = "right";
        "editor.tabSize" = 2;
      };
    };
  };
}
