# nvim
Este é um diretório de configurações para o Neovim. Inclui extensões, atalhos e snippets. A ideia é clonar esta pasta e utilizar essas configurações.

* Apagar a pasta nvim do sistema (caso você ja tenha uma configuração anterior): rm -rf ~/.config/nvim

* Clonar este repositório: 

   cd ~/.config

   git clone https://github.com/micaelviana/nvim

* Instalar o vim-plug
------Caminho para o plug-vim------
   Comando de instalacao: 

   curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

   Note que a pasta foi eu que defini ate o /autoload:

* Abrir o Neovim e no modo de Comando digitar: PlugInstall
