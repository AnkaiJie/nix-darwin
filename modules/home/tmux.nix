{ ... }: {
  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    terminal = "screen-256color";
    prefix = "C-e";
    extraConfig = ''
      bind \\ split-window -h
      bind - split-window -v
    '';
  };
}
