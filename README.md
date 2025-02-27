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
brew install git nvm wget yarn
```

### Applications

 - App Cleaner
 - Google Chrome
 - Slack
 - Spotify
 - VS Code
 - VLC

```
brew cask install appcleaner google-chrome slack spotify visual-studio-code vlc
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
[github]
    user = dancasttro
[color]
    diff = auto
    grep = auto
    interactive = auto
    status = auto
    branch = auto
    status = auto
[color "branch"]
    current = yellow reverse
    local = yellow
    remote = green
[color "diff"]
    meta = yellow bold
    frag = magenta bold
    old = red bold
    new = green bold
[color "status"]
    added = yellow
    changed = green
    untracked = cyan
[alias]
    clean-tags=for-each-ref --format="%(refname:short)" refs/tags/* | xargs git tag -d && git fetch --tags
    st = status -sb
    ci = commit -m
    br = branch
    df = diff
    lg = log -pgit ps
    co = checkout
    fu = fetch upstream
    tree = log --graph --pretty=oneline --decorate
    pom = pull origin master
    ps = push
    pst = push --tags
    pl = pull
    pp = !"echo 'Pull'; git pull; echo 'Push'; git push"
    amend = commit --amend -C HEAD
    ll   = log --pretty=oneline --decorate --abbrev-commit --max-count=15
    lll  = git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative
    rn = log -M
    short = shortlog -s -n
    # Displays active users in the repository in the past 6 months
    active = shortlog --numbered --summary --email --no-merges --since="6 months"
[core]
	excludesfile = /Users/danielcastro/.gitignore_global
[push]
    default = simple
[filter "media"]
    required = true
    clean = git media clean %f
    smudge = git media smudge %f


```

## Terminal

Add `~/.zshrc with` this content


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
alias dl="cd ~/Downloads"
alias t="cd ~/temp"
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

# Reload Bashrc
alias reload="source ~/.zshrc"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
```

Install Plugins

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
```

Após essa instalação, vamos abrir o arquivo ~/.zshrc novamente e abaixo da linha `### End of Zplugin's installer chunk` que foi adicionada automaticamente no arquivo, adicionamos:

```
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
```
