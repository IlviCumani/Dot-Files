# vim: filetype=tmux

# ======================
# Rosé Pine style palette
# ======================
set -g @nc            "#16141f"
set -g @base          "#191724"
set -g @surface       "#1f1d2e"
set -g @overlay       "#26233a"
set -g @muted         "#6e6a86"
set -g @subtle        "#908caa"
set -g @text          "#e0def4"
set -g @love          "#eb6f92"
set -g @gold          "#f6c177"
set -g @rose          "#ebbcba"
set -g @pine          "#31748f"
set -g @foam          "#9ccfd8"
set -g @iris          "#c4a7e7"
set -g @leaf          "#95b1ac"
set -g @highlight_low "#21202e"
set -g @highlight_med "#403d52"
set -g @highlight_high "#524f67"
set -g @white "#ffffff"
set -g @none          "default"

# ======================
# Prefix highlight colors
# ======================
set -g @prefix_highlight_copy_mode_attr "fg=#{@white},bg=#{@pine},bold"
set -g @prefix_highlight_sync_mode_atte "fg=#{@white},bg=#{@pine},bold"
set -g @prefix_highlight_empty_attr "fg=#{@white},bg=#{@pine},bold"
set -g @prefix_highlight_bg 'bg=#{@pine}'  # default is 'colour04'
set -g @prefix_highlight_output_prefix ''
set -g @prefix_highlight_prefix_prompt ""
set -g @prefix_highlight_copy_prompt   ""
set -g @prefix_highlight_sync_prompt   "Sync"
set -g @prefix_highlight_empty_prompt  "  "

# ======================
# Status bar setup
# ======================
set -g status on
set -g status-position bottom
set -g status-interval 10
set -g status-justify left
set -g status-left-length 25
set -g status-right-length 60
set -g window-status-separator ""
set -g status-style "bg=#{@none},fg=#{@love}"

# ======================
# Prefix Highlight
# ======================
set -g status-left "#[bg=#{@pine}] #{prefix_highlight}#[bg=#{@pine}] #[fg=#{@white},bg=#{@pine},bold]#S #[fg=#{@pine},bg=#{@foam}]#[fg=#{@foam},bg=#{@muted}]#[fg=#{@muted},bg=#{@highlight_med}]"

# ======================
# Inactive window
# ======================
set -g window-status-format "\
#[bg=#{@highlight_med},fg=#{@subtle}] #W \
#[bg=#{@gold},fg=#{@surface}] #I \
#[fg=#{@gold},bg=#{?#{==:#{window_index},#{last_window_index}},default,#{@highlight_med}}]"

# ======================
# Active window
# ======================
set -g window-status-current-format "\
#[bg=#{@highlight_med},fg=#{@pine},bold] #W \
#[bg=#{@pine},fg=#{@text},bold] #I \
#[fg=#{@pine},bg=#{?#{==:#{window_index},#{last_window_index}},default,#{@highlight_med}}]"

# ======================
# Right side (system info)
# ======================
set -g status-right "\
#[bg=#{@none},fg=#{@iris}]#[bg=#{@iris},fg=#{@highlight_med}]  #[bg=#{@highlight_med},fg=#{@iris}] %H:%M \
#[bg=#{@highlight_med},fg=#{@foam}]#[bg=#{@foam},fg=#{@highlight_med}]  #[bg=#{@highlight_med},fg=#{@foam}] %d-%m \
#[bg=#{@highlight_med},fg=#{@rose}]#[bg=#{@rose},fg=#{@highlight_med}]  #[bg=#{@highlight_med},fg=#{@rose}] #{battery_percentage} \
#[bg=#{@highlight_med},fg=#{@love}]#[bg=#{@love},fg=#{@highlight_med}]  #[bg=#{@highlight_med},fg=#{@love}] #{cpu_percentage} "

# Style for copy-mode and search
set -g mode-style "bg=cyan,fg=black"

# Style for messages and commands
set -g message-style "fg=cyan,bg=default"

