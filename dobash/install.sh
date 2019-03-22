#!/usr/bin/env bash
set -e

mkdir -p ~/workspace
cd ~/workspace
curl https://raw.githubusercontent.com/gauravMann/cuescripts/master/dobash/dobash.sh > dobash.sh

echo "alias dobash='function _dobash(){bash ~/workspace/dobash.sh \$1};_dobash'" >> ~/.zshrc
source ~/.zshrc
