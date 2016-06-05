Pushed it to GitHub so I can fetch it anywhere with different computers.

1. Check out from GitHub

  ```bash
  git clone git@github.com:just4fun/vimrc.git ~/.vim
  ```

2. Install plug-in manager for Vim

  ```bash
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  ```

3. Create symbolic link for .vimrc

  ```bash
  ln -s ~/.vim/.vimrc ~/.vimrc
  ```

4. Install plugins via Vundle

  ```bash
  vim +PluginInstall +qall
  ```

Enjoy.
