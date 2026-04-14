<p align="center">
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="400" alt="banner"/>
</p>

<h1 align="center">⚡ Minimal Termux</h1>

<p align="center">
  <em>A minimal, modern, and high-performance Termux setup — bathed in Tokyo Night darkness.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Shell-Zsh-blue?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Shell"/>
  <img src="https://img.shields.io/badge/Theme-Tokyo%20Night-7aa2f7?style=for-the-badge" alt="Theme"/>
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge" alt="Status"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/🐚-Termux-000000?style=for-the-badge&color=7aa2f7" alt="Termux"/>
  <img src="https://img.shields.io/badge/🔧-Zsh-FFD700?style=for-the-badge&color=blue" alt="Zsh"/>
  <img src="https://img.shields.io/badge/🌙-Oh%20My%20Zsh-c6d0f5?style=for-the-badge&color=7aa2f7" alt="Oh My Zsh"/>
  <img src="https://img.shields.io/badge/🎨-Tokyo%20Night-1a1b26?style=for-the-badge&color=7aa2f7" alt="Tokyo Night"/>
  <img src="https://img.shields.io/badge/📁-Dotfiles-a6da95?style=for-the-badge&color=7aa2f7" alt="Dotfiles"/>
  <img src="https://img.shields.io/badge/⚡-P10k-ed8796?style=for-the-badge&color=7aa2f7" alt="P10k"/>
  <img src="https://img.shields.io/badge/🚀-Starship-f5a97f?style=for-the-badge&color=7aa2f7" alt="Starship"/>
  <img src="https://img.shields.io/badge/💻-Linux-f0f0f5?style=for-the-badge&color=7aa2f7" alt="Linux"/>
  <img src="https://img.shields.io/badge/📱-Android-a6da95?style=for-the-badge&color=7aa2f7" alt="Android"/>
  <img src="https://img.shields.io/badge/🖥️-CLI%20Tools-8aadf4?style=for-the-badge&color=7aa2f7" alt="CLI Tools"/>
</p>

<p align="center">
  <img src="https://img.shields.io/github/stars/catamsp/Minimal-termux?style=for-the-badge&color=c6d0f5&logo=github" alt="Stars"/>
  <img src="https://img.shields.io/github/forks/catamsp/Minimal-termux?style=for-the-badge&color=7aa2f7&logo=github" alt="Forks"/>
  <img src="https://img.shields.io/github/license/catamsp/Minimal-termux?style=for-the-badge&color=a6da95" alt="License"/>
</p>

---

## ✨ Features

| Component        | Tool / Plugin                                                                 |
|------------------|-------------------------------------------------------------------------------|
| **Shell**        | [Zsh](https://www.zsh.org/) + [Oh My Zsh](https://ohmyz.sh/)                  |
| **Prompt Theme** | [Powerlevel10k](https://github.com/romkatv/powerlevel10k) — Lean/Modern      |
| **Plugins**      | Autosuggestions · Syntax Highlighting · Autocomplete · FZF-tab                |
| **CLI Tools**    | Starship · Fastfetch · Eza · Bat · Zoxide · FD · Ripgrep · Micro              |
| **Appearance**   | Tokyo Night Dark · Custom Colors · Powerline Fonts                           |

---

## 🚀 One-Click Install

Copy. Paste. Done.

```bash
pkg install git -y && git clone https://github.com/catamsp/Minimal-termux && cd Minimal-termux && chmod +x install.sh && ./install.sh
```

> [!TIP]
> Sit back and let the script do all the heavy lifting. It installs everything you need automatically.

---

## 🛠️ Manual Setup

Already cloned? Just three steps:

```bash
cd Minimal-termux
chmod +x install.sh
./install.sh
```

---

## 🔄 Post-Installation

After the script finishes, restart Termux or reload your config:

```bash
source ~/.zshrc
```

---

## 🧰 Included Tools & Aliases

Your terminal, but *way* smarter:

| Alias | Replaces | Upgrade                                  |
|-------|----------|------------------------------------------|
| `ls`  | `ls`     | → **[eza](https://github.com/ogham/exa)** — Modern, colorful directory listings |
| `cat` | `cat`    | → **[bat](https://github.com/sharkdp/bat)** — Syntax highlighting & git integration |
| `cd`  | `cd`     | → **[zoxide](https://github.com/ajeetdsouza/zoxide)** — Intelligent directory jumping |
| `grep`| `grep`   | → **[ripgrep](https://github.com/BurntSushi/ripgrep)** — Blazing fast regex search |
| `find`| `find`   | → **[fd](https://github.com/sharkdp/fd)** — Simple, fast file finding |
| `cls` | `clear`  | → **clear** — Quick shortcut to clean your screen |

---

## 🎨 Preview

<p align="center">
  <em>Tokyo Night Dark — crisp, calming, and easy on the eyes.</em>
</p>

> 💡 *Pair with a Termux styling app for the full Tokyo Night experience — colors, fonts, and transparency all tuned to perfection.*

---

## ⚠️ Important Note

This setup does **not** include any personal information, SSH keys, or GitHub tokens. You will need to re-authenticate if you use the GitHub CLI:

```bash
gh auth login
```

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/catamsp">catamsp</a>
</p>

<p align="center">
  <sub>⭐ If this setup helped you, consider giving it a star!</sub>
</p>
