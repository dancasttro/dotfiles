dotfiles
========

My dotfiles


# Content

 - Homebrew
 - Github
 - Terminal
 - macOS
 - VS Code

# Usage


## Homebrew

Install Homebrew

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Dependencies

  - Git
  - nvm
  - wget
  - Yarn

```
brew install git heroku nvm rvm wget yarn
```

### Applications

 - App Cleaner
 - Google Chrome
 - Flume
 - Franz
 - Slack
 - Sourcetree
 - Spotify
 - VS Code
 - VLC

```
brew cask install appcleaner google-chrome slack sourcetree spotify visual-studio-code vlc
```

## VS Code

### VS Code Plugins

 - Better Comments
 - Path Intellisense
 - ESlint
 - One Dark Pro Theme
 - Gitlens
 - EditorConfig
 - Prettier
 - Auto Close Tag
 - Sublime Keybindings
 - Material Icon Theme
 - Lorem Ipsum
 - JavaScript Snippets

 ```
 code --install-extension aaron-bond.better-comments && code --install-extension christian-kohler.path-intellisense && code --install-extension dbaeumer.vscode-eslint && code --install-extension eamodio.gitlens && code --install-extension EditorConfig.EditorConfig && code --install-extension esbenp.prettier-vscode && code --install-extension formulahendry.auto-close-tag && code --install-extension ms-vscode.sublime-keybindings && code --install-extension PKief.material-icon-theme && code --install-extension Tyriar.lorem-ipsum && code --install-extension xabikos.JavaScriptSnippets && code --install-extension jpoissonnier.vscode-styled-components && code --install-extension CoenraadS.bracket-pair-colorizer && code --install-extension VisualStudioExptTeam.vscodeintellicode && code --install-extension zhuangtongfa.Material-theme
 ```

 ### VS Code Settings

```
{
  "workbench.colorTheme": "One Dark Pro",
  "workbench.iconTheme": "material-icon-theme",
  "workbench.activityBar.visible": true,
  "workbench.startupEditor": "newUntitledFile",
  "editor.minimap.enabled": false,
  "editor.fontSize": 10,
  "editor.suggestSelection": "first",
  "editor.tabSize": 2,
  "editor.wordWrap": "on",
  "editor.formatOnPaste": true,
  "editor.multiCursorModifier": "ctrlCmd",
  "editor.snippetSuggestions": "top",
  "explorer.confirmDelete": false,
  "files.insertFinalNewline": true,
  "files.exclude": {
    "**/.git": true,
    "**/.DS_Store": true,
    "**/.vscode": true,
    "**/__pycache__": true,
    "**/.pytest_cache": true,
    "**/node_modules": true,
    "node_modules": true,
    "venv": true,
    "*.sublime-*": true,
    "env*": true
    },
    "search.exclude": {
    "**/node_modules": true,
    "**/bower_components": true,
    "**/env": true,
    "**/venv": true
    },
  "files.watcherExclude": {
    "**/.git/objects/**": true,
    "**/.git/subtree-cache/**": true,
    "**/node_modules/**": true,
    "**/env/**": true,
    "**/venv/**": true,
    "env-*": true
    },
    "markdown.preview.fontSize": 10,
}
```

## Git Settings

Make it even easier version control ~/.gitconfig

```
[user]
    name = Daniel Castro
    email = dancasttro@gmail.com
    signingkey = "Your Sign In Key"

[branch]
    autosetupmerge = always

[alias]
    ci = commit -am
    lo = log --pretty=format:'%an - %h %s %ar'
    st = status
    br = branch
    sw = show
    df = diff
    fe = fetch
    mg = merge
    rb = rebase
    rt = remote -v
    co = checkout
    po = push origin
    pu = pull origin
    pom = push origin master
    pum = pull origin master
    com = checkout master
    pod = push origin develop
    pud = pull origin develop
    cod = checkout develop
    pog = push origin gh-pages
    pug = pull origin gh-pages
    cog = checkout gh-pages
    lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative

[core]
    excludesfile = /Users/dancasttro/.gitignore_global

[commit]
    template = ~/.stCommitMsg

[filter "lfs"]
    clean = git-lfs clean -- %f
    smudge = git-lfs smudge -- %f
    required = true
    process = git-lfs filter-process

```

## Terminal



```
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

# Apache
# Moved some alias to apache() function
alias httpd="sudo nano -w /etc/apache2/httpd.conf"
alias vhost="sudo nano -w /etc/apache2/extra/httpd-vhosts.conf"

#Server Python
alias pyserver="python -m SimpleHTTPServer 9001"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
```
