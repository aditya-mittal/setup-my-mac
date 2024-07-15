#!/bin/bash
set -eux

echo "======================================"
echo "Setting up your mac using setup-my-mac"
echo "======================================"

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# adding brew to path
eval "$(/opt/homebrew/bin/brew shellenv)"
# install git
brew install --quiet git
echo "Git installed..."
brew install --quiet python@3.10
echo "Python installed..."
# install pip
pip3.10 --version || python3 -m ensurepip --upgrade
echo "Pip installed..."
sudo mkdir -p /usr/local/bin
sudo ln -sf /opt/homebrew/Cellar/python@3.10/3.10.*/bin/pip3.10 /usr/local/bin/
# install ansible
pip3.10 install --user ansible
echo "Ansible installed..."
sudo ln -sf ~/Library/Python/3.10/bin/ansible* /usr/local/bin/

installdir="/tmp/setup-my-mac-$RANDOM"
mkdir $installdir

git clone https://github.com/aditya-mittal/setup-my-mac.git $installdir 
if [ ! -d $installdir ]; then
    echo "Failed to find setup-my-mac."
    echo "git clone failed"
    exit 1
else
    cd $installdir 
    ansible-playbook -i ./hosts playbook.yml --verbose
fi

echo "Cleaning up..."

rm -Rfv /tmp/$installdir

echo "Voila! We are done!"