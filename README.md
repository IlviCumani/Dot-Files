<h1 align="center">🏴‍☠️ MIster Godly Tost's Dotfiles</h1>
<p align="center"><em>“To become a Super Hokage, ye must first become the Pirate King of Terminals.”</em></p>

---

![Made with 💻](https://img.shields.io/badge/Made%20with-zsh,%20tmux,%20nvim%20and%20rum%20%E2%9D%A4-blue)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)

<br/>

## 🏴‍☠️ Quick Start Before We Set Sail

1. **Clone this cursed treasure chest**:

```bash
git clone --depth=1 git@github.com:IlviCumani/Dot-Files.git

```

2. **⚓ Install Homebrew (or I’ll make ye walk the plank 🏴‍☠️)**:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. **Hoist the Black Flag & Install Dependencies**:

```bash
brew install stow git nvim tmux yazi
brew install --cask nikitabobko/tap/aerospace
```

4. **Forge Symlinks for Yer Config Scrolls**:

```bash
cd Dot-Files

# 🌀 Link ALL me cursed configs into yer home
stow .

# 🎯 Or just link the treasures ye need (example: nvim, zsh, tmux)
stow nvim zsh tmux
```

---

<br/>

### 🦜 Map to the Booty — Reference Guide

<div align="center">

🎥 **How to Plunder Dotfiles Like a True Pirate**

[![The best way to manage yer dotfiles](https://img.youtube.com/vi/y6XCebnB9gs/0.jpg)](https://www.youtube.com/watch?v=y6XCebnB9gs&t=292s)

</div>

---

<br/>
<br/>

## ✨ Features Worth Pillagin’

- 🧙 Shell Magic: `zsh`, `tmux`, `thefuck`, and more
- ⚓ Neovim: Now powered by **LazyVim** — LSP, Copilot, Treesitter, Telescope, TypeScript sorcery, and a UI shinier than me hook
- 🔧 File Management: [Yazi](https://github.com/sxyazi/yazi) with Catppuccin theme
- 🪄 iTerm2 Styles: Catppuccin & TokyoNight themes, aye

---

<br/>
<br/>

## ⚙️ Terminal Setup — For Proper Pirates Only

- Shell: `zsh` with Nerd Font, autocomplete, and instant prompt magic
- Terminal: iTerm2 with Catppuccin & TokyoNight
- Powerlevel10k makin’ yer prompt look like buried treasure
- `.zshrc` and plugin booty included

### Install Other Pirate Upgrades

```bash
# Install Oh My Zsh ⚔️
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```bash
# 🧰 Optional but Legendary Tools
brew install thefuck zoxide ripgrep lazygit
```

```bash
# 🦄 Without Nerd Fonts, yer terminal looks like a landlubber's tavern sign
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

### 🗺️ Terminal Upgrade Tutorial

<div align="center">

🎥 **Terminal Setup for Pirates**

[![Terminal Upgrade Tutorial](https://img.youtube.com/vi/CF1tMjvHDRA/0.jpg)](https://www.youtube.com/watch?v=CF1tMjvHDRA)

</div>

---

<br/>

## 🔁 Tmux — Yer Pirate Command Deck

- Modular config in `.config/tmux/`
- Custom status bar shinier than cursed gold
- Mouse mode + Vim-style keybindings
- Integrations: `tmux-resurrect` so ye never lose yer sessions
- Prefix key: `Ctrl + Space`
- `prefix + r` → Reload config faster than a cannon reload

```bash
# Hoist the Tmux Plugin Manager (TPM)

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

<br/>

<div align='center'>

| Plugin                                                                                        | Treasure Found                      |
| --------------------------------------------------------------------------------------------- | ----------------------------------- |
| [`tmux-plugins/tmux-resurrect`](https://github.com/tmux-plugins/tmux-resurrect)               | Save & restore tmux voyages         |
| [`tmux-plugins/tmux-prefix-highlight`](https://github.com/tmux-plugins/tmux-prefix-highlight) | Lights up when ye hit the prefix    |
| [`tmux-plugins/tmux-battery`](https://github.com/tmux-plugins/tmux-battery)                   | Keeps yer battery treasure in sight |
| [`tmux-plugins/tmux-cpu`](https://github.com/tmux-plugins/tmux-cpu)                           | Monitor CPU loot like a hawk        |

</div>

---

<br/>

## 🛰️ Aerospace — The Pirate’s Crow’s Nest

- Launches on boot like a cannonball
- Active window gets a shiny border indicator
- Fullscreen toggle via `Alt + Shift + F`
- Auto-assign apps to workspaces: Spotify (M), Slack (S), WhatsApp (W), Terminal (T)
- Mouse cursor magically centers on yer active window

<br/>

🔗 The [`borders`](https://github.com/FelixKratz/JankyBorders) plugin’s GitHub repository

```bash
# Install the mystical 'borders'
brew tap FelixKratz/formulae
brew install borders
```

```toml
# Set the colors of yer ship’s borders
after-startup-command = [
    'exec-and-forget borders active_color=0xffe1e3e4 inactive_color=0xff494d64 width=5.0'
]
```

<br/>

🙅🏻‍☠️ I don’t use SketchyBar meself, but ye may need it for fancier loot:  
[SketchyBar setup guide](https://felixkratz.github.io/SketchyBar/setup)

```bash
brew tap FelixKratz/formulae
brew install sketchybar

mkdir -p ~/.config/sketchybar/plugins
cp $(brew --prefix)/share/sketchybar/examples/sketchybarrc ~/.config/sketchybar/sketchybarrc
cp -r $(brew --prefix)/share/sketchybar/examples/plugins/ ~/.config/sketchybar/plugins/
```

---

<br/>

### 📚 Scrolls & References

- [Oh My Zsh](https://ohmyz.sh/) — Yer shell’s cutlass 🗡️
- [LazyVim](https://lazyvim.org/) — The Hokage-approved Neovim distro 🥷
- [Yazi](https://yazi-rs.github.io/) — A pirate’s file manager o’ choice
- [GNU Stow](https://www.gnu.org/software/stow/) — Symlink magic to keep yer dotfiles tidy 🎯
- [TPM](https://github.com/tmux-plugins/tpm) — Manage tmux booty easily
- [Aerospace](https://github.com/nikitabobko/AeroSpace) — Window tiling magic fit fer a captain

<br/>

---

<br/>
<br/>

<p align="center">
   <strong>🏴‍☠️ Work hard, plunder smart, and drink plenty o’ rum. That’s the Pirate Hokage way! 🏴‍☠️</strong>
</p>
