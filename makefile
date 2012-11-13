.PHONY: zsh tmux vim

main:zsh tmux vim
	@echo "wxm4ever@gmail.com https://github.com/wangxiaomo"

zsh:
	rm -f ~/.zshrc && ln -s `pwd`/linux/zshrc ~/.zshrc

tmux:
	rm -f ~/.tmux.conf && ln -s `pwd`/tmux.conf ~/.tmux.conf

vim:
	rm -rf ~/.vimrc ~/.vim
	ln -s `pwd`/vim/vimrc ~/.vimrc
	ln -s `pwd`/vim ~/.vim
