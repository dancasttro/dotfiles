source common/functions.sh

# nodejs
if which zsh &> /dev/null; then
    msg_checking "zsh"
else
    msg_install "zsh"
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
    echo "OK"
fi
