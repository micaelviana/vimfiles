# Neovim Dotfiles

## Quick Install for Linux

``` bash <(curl -s https://raw.githubusercontent.com/micaelviana/nvim/master/install.sh) ```

## Usage

1. Clone the repository:

    **Linux**:

   ```git clone https://github.com/micaelviana/nvim ~/.config/nvim```
   
   **Windows**:
   
   ``` git clone https://github.com/micaelviana/nvim $env:USERPROFILE\AppData\Local\nvim```

2. Install vim-plug:

    **Linux**:

   ```sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'```
   
   **Windows**:
   
   ```Invoke-WebRequest -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    New-Item "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force```

3. Solve dependencies:

   [Nodejs](https://nodejs.org/en/download/)
   
4. Install plugins:

    ```nvim +PlugInstall +qall``` 
