export FZF_DEFAULT_OPTS="--color=16 \
--color=border:bright-black \
--border=sharp \
--preview-window=border-sharp "

export EDITOR="nvim"
export MANPAGER='nvim +Man!'
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
export LIBVA_DRIVER_NAME="iHD"
export npm_config_prefix="$HOME/.local"

if uwsm check may-start; then
	exec uwsm start hyprland-uwsm.desktop
fi

[[ -f ~/.bashrc ]] && . "$HOME/.bashrc"
