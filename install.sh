#! /bin/zsh
#
# TODO: install ranger
# TODO: install nerd fonts, ranger_devicons
#

cp -r ./nvim $HOME/.config/

mkdir -p $HOME/.local/share/nvim/site/autoload && cp plug.vim $HOME/.local/share/nvim/site/autoload/

cp -r ./ranger $HOME/.config/


# lazygit setting
cp -r ./lazygit/ $HOME/.config/lazygit

cp .tmux.conf $HOME/

cp .zshrc $HOME/

cp .p10k.zsh $HOME/

