# Minimal-termux

A minimal, modern, and high-performance Termux setup.

## Features
- **Shell:** Zsh with Oh My Zsh
- **Theme:** Powerlevel10k (Lean/Modern)
- **Plugins:** Autosuggestions, Syntax Highlighting, Autocomplete, FZF-tab
- **Tools:** Starship, Fastfetch, Eza, Bat, Zoxide, FD, Ripgrep, Micro
- **Customizations:** Modern aliases, Termux appearance (colors & fonts)

## One-Click Installation

Run the following command in your Termux:

```bash
pkg install git -y && git clone https://github.com/[YOUR_USERNAME]/Minimal-termux && cd Minimal-termux && chmod +x install.sh && ./install.sh
```

*(Note: Replace `[YOUR_USERNAME]` with your actual GitHub username before running)*

## Manual Setup
If you already have the repository:
1. `cd Minimal-termux`
2. `chmod +x install.sh`
3. `./install.sh`

## Post-Installation
After the script finishes, restart Termux or run:
```bash
source ~/.zshrc
```

## Included Tools & Aliases
- `ls` → `eza` (Modern ls)
- `cat` → `bat` (Syntax highlighting)
- `cd` → `zoxide` (Smart jumping)
- `grep` → `rg` (Ripgrep)
- `find` → `fd` (Modern find)
- `cls` → `clear`

## Important Note
This setup does **not** include any personal information, SSH keys, or GitHub tokens. You will need to re-authenticate with `gh auth login` if you use the GitHub CLI.
