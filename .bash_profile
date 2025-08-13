if uwsm check may-start; then
	exec uwsm start hyprland-uwsm.desktop
fi

if [[ -r "/usr/share/nvm/init-nvm.sh" ]]; then
  source "/usr/share/nvm/init-nvm.sh"
fi

[[ -f ~/.bashrc ]] && . "$HOME/.bashrc"
