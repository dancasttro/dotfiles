# Navigation
# -------------------

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias c="clear"

# List alias git
st = git status
df = git diff
co = git checkout
psm = git push origin master
pom = git pull origin master
ci = git commit -m

# List all files colorized in long format
alias l="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# List only directories
alias lsd='ls -l | grep "^d"'

# NPM
alias nu="npm update"

# ------------------------------------------------------------------------------
# | OS X                                                                       |
# ------------------------------------------------------------------------------

# Hide/Show hidden files in Finder
alias hidehiddenfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias showhiddenfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"

# Disable/Enable Spotlight
alias spotoff="sudo mdutil -a -i off"
alias spoton="sudo mdutil -a -i on"

# Shutdown the System
alias offline="sudo shutdown -h now"

# ------------------------------------------------------------------------------
# | Managment and Tasks                                                        |
# ------------------------------------------------------------------------------

# Grunt
command -v grunt > /dev/null && alias grunt="grunt --stack" # Make Grunt print stack traces by default

# Bower
alias bowerup="npm update bower -g"

# Homebrew
alias brewup="brew update &&  \
              brew upgrade && \
              brew cleanup"

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

# mongo
alias mongorun='mongod --config /Users/danielcastro/mongodb/mongod.conf &'

# Apache
# Moved some alias to apache() function
alias httpd="sudo nano -w /etc/apache2/httpd.conf"
alias vhost="sudo nano -w /etc/apache2/extra/httpd-vhosts.conf"

# export PS1="\[\033[38m\]\u\[\033[32m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
