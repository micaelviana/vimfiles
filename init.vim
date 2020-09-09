 "_ __   ___  _____   _(_)_ __ ___  
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
"| | | |  __/ (_) \ V /| | | | | | |
"|_| |_|\___|\___/ \_/ |_|_| |_| |_|

call plug#begin('~/.vim/plugged')
"-----Basico----
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete
Plug 'jiangmiao/auto-pairs' "Autocompletar parenteses
Plug 'ctrlpvim/ctrlp.vim' "Ctrlp para navegar por arquivos
Plug 'preservim/nerdtree' "Barra lateral
Plug 'itchyny/lightline.vim' "Barra inferior
Plug 'preservim/nerdcommenter' "assistente para  inserir comentarios
Plug 'sheerun/vim-polyglot' "Sinxtaxe de diversas linguagens de programacao
"-----Snippets----
Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips' " Arquivos de snippets para vários linguagens e criacao de novos snippets
"-----Temas----
Plug 'dracula/vim', { 'as': 'dracula' }
"-----Extras----
Plug 'christoomey/vim-tmux-navigator' "navegação mais amigável pelos splits
Plug 'frazrepo/vim-rainbow' "Coloracao para pares de parenteses
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "Multiplos cursores
Plug 'tpope/vim-eunuch' "Syntactic sugar para comandos do shell
Plug 'ap/vim-css-color' "preview das cores do css 
Plug 'ryanoasis/vim-devicons' "icones para o Vim, funciona com nerdfonts
call plug#end()

"----------CONFIGURACOES GERAIS----------
set hidden "manter multiplos buffers abertos
set number relativenumber "mostrar numeros das linhas
set cursorline "destaca linha do cursor
set mouse=a "habilita interacao com o mouse
set ignorecase "desativa case sensitive na pesquisa e nos comandos do vim
set inc=split "preview de comandos
set splitright splitbelow "define pra que lado se abrem os splits 
syntax enable "colorir corretamente a sintaxe de linguagens
set clipboard=unnamedplus "clipboard entre o neovim e os outros progranas
set expandtab shiftwidth=4 autoindent "tabs expandem para 4 espacos, manter indentacao da linha anterior
if has('termguicolors')  "habilitar cores do terminal
    set termguicolors  
endif

autocmd BufEnter *.png,*.jpg,*gif exec "! xdg-open ".expand("%" ) | :bw "Abrir arquivos de imagens a partir do Vim no Linux

"definicao de tema
colorscheme dracula

"----------DEFINICAO DE TECLAS DE ATALHO ----------
"define a tecla space como leader 
let mapleader="\<space>"
"ctrl+s para salvar, ctrl+x para fechar, ctrl+a seleciona tudo
nnoremap <silent> <c-s> :w <cr>
nnoremap <silent> <c-x> :q <cr>
map <C-a> <esc>ggVG<CR>
"atalhos para splits (de YADR dotfiles)
nnoremap <silent> ss <C-w>s
nnoremap <silent> vv <C-w>v
"recarregar o Vim File 
nnoremap <leader>rv :source ~/.config/nvim/init.vim <cr>

"----------CONFIGURACOES DE PLUGINS----------
"NERDTree: ativar e desativar a barra
map <C-b> :NERDTreeToggle<CR>

"lightline
set noshowmode "pra nao ficar redundante no modo de insercao
"definicao de tema
let g:lightline = { 'colorscheme': 'dracula' }

"NERDCommenter: comentar e descomentar linhas
map // <plug>NERDCommenterToggle

"UltiSnips: habilitar split para edicao de snippet
let g:UltiSnipsEditSplit='vertical'

"vim-rainbow: ativar por padrao
let g:rainbow_active = 1
