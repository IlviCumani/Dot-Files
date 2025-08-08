<h1 align="center">🦾 MIster Godly Tost's Dotfiles</h1>
<p align="center"><em>“To become a Super Hokage, your terminal must be legendary.”</em></p>

---

<br/>
<br/>

## 📺 Reference Guide

🎥 **Dotfiles Management YouTube Video**  
[![The best way to manage your dotfiles](https://img.youtube.com/vi/y6XCebnB9gs/0.jpg)](https://www.youtube.com/watch?v=y6XCebnB9gs&t=292s)


---

<br/>
<br/>

## ✨ Features

- 🧙 Terminal: `zsh`, `tmux`, `thefuck`, and more
- 🎨 Neovim (NvChad): LSP, Copilot, Treesitter, Telescope, TypeScript support, and beautiful UI
- 🔧 File Manager: [Yazi](https://github.com/sxyazi/yazi) with Catppuccin theme
- 🍺 Package Management with `brew bundle`
- 🪄 Stylized iTerm2: Catppuccin & TokyoNight themes
- 🔁 Git-based dotfiles management
- 💾 `stow` integration for modular config control
- ⌨️ Custom keymaps across nvim, tmux, and yazi
- 🪛 `setup.sh` ready structure (coming soon)

---

<br/>
<br/>


## ⚙️ Terminal Setup

- Shell: `zsh` with Nerd Font, autocomplete, and instant prompt
- Terminal: iTerm2 with Catppuccin & TokyoNight themes
- Powerlevel10k for shell theming
- `.zshrc` and plugin setup included

---

<br/>
<br/>


## 🔁 Tmux

- Modular config in `.config/tmux/`
- Custom status bar, mouse mode, and prefix-highlighting
- Vim-style keybindings
- Integrations: tmux-resurrect support, transparent background
- `prefix + r` → Reload tmux config  

---

<br/>
<br/>

## 🗂 Yazi File Manager

- Fully themed with Catppuccin Macchiato
- Located in `.config/yazi/`
- shortcut `y`

---

<br/>
<br/>

## 🧪 Tools Included

Below are the tools currently installed on my system, with install instructions and references:

| Tool | Description | Install Command | Link |
|------|-------------|-----------------|------|
| **[Homebrew]** | Package manager for macOS/Linux | `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"` | [brew.sh](https://brew.sh) |
| **[The Fuck]** | Auto-fix your last console command | `brew install thefuck` | [github.com/nvbn/thefuck](https://github.com/nvbn/thefuck) |
| **[GNU Stow]** | Symlink manager for dotfile modularity | `brew install stow` | [www.gnu.org/software/stow](https://www.gnu.org/software/stow/) |
| **[Zoxide]** | Smarter `cd` command replacement | `brew install zoxide` | [github.com/ajeetdsouza/zoxide](https://github.com/ajeetdsouza/zoxide) |
| **[ripgrep]** | Blazing fast search tool (better grep) | `brew install ripgrep` | [github.com/BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) |
| **[iTerm2]** | Terminal emulator for macOS | Manual download | [iterm2.com](https://iterm2.com/) |

---

<br/>
<br/>

## 🔄 Tmux Plugin Manager (TPM)

TPM helps you install and manage tmux plugins easily.

### 📦 Install TPM

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then reload tmux:

```bash
# Inside tmux
prefix + I  # Installs plugins
```

### 📚 Plugins Used

| Plugin | Purpose |
|--------|---------|
| [`tmux-plugins/tmux-resurrect`](https://github.com/tmux-plugins/tmux-resurrect) | Save & restore tmux sessions |
| [`tmux-plugins/tmux-prefix-highlight`](https://github.com/tmux-plugins/tmux-prefix-highlight) | Visual prefix key indicator in statusbar |


---

<br/>
<br/>

## 📜 License

MIT — take and use anything you like. May your terminal be swift, your tools sharp, and your mind sharper.

---

<p align="center">
  <strong>🌀 Aim High, Dream Big. Become the Super Hokage of the CLI 🌀</strong>
</p>
