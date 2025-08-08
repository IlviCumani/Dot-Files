<h1 align="center">🦾 MIster Godly Tost's Dotfiles</h1>
<p align="center"><em>“To become a Super Hokage, your terminal must be legendary.”</em></p>

---

<br/>
<br/>

## 🚀 Quick Start

1. **Clone the repository**:
```bash
git colne --depth=1 git@github.com:IlviCumani/Dot-Files.git
```
2. **Install brew if not already installed i will loose all my respect for you**:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. **Install Mandatory Dependencies**:
```bash
brew install stow 
brew install git
brew install nvim
brew install tmux 
brew install yazi
```
4. **Create symlinks for the configs**:
```bash
cd Dot-Files
stow .
```
---

<br/><br/>

## 📺 Reference Guide

<div align="center">
   
🎥 **Dotfiles Management YouTube Video**  

[![The best way to manage your dotfiles](https://img.youtube.com/vi/y6XCebnB9gs/0.jpg)](https://www.youtube.com/watch?v=y6XCebnB9gs&t=292s)

</div> 

---

<br/>
<br/>

## ✨ Features

- 🧙 Terminal: `zsh`, `tmux`, `thefuck`, and more
- 🎨 Neovim (NvChad): LSP, Copilot, Treesitter, Telescope, TypeScript support, and beautiful UI
- 🔧 File Manager: [Yazi](https://github.com/sxyazi/yazi) with Catppuccin theme
- 🪄 Stylized iTerm2: Catppuccin & TokyoNight themes

---

<br/>
<br/>


## ⚙️ Terminal Setup

- Shell: `zsh` with Nerd Font, autocomplete, and instant prompt
- Terminal: iTerm2 with Catppuccin & TokyoNight themes
- Powerlevel10k for shell theming
- `.zshrc` and plugin setup included

```bash
# Install optional tools 
brew install thefuck 
brew install Zoxide
brew install ripgrep
brew install lazygit 
```
---

<br/>
<br/>


## 🔁 Tmux

- Modular config in `.config/tmux/`
- Custom status bar, mouse mode, and prefix-highlighting
- Vim-style keybindings
- Integrations: tmux-resurrect support, transparent background
- prefix key is `Ctrl-Space`
- `prefix + r` → Reload tmux config  

<br/>

```bash
# Install TPM (Tmux Plugin Manager)

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

<br/>

<div align='center'>

| Plugin | Purpose |
|--------|---------|
| [`tmux-plugins/tmux-resurrect`](https://github.com/tmux-plugins/tmux-resurrect) | Save & restore tmux sessions |
| [`tmux-plugins/tmux-prefix-highlight`](https://github.com/tmux-plugins/tmux-prefix-highlight) | Visual prefix key indicator in statusbar |
| ['tmux-plugins/tmux-battery'](https://github.com/tmux-plugins/tmux-battery) | Show battery status in tmux status bar |
| ['tmux-plugins/tmux-cpu'](https://github.com/tmux-plugins/tmux-cpu) | Show CPU usage in tmux status bar |

</div>

---

<br/>
<br/>

<p align="center">
  <strong>🌀 Aim High, Dream Big. Become the Super Hokage of the CLI 🌀</strong>
</p>
