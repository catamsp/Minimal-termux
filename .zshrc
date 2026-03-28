# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.

fastfetch
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Suppress the p10k warning by defining the parameter
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Powerlevel10k Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Note: zsh-autocomplete should come before some other plugins for best results
plugins=(
    git 
    zsh-completions 
    zsh-autocomplete 
    zsh-autosuggestions 
    zsh-syntax-highlighting 
    fzf-tab
)

source $ZSH/oh-my-zsh.sh

# zsh-autocomplete settings
# Limit the number of completions shown automatically
zstyle ':autocomplete:*' list-lines 8
# Press Enter to select the top completion if the menu is open
bindkey '\r' .accept-line
# Use the arrow keys to navigate the menu
bindkey '\e[A' up-line-or-history
bindkey '\e[B' down-line-or-history

# Aliases for modern tools
alias ls="eza --icons --group-directories-first"
alias ll="eza -lh --icons --group-directories-first"
alias la="eza -a --icons --group-directories-first"
alias lla="eza -lah --icons --group-directories-first"
alias cat="bat"
alias tree="eza --tree --icons"
alias grep="rg"
alias find="fd"
alias cls="clear"

# Fastfetch on startup (Minimal & Modern)

# Initialize modern tools
eval "$(zoxide init zsh --cmd cd)"
source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
