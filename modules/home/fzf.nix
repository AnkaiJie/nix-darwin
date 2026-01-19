{ ... }: {
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;  # Enables Ctrl+R history search

    defaultOptions = [
      "--height 40%"
      "--layout=reverse"
      "--border"
      "--inline-info"
    ];

    # Ctrl+R history search options
    historyWidgetOptions = [
      "--sort"
      "--exact"
    ];

    # Ctrl+T file search options
    fileWidgetOptions = [
      "--preview 'head -100 {}'"
    ];

    # Alt+C directory search options
    changeDirWidgetOptions = [
      "--preview 'ls -la {}'"
    ];
  };
}
