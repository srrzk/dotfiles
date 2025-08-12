# If not interactive - return
[[ $- != *i* ]] && return

# 'Incident' prevention
set -o noclobber

shopt -s checkwinsize
shopt -s no_empty_cmd_completion

alias ls='eza'
alias grep='grep --color=auto'

alias ll='ls --almost-all -l --icons=auto'

alias v=nvim
alias d=docker
alias t=tmux

shopt -s histappend
HISTCONTROL="erasedups:ignorespace"
HISTSIZE=1000
HISTFILESIZE=2000

export EDITOR=nvim
export FZF_DEFAULT_OPTS='--color=16'
export MANPAGER='nvim +Man!'
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"


eval "$(starship init bash)"
eval "$(zoxide init --cmd=cd bash)"
eval "$(fzf --bash)"

source "$HOME/.local/share/bob/env/env.sh"
