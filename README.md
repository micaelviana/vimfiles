# nvim
Este é um diretório de configurações para o Neovim. Inclui extensões, atalhos e snippets. A ideia é clonar esta pasta e utilizar essas configurações.

1. Apagar a pasta nvim do sistema (caso você ja tenha uma configuração anterior): 

   ```rm -rf ~/.config/nvim```

2. Clonar este repositório: 

   ```cd ~/.config```

   ```git clone https://github.com/micaelviana/nvim```

3. Instalar o vim-plug

   ```curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```

4. Abrir o Neovim no Terminal e no modo de Comando digitar ```:PlugInstall```
