# Dotfiles Neovim

## Uso

1. Clone do repositório:

   ```git clone https://github.com/micaelviana/nvim ~/.config/nvim```

2. Instalar o vim-plug
   ```sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'```

3. Abrir o Neovim e entrar com o comando ```:PlugInstall```


## Dependências

A extensão **Deoplete** precisa que o Neovim esteja na versão 0.3.0+ e que o módulo **msgpack** do Python esteja na versão 1.0.0+.

Instalação e atualização do ```msgpack```:

   ```pip3 install msgpack```
   
   ```pip3 install msgpack --upgrade```

O atalho para usar a busca **Ag** precisa do pacote Silver Searcher instalado.

Repositório do Silver Searcher: [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)
