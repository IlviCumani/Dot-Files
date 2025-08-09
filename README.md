
<h1 align="center">🦾 MIster Godly Tost's Dotfiles</h1>
<p align="center"><em>“To become a Super Hokage, your terminal must be legendary.”</em></p>

---

![Made with 💻](https://img.shields.io/badge/Made%20with-zsh,%20tmux,%20nvim%20and%20love%20%E2%9D%A4-blue)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)

<br/>

## 🚀 Quick Start

1. **Clone the repository**:
```bash
git clone --depth=1 git@github.com:IlviCumani/Dot-Files.git
```
2. **+ Install Homebrew (or I’ll lose all my respect for you 😤 )**:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. **Install Mandatory Dependencies**:
```bash
brew install stow git nvim tmux yazi
```
4. **Create symlinks for the configs**:
```bash
cd Dot-Files

# 🌀 Symlink ALL configs from this repo into your home directory
stow .

# 🎯 Only symlink specific configs (example: nvim, zsh, tmux)
stow nvim zsh tmux
```
---

<br/>

### 📺 Reference Guide

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

### Install other configurations
```bash
# Installl Oh My Zsh 🌈
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```bash
### 🧰 Optional but God-Tier Tools
brew install thefuck zoxide ripgrep lazygit
```

```bash
# 🦄 Without a Nerd Font, your terminal is basically wearing Crocs to a job interview
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

### 📺 Reference Guide

<div align="center">
   
🎥 **Terminal Setup Youtube Video**  

[![Terminal Upgrade Tutorial](https://img.youtube.com/vi/CF1tMjvHDRA/0.jpg)](https://www.youtube.com/watch?v=CF1tMjvHDRA)
</div> 

---

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
| [`tmux-plugins/tmux-battery`](https://github.com/tmux-plugins/tmux-battery) | Show battery status in tmux status bar |
| [`tmux-plugins/tmux-cpu`](https://github.com/tmux-plugins/tmux-cpu) | Show CPU usage in tmux status bar |

</div>

---
<br/>

### 📚 Resources & References

- [Oh My Zsh](https://ohmyz.sh/) — Your shell’s ninja toolkit 🥷  
- [NvChad](https://nvchad.com/) — The Neovim config with Hokage-level customization  
- [Yazi](https://yazi-rs.github.io/) — Blazing fast terminal file manager with style
- [GNU Stow](https://www.gnu.org/software/stow/) — Neatly organizes your dotfiles with smart symlinks   🎯  
- [TPM](https://github.com/tmux-plugins/tpm) — Easily install and manage tmux plugins


<br/>

---
<br/>
<br/>

<p align="center">
   <strong>🐢 Work hard, study well, and eat and sleep plenty. That's the Turtle Hermit way to learn 🐢</strong>
</p>



