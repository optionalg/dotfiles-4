# Restrictive umask
umask 077

# Disable ctrl-s in screen
stty ixoff -ixon

# cal alias (week starts on monday)
alias cal='ncal -MC'

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
