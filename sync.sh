#! /bin/zsh

# nvim config
cp -r $HOME/.config/nvim ./
rm -rf ./nvim/tmp

cp $HOME/.local/share/nvim/site/autoload/plug.vim ./

# ranger config
cp -r $HOME/.config/ranger ./
rm -rf ./ranger/plugins

cp $HOME/.tmux.conf ./

cp $HOME/.zshrc ./

