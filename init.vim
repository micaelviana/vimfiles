call plug#begin()
"Temas
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'joshdick/onedark.vim'

"Icones no VIM
Plug 'ryanoasis/vim-devicons'

"Autocompletar parenteses
Plug 'jiangmiao/auto-pairs'

"Coloracao para pares de parenteses
Plug 'oblitum/rainbow'

"Barra inferior
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Barra lateral
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Navegacao com o TMUX
Plug 'christoomey/vim-tmux-navigator'

"Se funcionar vai ser um Fuzzy File Finder
Plug 'ctrlpvim/ctrlp.vim'

"Pacote de sintaxe de linguagens
Plug 'sheerun/vim-polyglot'

"Sintaxe para assembly com arquitetura MIPS
Plug 'vim-scripts/mips.vim'

"Pacote de snippets
Plug 'honza/vim-snippets'

"Criar novos snippets
Plug 'sirver/ultisnips'

"Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Assistente para comentários
Plug 'scrooloose/nerdcommenter'

call plug#end()
"Depois de adicionar um plugin execute o comando :PlugInstall"


"Definicao de tema
syntax on
if has('termguicolors')
    set termguicolors
endif
colorscheme onedark

"Definicao do tema Onehalf
"colorscheme onehalfdark
"or
"colorscheme onehalflight

"Permite a navegacao entre arquivos sem ter que salvar as alteracoes antes de ir para um arquivo diferente"
set hidden

"Habilita a visao lateral do numero das linhas"
set number

"Habilita a linha relativa, o deslocamento da linha atual ate a linha x"
set relativenumber

"Destacar linha que contém o cursor
set cursorline

"Habilita interacao com o mouse "
set mouse=a

"Ativa case insensitive por padrão
set ignorecase

"Habilita preview de comando"
if has('nvim')
    set inccommand=split
endif


"Criando atalhos com o teclado"

"Definir tecla principal dos atalhos"
let mapleader = "\<space>"

"Ao pressionar CTRL+F ele aciona o buscador Ag: e da espaco pra buscar um
"termo em todo o diretorio atual de trabalho. CUIDADO AG FAZ PARTE DO SILVER-SEARCHER. TEM QUE ESTAR INSTALADO PRA
"DAR CERTO
nnoremap <c-f> :Ag<space>

"Ao pressionar CTRL+S ele salva o arquivo. No modo de comando
nnoremap <c-s> :w <cr>

""Ao pressionar CTRL+X ele fecha o arquivo.No modo de comando
nnoremap <c-x> :q <cr>

"Ctrl+a - para selecionar tudo
map <C-a> <esc>ggVG<CR>

"Trocar duas linhas de lugar
nnoremap <silent><C-Up> :let save_a=@a<Cr><Up>"add"ap<Up>:let @a=save_a<Cr>
nnoremap <silent><C-Down> :let save_a=@a<Cr>"add"ap:let @a=save_a<Cr>


"Atalho para o NERDTree: ativar e desativar
nmap <C-n> :NERDTreeToggle<CR>

"Setar split para direita no vertical e para baixo no split horizontal
set splitbelow
set splitright
"Setar ss para split horizontal e vv para split vertical
nnoremap <silent> ss <C-w>s
nnoremap <silent> vv <C-w>v

"------------------CONFIGURACOES ULTISNIPS------------------------
":help Ultisnips abre o painel de ajuda do plugin
"essa configuracao eh sobre como a janela vai se comportar
let g:UltiSnipsEditSplit='vertical'
"essa configuracao eh o diretorio onde vao ficar os arquivos de snippets
let g:UltiSnipsSnippetsEdit = '~/.config/nvim/UltiSnips'

":UltiSnipsEdit permite a criacao de um novo snippet

"escopo da criacao de um snippet
"snippet atalho 'Descricao' b ==> na verdade descricao eh entre aspas duplas
"function $1 (){
"	$0
"}
"endsnippet
"-----------------------------------
"Copiando do vim para o clipboard
"O que acontece aqui eh que o Vim tem duas areas de colagem. Uma para o Vim e
"outra para o sistema :-(
"Habilitamos CTRL+C como atalho pra copiar do vim para o sistema e CTRL+V para
"copiar o que vem do sistema para o VIM.
"As configuracoes setados abaixo ja habilitam a 'colagem' do clipboard para o
"VIM. Mas, vou manter as configuracoes de map porque aprendi assim
"
"
vnoremap <C-c> "+y

set clipboard=unnamedplus
set clipboard=unnamed


"------Colocando Ultisnips para Python3------"
let g:UltiSnipsUsePythonVersion = 3


"------------------CONFIGURACOES NERDCOMMENTER------------------------
"<leader>cn ==> comentar 
"<leader>c<space> ==> inverter o estado. Se esta comentado descomenta, se esta
"descomentado, comenta


"Configuracoes de integracao com o python
let g:python_host_prog = 'usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let g:syntastic_python_python_exec = 'python3' 


"------------------CONFIGURACOES DEOPLETE------------------------
let g:deoplete#enable_at_startup = 1


"------------------CONFIGURACOES RAINBOW------------------------
let g:rainbow_active = 1

"------------------CONFIGURACOES MIPS------------------------
"toda vez que eu criar um novo arquivo ou tiver um arquivo no buffer com a
"extensao .s ou .S 'sete' a sintaxe para mips
"O mips.vim nao vem com essa configuracao
au BufNewFile,BufRead *.s,*.S set filetype=mips

"------------------CONFIGURACOES AIRLINE------------------------
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter ='unique_tail_improved'
let g:airline_theme='deus'

"configuracoes para usar com devicons
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

"Fechar aba aberta
nnoremap<C-w> :bdelete <cr>

"------------------CONFIGURACOES TAB/SPACE------------------------
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
