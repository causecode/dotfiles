rm -Rf ~/.ackrc
sudo ln -s $WORK/dotfiles/.ackrc ~/.ackrc #For Ack 2.0
sudo rm -Rf /usr/local/bin/ffind
sudo ln -s $WORK/dotfiles/dependencies/friendly-find/ffind /usr/local/bin/ffind
rm /Users/sjurgemeyer/Library/Application\ Support/KeyRemap4MacBook/private.xml
sudo ln -s $WORK/dotfiles/config/private.xml ~/Library/Application\ Support/KeyRemap4MacBook/private.xml
rm -Rf ~/.slate
sudo ln -s $WORK/dotfiles/.slate ~/.slate
rm -Rf ~/.ansiweatherrc
sudo ln -s $WORK/dotfiles/.ansiweatherrc ~/.ansiweatherrc

#Git
rm -Rf ~/.gitconfig
sudo ln -s $WORK/dotfiles/.gitconfig ~/.gitconfig
rm -Rf ~/.gitignore_global
sudo ln -s $WORK/dotfiles/.gitignore_global ~/.gitignore_global
rm -Rf ~/.gitFunctions
sudo ln -s $WORK/dotfiles/.gitFunctions ~/.gitFunctions
rm -Rf ~/.git.scmbrc
sudo ln -s $WORK/dotfiles/.git.scmbrc ~/.git.scmbrc

#HG
rm -Rf ~/.hgignore
sudo ln -s $WORK/dotfiles/.hgignore ~/.hgignore
rm -Rf ~/.hgignore_global
sudo ln -s $WORK/dotfiles/.hgignore_global ~/.hgignore_global
rm -Rf ~/.hgrc
sudo ln -s $WORK/dotfiles/.hgrc ~/.hgrc

#TODO.txt
sudo rm -Rf /usr/local/bin/todo
sudo ln -s $WORK/dotfiles/dependencies/todo.txt_cli-2.10/todo.sh /usr/local/bin/todo
rm -Rf ~/.todo.cfg
sudo ln -s $WORK/dotfiles/.todo.cfg ~/.todo.cfg
rm -Rf ~/.todo.actions.d
sudo ln -s $WORK/dotfiles/.todo.actions.d ~/.todo.actions.d
rm -Rf ~/.todo.txt.color
sudo ln -s $WORK/dotfiles/.todo.txt.color ~/.todo.txt.color
rm -Rf ~/.todofilter.py
sudo ln -s $WORK/dotfiles/config/todofilter.py ~/.todofilter.py 

#Vim
rm -Rf ~/.gvimrc
sudo ln -s $WORK/dotfiles/.gvimrc ~/.gvimrc
rm -Rf ~/.vim
sudo ln -s $WORK/dotfiles/.vim ~/.vim
rm -Rf ~/.vimrc
sudo ln -s $WORK/dotfiles/.vimrc ~/.vimrc
rm -Rf ~/.vimrc-private
sudo ln -s $WORK/dotfiles/.vimrc-private ~/.vimrc-private
rm -Rf ~/.ctags
sudo ln -s $WORK/dotfiles/.ctags ~/.ctags
rm -Rf ~/.vim/colors/ororo.vim
sudo ln -s $WORK/dotfiles/dependencies/vim-ororo/ororo.vim ~/.vim/colors/ororo.vim 

# Used for syntastic
sudo rm -Rf /usr/local/bin/grails-compile-file
sudo ln -s $WORK/dotfiles/config/grails-compile-file /usr/local/bin/grails-compile-file
rm -Rf ~/.jshintrc
sudo ln -s $WORK/dotfiles/.jshintrc ~/.jshintrc
rm -Rf /usr/local/bin/codenarc
sudo ln -s ~/.vim/tools/codenarc /usr/local/bin/codenarc

#ZSH
rm -Rf ~/.zshrc
sudo ln -s $WORK/dotfiles/.zshrc ~/.zshrc
rm -Rf ~/.oh-my-zsh/themes/shaun.zsh-theme
sudo ln -s $WORK/dotfiles/.oh-my-zsh/themes/shaun.zsh-theme ~/.oh-my-zsh/themes/shaun.zsh-theme
sudo rm -Rf /usr/local/bin/bd
sudo ln -s $WORK/dotfiles/dependencies/bd /usr/local/bin/bd
sudo rm -Rf /usr/local/bin/jq
sudo ln -s $WORK/dotfiles/dependencies/jq /usr/local/bin/jq
sudo rm -Rf /usr/local/bin/weather
sudo ln -s $WORK/dotfiles/dependencies/ansiweather/ansiweather /usr/local/bin/weather
sudo ln -s $WORK/dotfiles/.projects ~/.projects
rm -Rf ~/.aliases
sudo ln -s $WORK/dotfiles/.aliases ~/.aliases

#Vagrant
rm -Rf ~/.vagrant.d/Vagrantfile
sudo ln -s $WORK/dotfiles/.vagrant.d/VagrantFile ~/.vagrant.d/VagrantFile
rm -Rf ~/.vagrant.d/cookbooks
sudo ln -s $WORK/dotfiles/.vagrant.d/cookbooks ~/.vagrant.d/cookbooks
rm -Rf ~/.vagrant.d/bash
sudo ln -s $WORK/dotfiles/.vagrant.d/bash ~/.vagrant.d/bash

#NPM
rm -Rf ~/.npmrc
sudo ln -s $WORK/dotfiles/.npmrc ~/.npmrc

#NEOVIM
rm -Rf ~/.nvim
sudo ln -s $WORK/dotfiles/.vim ~/.nvim
rm -Rf ~/.nvimrc
sudo ln -s $WORK/dotfiles/.vimrc ~/.nvimrc
#Directories Needed
mkdir ~/.vimbackup
mkdir ~/.vimundo

#ultisnips private repo must be present in your workspace for the custom snippets to work
rm -Rf ~/.ultisnips
sudo ln -s $WORK/ultisnips ~/.ultisnips
