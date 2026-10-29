

# vim: filetype=tmux

# ======================
# Cyberpunk 2077 palette
# ======================
set -g @nc             "#040A10"
set -g @base           "#210E15"
set -g @surface        "#331319"
set -g @overlay        "#14101F"
set -g @muted          "#272932"
set -g @subtle         "#9370DB"
set -g @text           "#5DF4FE"
set -g @love           "#FB3048"
set -g @gold           "#FDF500"
set -g @rose           "#FF5048"
set -g @pine           "#710100"
set -g @foam           "#5DF4FE"
set -g @iris           "#CB1DCD"
set -g @leaf           "#28C775"
set -g @highlight_low  "#040A10"
set -g @highlight_med  "#14101F"
set -g @highlight_high "#272932"
set -g @white          "#FDF500"
set -g @none           "default"

# ======================
# Prefix highlight colors
# ======================
set -g @prefix_highlight_copy_mode_attr "fg=#{@nc},bg=#{@foam},bold"
set -g @prefix_highlight_sync_mode_atte "fg=#{@nc},bg=#{@foam},bold"
set -g @prefix_highlight_empty_attr "fg=#{@nc},bg=#{@love},bold"
set -g @prefix_highlight_bg 'bg=#{@love}'
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
set -g status-style "bg=#{@nc},fg=#{@love}"

# ======================
# Left side / prefix + session
# ======================
set -g status-left "\
#[fg=#{@love},bg=#{@nc}]\
#[fg=#{@nc},bg=#{@love},bold] #{prefix_highlight}#[bg=#{@love}]  #[bg=#{@foam}]\
#[fg=#{@nc},bg=#{@foam},bold] #S \
#[fg=#{@foam},bg=#{@highlight_med}]"

# ======================
# Inactive windows
# Bright, readable cyan titles
# ======================

set -g window-status-format "\
#[fg=#{@love},bg=#{@highlight_med}] #W \
#[fg=#{@highlight_med},bg=#{@love}]\
#[bg=#{@love},fg=#{@highlight_med}] #I \
#[fg=#{@love},bg=#{@highlight_med}]"


# ======================
# Active window
# Neon red with cyan transition
# ======================

set -g window-status-current-format "\
#[fg=#{@gold},bg=#{@highlight_med},bold] #W \
#[fg=#{@highlight_med},bg=#{@gold}]\
#[bg=#{@gold},fg=#{@highlight_med},bold] #I \
#[fg=#{@gold},bg=#{@highlight_med}]"


# ======================
# Right side / connected system info
# KEEP AS-IS
# ======================
set -g status-right "\
#[fg=#{@foam},bg=#{@nc}]\
#[fg=#{@nc},bg=#{@foam},bold]  %d-%m \
#[fg=#{@love},bg=#{@foam}]\
#[fg=#{@nc},bg=#{@love},bold]  #{battery_percentage} \
#[fg=#{@gold},bg=#{@love}]\
#[fg=#{@nc},bg=#{@gold},bold]  #{cpu_percentage}#[fg=#{@gold}, bg=#{@nc}]"

# ======================
# Copy mode / search
# ======================
set -g mode-style "bg=#{@foam},fg=#{@nc}"

# ======================
# Messages and commands
# ======================
set -g message-style "fg=#{@foam},bg=#{@nc},bold"

