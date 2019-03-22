
mkdir -p ~/workspace
cd ~/workspace
curl https://raw.githubusercontent.com/gauravMann/scripts/master/generatelist/file_to_list.sh > file_to_list.sh

echo "alias fl='function _fl(){bash ~/workspace/file_to_list.sh \$1};_fl'" >> ~/.zshrc
source ~/.zshrc
