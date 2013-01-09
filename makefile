.PHONY:repo zsh tmux vim

main:zsh tmux vim
	@echo "wxm4ever@gmail.com https://github.com/wangxiaomo"

repo:
	git submodule init && git submodule update

zsh:
	rm -f ~/.zshrc && ln -s `pwd`/linux/zshrc ~/.zshrc
	rm -f ~/.oh-my-zsh && ln -s `pwd`/oh-my-zsh ~/.oh-my-zsh

tmux:
	rm -f ~/.tmux-powerlinerc
	./tmux-powerline/generate_rc.sh
	mv ~/.tmux-powerlinerc.default ~/.tmux-powerlinerc
	rm -f ~/.tmux-powerline && ln -s `pwd`/tmux-powerline ~/.tmux-powerline
	rm -f ~/.tmux.conf && ln -s `pwd`/tmux.conf ~/.tmux.conf

vim:
	rm -rf ~/.vimrc ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc
	ln -s `pwd`/vim ~/.vim

pythonz:
	cd ~
	curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash
