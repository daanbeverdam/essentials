read -p "This script will include the essential scripts in the dotfiles in your home folder. Do not run this twice! Proceed? (y/n) " -n 1 -r
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "[include]
    path = ${DIR}/.git_aliases" >> $HOME/.gitconfig
    echo "if [ -f ${DIR}/.bash_essentials ]; then
    . ${DIR}/.bash_essentials
fi" >> $HOME/.bashrc
else
    echo "Script canceled!"
fi

echo ""
echo "Installed essentials. Now open a new shell and get back to work!"
