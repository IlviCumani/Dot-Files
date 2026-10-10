# vim: filetype=tmux

# ======================
# Catppuccin Mocha palette
# ======================
set -g @nc            "#11111b"
set -g @base          "#1e1e2e"
set -g @surface       "#313244"
set -g @overlay       "#45475a"
set -g @muted         "#6c7086"
set -g @subtle        "#a6adc8"
set -g @text          "#cdd6f4"

set -g @red            "#f38ba8"
set -g @peach          "#fab387"
set -g @yellow         "#f9e2af"
set -g @green          "#a6e3a1"
set -g @teal           "#94e2d5"
set -g @sky            "#89dceb"
set -g @sapphire       "#74c7ec"
set -g @blue           "#89b4fa"
set -g @lavender       "#b4befe"
set -g @mauve          "#cba6f7"
set -g @pink           "#f5c2e7"
set -g @flamingo       "#f2cdcd"
set -g @rosewater      "#f5e0e0"

set -g @highlight_low  "#292738"
set -g @highlight_med  "#585b70"
set -g @highlight_high "#6c7086"

set -g @white          "#ffffff"
set -g @none           "default"

# ======================
# Prefix highlight colors
# ======================
set -g @prefix_highlight_copy_mode_attr "fg=#{@white},bg=#{@mauve},bold"
set -g @prefix_highlight_sync_mode_attr "fg=#{@white},bg=#{@mauve},bold"
set -g @prefix_highlight_empty_attr "fg=#{@white},bg=#{@mauve},bold"

set -g @prefix_highlight_bg "bg=#{@mauve}"
set -g @prefix_highlight_output_prefix ""

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

set -g status-style "bg=#{@none},fg=#{@mauve}"

# ======================
# Left side
# ======================
set -g status-left "\
#[bg=#{@mauve},fg=#{@white}] #{prefix_highlight}\
#[bg=#{@mauve}] \
#[fg=#{@white},bg=#{@mauve},bold]#S \
#[fg=#{@mauve},bg=#{@pink}]\
#[fg=#{@pink},bg=#{@surface}]\
#[fg=#{@surface},bg=#{@overlay}]"

# ======================
# Inactive window
# ======================
set -g window-status-format "\
#[bg=#{@overlay},fg=#{@subtle}] #W \
#[bg=#{@yellow},fg=#{@base}] #I \
#[fg=#{@yellow},bg=#{?#{==:#{window_index},#{last_window_index}},default,#{@overlay}}]"

# ======================
# Active window
# ======================
set -g window-status-current-format "\
#[bg=#{@overlay},fg=#{@blue},bold] #W \
#[bg=#{@blue},fg=#{@base},bold] #I \
#[fg=#{@blue},bg=#{?#{==:#{window_index},#{last_window_index}},default,#{@overlay}}]"

# ======================
# Right side — system info
# ======================
set -g status-right "\
#[bg=#{@none},fg=#{@sky}]\
#[bg=#{@sky},fg=#{@base}]  \
#[bg=#{@surface},fg=#{@sky}] %d-%m \
#[bg=#{@surface},fg=#{@pink}]\
#[bg=#{@pink},fg=#{@base}]  \
#[bg=#{@surface},fg=#{@pink}] #{battery_percentage} \
#[bg=#{@surface},fg=#{@red}]\
#[bg=#{@red},fg=#{@base}]  \
#[bg=#{@surface},fg=#{@red}] #{cpu_percentage} "

# ======================
# Copy mode
# ======================
set -g mode-style "bg=#{@mauve},fg=#{@base}"

# ======================
# Messages and commands
# ======================
set -g message-style "fg=#{@blue},bg=#{@base}"
set -g message-command-style "fg=#{@base},bg=#{@yellow},bold"

