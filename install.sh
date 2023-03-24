#!/bin/bash
set -e

echo "======================================"
echo "Setting up your mac using setup-my-mac"
echo "======================================"

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# install git
brew install git
# install pip
curl https://bootstrap.pypa.io/pip/get-pip.py -o get-pip.py
python3 get-pip.py --user
ln -sf ~/Library/Python/3.9/bin/pip /usr/local/bin/pip
# install ansible
pip install --user ansible
ln -sf ~/Library/Python/3.9/bin/ansible* /usr/local/bin/

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
