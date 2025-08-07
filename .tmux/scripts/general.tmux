# vim: filetype=tmux

# Enable mouse support
set -g mouse on

# Start window and pane indexing from 1
set -g base-index 1
set -g pane-base-index 1
set-window-option -g pane-base-index 1

# Renumber windows automatically when one is closed
set-option -g renumber-windows on

# Manage window title behavior
set -g set-titles off
set -g set-titles-string ''
set -g automatic-rename on
set -g automatic-rename-format "#{pane_current_command}"
bind '"' split-window -v -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"

# Style for copy-mode and search
set -g mode-style "bg=cyan,fg=black"

# Style for messages and commands
set -g message-style "fg=cyan,bg=default"

# Vim keybindings for copy mode
setw -g mode-keys vi

# Set style for prefix highlightinv
set -g @prefix_highlight_show_copy_mode 'on'
set -g @prefix_highlight_copy_mode_attr 'fg=yellow,bg=default,bold'
set -g @prefix_highlight_show_sync_mode 'on'
set -g @prefix_highlight_sync_mode_attr 'fg=green,bg=default,bold' 
set -g @prefix_highlight_empty_attr 'fg=magenta' 
set -g @prefix_highlight_prefix_prompt ''
set -g @prefix_highlight_copy_prompt ''
set -g @prefix_highlight_sync_prompt 'Sync'
set -g @prefix_highlight_empty_prompt ' '

# Yazi preview 
set -g allow-passthrough on
set -ga update-environment TERM
set -ga update-environment TERM_PROGRAM
