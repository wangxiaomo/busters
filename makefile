main:
	@echo "wxm4ever@gmail.com https://github.com/wangxiaomo"
	@echo "little busters!!!"


.PHONY:base repo update zsh tmux vim python pythonz virtualenv mac

base:
	sudo apt-get install aptitude
	sudo aptitude update && aptitude upgrade
	sudo aptitude install vim zsh tmux git gitg figlet openssh-sever

repo:
	git submodule init && git submodule update

update:
	git submodule foreach git pull origin master

zsh:
	rm -f ~/.zshrc && ln -s `pwd`/linux/zshrc ~/.zshrc
	rm -f ~/.oh-my-zsh && ln -s `pwd`/oh-my-zsh ~/.oh-my-zsh

tmux:
	rm -f ~/.tmux.conf && ln -s `pwd`/tmux.conf ~/.tmux.conf

vim:
	rm -rf ~/.vimrc ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc
	ln -s `pwd`/vim ~/.vim

python:
	sudo aptitude install python-setuptools python-pip

pythonz:
	cd ~
	curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash

virtualenv:
	# debian only
	sudo aptitude install python-virtualenv
	sudo pip install virtualenvwrapper

mac: vim
	rm -f ~/.zshrc && ln -s `pwd`/zshrc ~/.zshrc
	rm -f ~/.oh-my-zsh && ln -s `pwd`/oh-my-zsh ~/.oh-my-zsh
