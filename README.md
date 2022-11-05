# Custom Xdg-Open (CXO)

The main idea of this plugin is to call system in the background to open documents while staying in vim.

## Installation

- Using vim default plugin manager.

```bash
mkdir -p ~/.vim/pack/RobinCamarasa/start
cd ~/.vim/pack/RobinCamarasa/start
git https://github.com/RobinCamarasa/cxo.vim.git
vim -u NONE -c "helptags cxo.vim/doc" -c q
```

- Using [vim-plug](https://github.com/junegunn/vim-plug) this plugin can be installed as follow:

```vimscript
Plug "RobinCamarasa/cxo.vim"
```

## Documentation

To check the documentation, launch the following command within vim: `:help cxo`

## Author

- [RobinCamarasa](https://github.com/RobinCamarasa)
