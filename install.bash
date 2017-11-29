read -p "This script will include the essential scripts in the dotfiles in your home folder! Proceed? (y/n) " -n 1 -r
echo ""
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ESSENTIALS="if [ -f ${DIR}/.bash_essentials ]; then
    . ${DIR}/.bash_essentials
fi"
GITCONFIG="[include]
    path = ${DIR}/.git_config"
GITIGNORE="[core]
    excludesfile = ${DIR}/.gitignore_global"

if [[ $REPLY =~ ^[Yy]$ ]]; then
    if ! [[ $(<$HOME/.gitconfig) = *"$GITIGNORE"* ]]; then
        echo "${GITIGNORE}" >> $HOME/.gitconfig
    fi
    if ! [[ $(<$HOME/.gitconfig) = *"$GITCONFIG"* ]]; then
        echo "${GITCONFIG}" >> $HOME/.gitconfig
    fi
    if ! [[ $(<$HOME/.bashrc) = *"$ESSENTIALS"* ]]; then
        echo "${ESSENTIALS}" >> $HOME/.bashrc
    fi
    echo "Installed essentials. Now open a new shell and get back to work!"
else
    echo "Script canceled!"
fi

