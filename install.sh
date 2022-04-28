
## installing packages
sudo apt install \
             zsh\
             stow\
             htop\
             fzf\
             neovim\
             ranger\
             git\
             tmux\
             # bat\

curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

# add zsh to usable shells 
command -v zsh | sudo tee -a /etc/shells

## use zsh as default shell
sudo chsh -s $(which zsh) $USER

## bundle zsh plugins 
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

## stow dotfiles
stow ranger
stow nvim
stow git
stow zsh
stow i3
stow tmux


# # install neovim plugins
# nvim --headless +PlugInstall +qall

