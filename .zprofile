
# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# ***************************** Local Variables *****************************
REPO_DIR="$HOME/git/"
ONELOGIN_ID=first.last@nutrien.com
# /**************************** Local Variables *****************************

# ***************************** Functions *****************************
# https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions

function clone {
    cd "$REPO_DIR"
    gh repo clone $1
    cd "$(basename "$1" .git)"
}

function clode {
    start_dir="$(pwd)"
    clone $1
    code .
    cd "$start_dir"
}

function commit {
    git add .
    git commit -m $1
}

function tfinit {
    rm -rf ".terraform"
    terraform init
}

# /**************************** Functions *****************************

# ***************************** Aliases *****************************
alias c='clear'
alias ll='ls -l'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias mkdir='mkdir -pv' # allows creating parent directories...like mkdir /test/test/test/test will now work
alias path='echo -e ${PATH//:/\\n}' # display the path in friendly format
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias zp='sudo code ~/.zprofile' # this allows launching
alias pca='pre-commit run -a' # run all TF pre-commit hooks
alias pci='pre-commit install' # install pre-commit hooks
alias pcu='pre-commit uninstall' # uninstall TF pre-commit hooks
alias myip="curl http://ipecho.net/plain; echo" # display public IP address
alias tf='terraform'
# alias tf=/usr/local/bin/terraform # Original tf alias I was using
alias tfp='terraform plan'
alias home='cd ~'
alias repos="cd $REPO_DIR"
alias ga='git add .'
alias gp='git push'
alias gc='git commit -m'
alias k='kubectl'
# /**************************** Aliases *****************************

