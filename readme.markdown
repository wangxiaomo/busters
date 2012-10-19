mac-dot-file . 
------------------------

### INSTALL ###

    git clone git://github.com/wangxiaomo/mac-dot-file
    cd mac-dot-file
    git submodule init && git submodule update

    # examples: mac-dot-file's abspath is ~/mac-dot-file
    # so
    ln -s ~/mac-dot-file/oh-my-zsh ~/.oh-my-zsh
    # { if os.system == 'osx' }
    ln -s ~/mac-dot-file/zshrc ~/.zshrc
    # { else }
    ln -s ~/mac-dot-file/linux/zshrc ~/.zshrc
    # { endif }
    ln -s ~/mac-dot-file/vim ~/.vim
    ln -s ~/mac-dot-file/vim/vimrc ~/.vimrc
