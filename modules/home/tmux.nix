{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    terminal = "screen-256color";
    prefix = "C-e";
    keyMode = "vi";
    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = dracula;
        extraConfig = ''
          set -g @dracula-show-powerline true
          set -g @dracula-plugins "cpu-usage ram-usage time"
          set -g @dracula-show-left-icon session
          set -g @dracula-refresh-rate 5
        '';
      }
    ];
    extraConfig = ''
      bind \\ split-window -h
      bind - split-window -v

      # vi-style copy mode with system clipboard (macOS pbcopy)
      bind -T copy-mode-vi v send-keys -X begin-selection
      bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "pbcopy"

      # mouse drag: on release, stop-selection keeps the highlight visible
      # and stays in copy mode, so you can then press y to yank. Every copy
      # command (copy-pipe, copy-pipe-and-cancel) would clear the highlight.
      bind -T copy-mode-vi MouseDragEnd1Pane send-keys -X stop-selection

      # paste from system clipboard
      bind ] run "pbpaste | tmux load-buffer - && tmux paste-buffer"
    '';
  };
}
