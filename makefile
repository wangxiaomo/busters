.PHONY: zsh tmux vim

main:zsh tmux vim
	@echo "wxm4ever@gmail.com https://github.com/wangxiaomo"

zsh:
	rm -f ~/.zshrc && ln -s `pwd`/linux/zshrc ~/.zshrc
	rm -f ~/.oh-my-zsh && ln -s `pwd`/oh-my-zsh ~/.oh-my-zsh

tmux:
	rm -f ~/.tmux.conf && ln -s `pwd`/tmux.conf ~/.tmux.conf

vim:
	rm -rf ~/.vimrc ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc
	ln -s `pwd`/vim ~/.vim

pythonz:
	cd ~
	curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash
