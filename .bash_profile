# Navigation
# -------------------

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias c="clear"

# List all files colorized in long format
alias l="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# List only directories
alias lsd='ls -l | grep "^d"'

# NPM
alias nu="npm update"

# ------------------------------------------------------------------------------
# | Development (based on my workflow)                                         |
# ------------------------------------------------------------------------------

# Daily stuff
alias subl='open -a "/Applications/Sublime Text.app"'
alias db="cd ~/Dropbox"
alias dbp="cd ~/Dropbox/projects"
alias dl="cd ~/Downloads"
alias t="cd ~/temp"
alias s="cd ~/Sites"
alias ws="cd ~/Workspace"
alias h="history"
alias o="open ."
alias nh="node --harmony"

# dropbox
alias jobs='cd ~/Dropbox/jobs'
alias labs='cd ~/Dropbox/labs'

# Search
alias howto="open http://stackoverflow.com/search?q= "

# Apache
# Moved some alias to apache() function
alias httpd="sudo nano -w /etc/apache2/httpd.conf"
alias vhost="sudo nano -w /etc/apache2/extra/httpd-vhosts.conf"

