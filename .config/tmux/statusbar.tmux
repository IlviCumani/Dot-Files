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
set -g status-left "#{prefix_highlight}#[fg=magenta,bold]#S #[fg=cyan]| "

# Format for inactive and active windows
set -g window-status-format "#[fg=green]#I#[default]:#[fg=white]#W"
# set -g window-status-current-format " 󱎕#[fg=black bg=magenta bold]#I:#[fg=black bg=magenta]#W"

set -g window-status-current-format "#[fg=magenta,bg=default]#[fg=black,bg=magenta,bold]#I:#[fg=black,bg=magenta] #W#[fg=magenta,bg=default]"

# Status bar styling set to transparent
set -g status-style "bg=default,fg=default"

# Right side: time, date, battery and CPU status with icons
set -g status-right "#[fg=cyan]| #[fg=green] %H:%M #[fg=cyan]| #[fg=yellow] %d-%m #[fg=cyan]|#[fg=blue] 󱊣#{battery_percentage} #[fg=cyan]|#[fg=magenta]  #{cpu_percentage}"
