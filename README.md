# Neovim Dotfiles

##Quick Install para Linux

``` bash <(curl -s https://raw.githubusercontent.com/micaelviana/nvim/master/install.sh) ```

##Uso

1. Clone do repositório:

    **Linux**:

   ```git clone https://github.com/micaelviana/nvim ~/.config/nvim```
   
   **Windows**:
   
   ``` git clone https://github.com/micaelviana/nvim $env:USERPROFILE\AppData\Local\nvim```

2. Instalar o vim-plug:

    **Linux**:

   ```sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'```
   
   **Windows**:
   
   ```iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force```

3. Resolver dependências:

   [Nodejs](https://nodejs.org/en/download/)
   
4. Instalar os plugins:

    ```nvim +PlugInstall +qall``` 
