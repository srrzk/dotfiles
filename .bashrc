# If not interactive - return
[[ $- != *i* ]] && return

set -o noclobber
shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend

alias ls='eza'
alias grep='grep --color=auto'
alias ll='ls --almost-all -l --icons=auto'
alias v="nvim"
alias d="docker"
alias t="tmux"

HISTCONTROL="erasedups:ignorespace"
HISTSIZE=1000
HISTFILESIZE=2000

export EDITOR="nvim"
export FZF_DEFAULT_OPTS='--color=16'
export MANPAGER='nvim +Man!'
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
export GOPROXY="direct"

PATH="$HOME/go/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"

eval "$(starship init bash)"
eval "$(zoxide init --cmd=cd bash)"
eval "$(fzf --bash)"

