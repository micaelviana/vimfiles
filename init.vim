call plug#begin('~/.vim/plugged')
"-----Basico----
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "Autocomplete
Plug 'jiangmiao/auto-pairs' "Autocompletar parenteses
Plug 'ctrlpvim/ctrlp.vim' "Ctrlp para navegar por arquivos
Plug 'preservim/nerdtree' "Barra lateral
Plug 'itchyny/lightline.vim' "Barra inferior
Plug 'preservim/nerdcommenter' "assistente para  inserir comentarios
Plug 'sheerun/vim-polyglot' "Sinxtaxe de diversas linguagens de programacao
"-----Snippets----
Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips' " Arquivos de snippets para vários linguagens e criacao de novos snippets
"-----Temas----
Plug 'rakr/vim-one'
Plug 'phanviet/vim-monokai-pro'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
"-----Extras----
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
set expandtab shiftwidth=2 tabstop=2 autoindent "tabs expandem para 2 espacos, manter indentacao da linha anterior
if has('termguicolors')  "habilitar cores do terminal
    set termguicolors  
endif

autocmd BufEnter *.png,*.jpg,*gif exec "! xdg-open ".expand("%" ) | :bw "Abrir arquivos de imagens a partir do Vim no Linux

"definicao de tema
colorscheme one


"----------DEFINICAO DE TECLAS DE ATALHO ----------
let mapleader="\<space>" "define espaco como leader
nnoremap <silent> <c-s> :w <cr> "ctrl+s salva o arquivo
nnoremap <silent> <c-x> :q <cr> "ctrl+x fecha o arquivo
noremap <silent> <c-a> <esc>ggVG<CR> "seleciona todo conteudo do arquivo
nnoremap <silent> vv <C-w>v "vv para split vertical
nnoremap <silent> ss <C-w>s "ss para split horizontal 
nnoremap <leader>sv :source $MYVIMRC<cr> "recarregar arquivo de configuracao do vim


" Navegar entre splits com ctrl+(hjkl)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>
nnoremap <C-l> <C-w>l


"Por algum motivo o python resiste a regra de tabs=2 espacos,mas esta gambiarra adaptada do Stack Overflow resolve"
function! UseSpaces()
  set tabstop=2     " Size of a hard tabstop (ts).
  set shiftwidth=2  " Size of an indentation (sw).
  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction
au! BufEnter,BufNewFile *.py call UseSpaces()


"----------CONFIGURACOES DE PLUGINS----------
"Deoplete: ativar Autocomplete
let g:deoplete#enable_at_startup = 1

"NERDTree: ativar e desativar a barra
map <C-b> :NERDTreeToggle<CR>

"lightline
set noshowmode "pra nao ficar redundante no modo de insercao
"definicao de tema
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ }

"NERDCommenter: comentar e descomentar linhas
map // <plug>NERDCommenterToggle

"UltiSnips: habilitar split para edicao de snippet
let g:UltiSnipsEditSplit='vertical'

"vim-rainbow: ativar por padrao
let g:rainbow_active = 1
