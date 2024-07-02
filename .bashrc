#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


export LD_LIBRARY_PATH=/usr/local/lib

if [[ "$TERM" == "xterm-kitty" ]]; then
    # Commands to run when using Kitty terminal
    fastfetch
    cd ~

else

	if [[ "$TERM" == "xterm-256color" ]]; then
	    # Commands to run when NOT using codes terminal
   		#hyfetch
  		
		 # echo hi fagget
	
	./codestartup
	cd ~

	else
	   hyfetch
	   cd ~/'code projects'
	   ./start_up
	   cd ~
	fi
fi

##hyfetch
##fastfetch
