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
