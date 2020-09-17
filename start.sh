#!/bin/bash
set -e

function uninstall() {

    echo "WARNING : This will remove homebrew and all applications installed through it"
    echo -n "Are you sure you want to do that? [y/n] : "
    read confirmation

    if [ $confirmation == "y" ]; then
        brew remove --force $(brew list)
        brew remove --force $(brew list --cask)
        yes  | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
        exit 0
    else
        echo "Keeping everything intact"
        exit 0
    fi
}

if [ $1 == "uninstall" ]; then
    uninstall
fi

echo "======================================"
echo "Setting up your mac using setup-my-mac"
echo "======================================"

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# install git
brew install git
# install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
ln -sf ~/Library/Python/2.7/bin/pip /usr/local/bin/pip
# install ansible
pip install --user ansible
ln -sf ~/Library/Python/2.7/bin/ansible* /usr/local/bin/

installdir="/tmp/setup-my-mac-$RANDOM"
mkdir $installdir

#git clone https://github.com/aditya-mittal/setup-my-mac.git $installdir 
#if [ ! -d $installdir ]; then
#    echo "Failed to find setup-my-mac."
#    echo "git clone failed"
#    exit 1
#else
#    cd $installdir 
    ansible-playbook -i ./hosts playbook.yml --verbose
#fi

echo "Cleaning up..."

rm -Rfv /tmp/$installdir

echo "Voila! We are done!"
