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
alias npv="npm outdated"

# ------------------------------------------------------------------------------
# | Development (based on my workflow)                                         |
# ------------------------------------------------------------------------------

# Daily stuff
alias dl="cd ~/Downloads"
alias t="cd ~/temp"
alias ws="cd ~/Workspace"
alias h="history"
alias o="open ."
alias nh="node --harmony"

# Search
alias howto="open http://stackoverflow.com/search?q= "

# Apache
# Moved some alias to apache() function
alias httpd="sudo nano -w /etc/apache2/httpd.conf"
alias vhost="sudo nano -w /etc/apache2/extra/httpd-vhosts.conf"

#Server Python
alias pyserver="python -m SimpleHTTPServer 9001"

# Reload Bashrc
alias relaod="source ~/zshrc"
