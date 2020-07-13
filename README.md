# Neovim
Este é um diretório de configurações básicas para o uso do Neovim. Inclui extensões, atalhos e snippets.

## Instruções

1. Caso exista uma configuração anterior do Neovim é necessário um backup: 

   ```mv ~/.config/nvim ~/.config/nvim.bak```

2. Clonar este repositório: 

   ```git clone https://github.com/micaelviana/nvim ~/.config/nvim```

3. Instalar o vim-plug

   ```curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```

4. Abrir o Neovim no Terminal e no modo de Comando digitar ```:PlugInstall```


## Dependências

A extensão **Deoplete** precisa que o Neovim esteja na versão 0.3.0+ e que o módulo **msgpack** do Python esteja na versão 1.0.0+.

Instalação e atualização do ```msgpack```:

   ```pip3 install msgpack```
   
   ```pip3 install msgpack --upgrade```
