"=======================================================================
  "_   _ ______ ______      _______ __  __ 
 "| \ | |  ____/ __ \ \    / /_   _|  \/  |
 "|  \| | |__ | |  | \ \  / /  | | | \  / |
 "| . ` |  __|| |  | |\ \/ /   | | | |\/| |
 "| |\  | |___| |__| | \  /   _| |_| |  | |
 "|_| \_|______\____/   \/   |_____|_|  |_|
"=======================================================================
call plug#begin('~/.vim/plugged')
"-----Basico----
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocomplete
Plug 'jiangmiao/auto-pairs' "pares de parenteses
Plug 'ctrlpvim/ctrlp.vim' "Ctrlp para navegar por arquivos
Plug 'preservim/nerdtree' "Barra lateral
Plug 'itchyny/lightline.vim' "Barra inferior
Plug 'preservim/nerdcommenter' "assistente para  inserir comentarios
Plug 'sheerun/vim-polyglot' "Sinxtaxe de diversas linguagens de programacao
"-----Snippets----
Plug 'SirVer/ultisnips' "Criar novos snippets
Plug 'honza/vim-snippets' "Arquivos de snippets para vários linguagens
"-----Temas----
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'haishanh/night-owl.vim'
"-----Extras----
Plug 'christoomey/vim-tmux-navigator' "navegação mais amigável pelos splits
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "Multiplos cursores
Plug 'mhinz/vim-startify' "Start screen
Plug 'psliwka/vim-smoothie' "Smooth scrolling for Vim done right
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
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
" colorscheme material
colorscheme night-owl

"----------DEFINICAO DE TECLAS DE ATALHO ----------
"define a tecla space como leader 
let mapleader="\<space>"
"space+b para salvar, ctrl+x para fechar, ctrl+a seleciona tudo
nnoremap <leader>b :w <cr>
nnoremap <silent> <c-x> :x <cr>
map <C-a> <esc>ggVG<CR>
"atalhos para splits (de YADR dotfiles)
nnoremap <silent> ss <C-w>s
nnoremap <silent> vv <C-w>v
"recarregar o Vim File 
nnoremap <leader>rv :source ~/.config/nvim/init.vim <cr>

"----------CONFIGURACOES DE PLUGINS----------
"NERDTree: ativar e desativar a barra
map <C-t> :NERDTreeToggle<CR>

"lightline
set noshowmode "pra nao ficar redundante no modo de insercao
"definicao de tema
let g:lightline = { 'colorscheme': 'nightowl' }

"NERDCommenter: comentar e descomentar linhas
map // <plug>NERDCommenterToggle

"UltiSnips: habilitar split para edicao de snippet
let g:UltiSnipsEditSplit='vertical'

"Preferências do Startify
"Baseado em: https://github.com/benbrastmckie/.config/

let g:startify_custom_header = [
 \ '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
 \ '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
 \ '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
 \ '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
 \ '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
 \ '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
 \]
 
 let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Code',
            \ ]
            
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Files']            },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ ]            
                                                  
let g:webdevicons_enable_startify = 1
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

    
"=============================================================================================================
"FROM CONQUER OF COMPLETION
source ./coc.vim
