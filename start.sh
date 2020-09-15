echo "==========================================="
echo "Setting up your mac using setup-my-mac"
echo "==========================================="
# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# install git
brew install git
# install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
# install ansible
pip install --user ansible

installdir="/tmp/setup-my-mac-$RANDOM"
mkdir $installdir

#git clone https://github.com/aditya-mittal/setup-my-mac.git $installdir 
#if [ ! -d $installdir ]; then
#    echo "failed to find setup-my-mac."
#    echo "git cloned failed"
#    exit 1
#else
#    cd $installdir 
#    ansible-playbook -i ./hosts playbook.yml --verbose
#fi

echo "Cleaning up..."

rm -Rfv /tmp/$installdir

echo "And, voila! We are done!"
