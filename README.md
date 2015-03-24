# Forked and inspired from
This repo was forked and inspired from another [dotfiles repo](https://github.com/sjurgemeyer/dotfiles) by Shaun Jurgemeyer.

To use the .vimrc you'll need to install the vundle plugin (https://github.com/gmarik/vundle).  
My bundle dir is excluded from this repo

# 0. Install zsh
	sudo apt-get install zsh
	curl -L http://install.ohmyz.sh | sh

# 1. Backup your old dotfiles
Look at `createAliases.sh` and back all files that being removed from your home directory

# 2. Create aliases using the supplied script

	./createAliases.sh

# 3. Install all vim plugins

	vim
	:BundleInstall

# 4. Compile YouCompleteMe 

	cd ~/.vim/bundle/YouCompleteMe
	./install.sh

Most of the plugins you need are already installed with the above command.
If you are developing in grails you might want to checkout this [article](http://vishesh.space/vim-as-an-ide-with-grails/)



