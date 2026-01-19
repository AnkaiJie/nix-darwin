{ ... }: {
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -la";
      code = "code 2>/dev/null";
      gs = "git status";
    };
    initContent = ''
      # Custom prompt: blue directory + green $
      PROMPT='%F{blue}%~%f %F{green}$%f '

      # Add local bin to PATH for claude
      export PATH="$HOME/.local/bin:$PATH"
    '';
  };
}
