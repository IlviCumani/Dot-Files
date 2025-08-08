# vim: filetype=tmux

# set reload command
unbind r
bind r source-file ~/.tmux.conf \; display "Config reloaded!" 

# set leader key
unbind C-b
set -g prefix C-Space
bind C-Space send-prefix

# set navigation keys like vim
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# toggle between last window
bind b last-window

bind S choose-session

# tmux resurrect bindings
set -g @resurrect-save 'O'
set -g @resurrect-restore 'o'
