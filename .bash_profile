if [ -n "$BASH_VERSION" ]; then
	# source global definitions
	if [ -f /etc/bashrc ]; then
		. /etc/bashrc 
	fi
			
	# include local/user .bashrc if present
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi
