### vim usage:

    git clone https://github.com/zhaojunbo/dotfiles.git ~/.files
    cd ~/.files
    git submodule init
    git submodule update
    ln -sf ~/.files/.vim ~/.vim
    ln -sf ~/.vim/.vimrc ~/.vimrc


Then let Vundle take over:

    vim ~/.vimrc
    :BundleInstall


In order to use NERDTree, try <Ctrl+E> in vim console.


In order to use tag-bar, try <F8>; but you should have exuberant-ctags installed. Basically, on Linux/Mac systems the default ctags is probably the basic ctags (useless), not exuberant-ctags (Use ctags --version to see what your default ctags is). If so, you have to rearrange your PATH by: 

    PATH=/usr/local/bin:$PATH
    which ctags

Browse [here](http://www.scholarslab.org/research-and-development/code-spelunking-with-ctags-and-vim/) for more infomation about exuberant-ctags installation and setting.


### Bash usage:

    ln -sf ~/.files/.profile ~/.profile
    ln -sf ~/.files/.bashrc ~/.bashrc


### Zsh usage
For Zsh users you should first get [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) installed, simply by:

    curl -L http://install.ohmyz.sh | sh

Then create the soft link to configure file by:

    ln -sf ~/.files/.zshrc ~/.zshrc

Furthermore you can write your own theme file in **.zsh-theme** and link them to the right place where Zsh can trace:

    ln -sf ~/.files/.zsh-theme/jake.zsh-theme ~/.oh-my-zsh/themes/jake.zsh-theme
