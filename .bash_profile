# .bash_profile
source ~/.profile

# Get the aliases and functions
if [ -f ~/.profile ]; then
    . ~/.profile
fi
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  fi

##
# Your previous /Users/Ashahar/.bash_profile file was backed up as /Users/Ashahar/.bash_profile.macports-saved_2015-04-14_at_15:39:46
##

# MacPorts Installer addition on 2015-04-14_at_15:39:46: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# shell integration for iterm2
source ~/.iterm2_shell_integration.`basename $SHELL`

