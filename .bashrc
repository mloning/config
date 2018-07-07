# .bashrc

# AUTO-RUN SSH-AGENT
# - see https://help.github.com/articles/working-with-ssh-key-passphrases/#auto-launching-ssh-agent-on-git-for-windows
# - see https://docstore.mik.ua/orelly/networking_2ndEd/ssh/ch06_03.htm#FOOTNOTE-87
# - make sure ssh-agent1 and ssh-agent2 die on logout

env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
	    (umask 077; ssh-agent >| "$env")
	        . "$env" >| /dev/null ; }

		agent_load_env

		# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
		agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

		if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
			    agent_start
			        ssh-add
			elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
				    ssh-add
			    fi

			    unset env

# FURTHER DEFINITIONS
# Uncomment the following line if you don't like systemctl's auto-paging feature


# export SYSTEMD_PAGER=


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export PATH=/opt/anaconda/bin:$PATH

