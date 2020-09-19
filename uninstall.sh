#!/bin/bash
set -e

echo "======================================="
echo "Cleaning up your mac using setup-my-mac"
echo "======================================="


echo "WARNING : This will remove homebrew and all applications installed through it"
echo -n "Are you sure you want to do that? [y/n] : "
read confirmation

if [ $confirmation == "y" ]; then
  brew remove --force $(brew list)
  brew remove --force $(brew list --cask)
  yes  | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
  echo "Cleaned up all the installed software(s) and tool(s)"
  exit 0
else
  echo "Keeping everything intact"
  exit 0
fi
