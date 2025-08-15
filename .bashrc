# If not interactive - return
[[ $- != *i* ]] && return

set -o noclobber
shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend

alias ls='ls --color'
alias grep='grep --color=auto'
alias ll='ls -lAh'
alias v="nvim"
alias d="docker"
alias t="tmux"
alias c="clear"

HISTCONTROL="erasedups:ignorespace"
HISTSIZE=1000
HISTFILESIZE=2000

PATH="$HOME/go/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/scripts:$PATH"

eval "$(starship init bash)"
eval "$(zoxide init --cmd=cd bash)"
eval "$(fzf --bash)"

eval "$(sesh completion bash)"
