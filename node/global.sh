source common/functions.sh

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "git clone git://github.com/ry/node.git"
    brew install node
    echo "OK"
fi

# grunt-cli
if which grunt &> /dev/null; then
    msg_checking "grunt"
else
    msg_install "grunt" "sudo npm install -g grunt-cli"
    sudo npm install -g grunt-cli
    echo "OK"
fi

# gulp
if which gulp &> /dev/null; then
    msg_checking "gulp"
else
    msg_install "gulp" "sudo npm install -g gulp"
    sudo npm install -g gulp
    echo "OK"
fi

# vtop
if which vtop &> /dev/null; then
    msg_checking "vtop"
else
    msg_install "vtop" "sudo npm install vtop -g"
    sudo npm install vtop -g
    echo "OK"
fi

# jshint
if which jshint &> /dev/null; then
    msg_checking "jshint"
else
    msg_install "jshint" "sudo npm install jshint -g"
    sudo npm install jshint -g
    echo "OK"
fi

# csslint
if which csslint &> /dev/null; then
    msg_checking "csslint"
else
    msg_install "csslint" "sudo npm install -g csslint"
    sudo npm install -g csslint
    msg_ok "OK"
fi

# TMI (Too Many Images) - discover your image weight on the web [alpha]
if which tmi &> /dev/null; then
    msg_checking "tmi"
else
    msg_install "tmi" "sudo npm install -g tmi"
    sudo npm install -g tmi
    msg_ok "OK"
fi

# bower
if which bower &> /dev/null; then
    msg_checking "bower"
else
    msg_install "bower" "sudo npm install -g bower"
    sudo npm install -g bower
    msg_ok "OK"
fi

# bower-installer
if which bower-installer &> /dev/null; then
    msg_checking "bower-installer"
else
    msg_install "bower-installer" "sudo npm install -g bower-installer"
    sudo npm install -g bower-installer
    msg_ok "OK"
fi
