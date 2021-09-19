# My vimrc

- 首先，clone 这个仓到HOME目录下

  ```shell
  cd ~
  git clone https://github.com/zhangyaaoo/.vim.git
  ```

- 然后安装 Vim plugin manager

  ```shell
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

- 最后，安装 vimrc 文件中指定用的插件

  ```shell
  # open vimrc and :PlugInstall to install plugins.
  vi ~/.vim/vimrc # then, :PlugInstall
  ```
