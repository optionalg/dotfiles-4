# Restrictive umask
umask 077

# Disable ctrl-s in screen
stty ixoff -ixon

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
