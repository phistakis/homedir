# .bash_profile

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

# added by Miniconda 2.2.2 installer
export PATH="/Users/Ashahar/anaconda/bin:$PATH"

##
# Your previous /Users/Ashahar/.bash_profile file was backed up as /Users/Ashahar/.bash_profile.macports-saved_2015-04-14_at_15:39:46
##

# MacPorts Installer addition on 2015-04-14_at_15:39:46: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

