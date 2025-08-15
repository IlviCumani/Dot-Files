# vim: filetype=tmux

# Enable and position status bar
set -g status on
set -g status-position bottom
set -g status-interval 10 
set -g status-justify left

# Define max length of status sections
set -g status-left-length 25
set -g status-right-length 60


# Left side: session info with icon
set -g @prefix_highlight_fg 'cyan' # default is 'colour231'
set -g @prefix_highlight_bg 'default'  # default is 'colour04'
set -g status-left "#{prefix_highlight} #[fg=magenta,bold]#S "

# Format for inactive and active windows
set -g window-status-format "#[fg=cyan]#I#[default]:#[fg=cyan]#W"
set -g window-status-current-format "#[fg=blue,bg=default]#[fg=cyan,bg=blue,bold]#I:#[fg=cyan,bg=blue] #W#[fg=blue,bg=default]"
# Status bar styling set to transparent
set -g status-style "bg=default,fg=default"

# Right side: time, date, battery and CPU status with icons

set -g status-right " #[fg=cyan] %H:%M  #[fg=yellow] %d-%m  #[fg=blue]󱊣 #{battery_percentage}  #[fg=magenta] #{cpu_percentage}"
