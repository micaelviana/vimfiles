# Neovim Dotfiles

## Uso

1. Clone do repositório:

   ```git clone https://github.com/micaelviana/nvim ~/.config/nvim```

2. Instalar o vim-plug:

   ```sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'```

3. Resolver dependências:

   ```pip3 install pynvim && pip3 install msgpack --upgrade```
   
4. Abrir o Neovim e entrar com o comando:

    ```:PlugInstall``` 
