call plug#begin()
"Temas
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

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

"Navegacao entre splits de Vim e Tmux
Plug 'christoomey/vim-tmux-navigator'

"Fuzzy File Finder
Plug 'ctrlpvim/ctrlp.vim'

"Pacote de sintaxe de linguagens
Plug 'sheerun/vim-polyglot'

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
if has('termguicolors')
    set termguicolors
endif
syntax enable
colorscheme dracula

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
set inccommand=split

"Criando atalhos com o teclado"

"Definir tecla principal dos atalhos"
let mapleader = "\<space>"

"Ao pressionar CTRL+F ele aciona o buscador Ag: e da espaco pra buscar um
"termo em todo o diretorio atual de trabalho. Precisa do pacote silver-searcher instalado
nnoremap <c-f> :Ag<space>

"Ao pressionar CTRL+S ele salva o arquivo
nnoremap <c-s> :w <cr>

""Ao pressionar CTRL+X fecha o arquivo.
nnoremap <c-x> :q <cr>

"Ctrl+a - para selecionar tudo
map <C-a> <esc>ggVG<CR>

"Trocar duas linhas de lugar (sintaxe complicada porque evita que as linhas trocadas sobreponham o que estava no registrador. Solução legal de alguém no Stack Overflow)
nnoremap <silent><C-Up> :let save_a=@a<Cr><Up>"add"ap<Up>:let @a=save_a<Cr>
nnoremap <silent><C-Down> :let save_a=@a<Cr>"add"ap:let @a=save_a<Cr>


"Atalho para o NERDTree: ativar e desativar
nmap <C-n> :NERDTreeToggle<CR>

"Setar split para direita no vertical e para baixo no split horizontal
set splitright splitbelow

"Setar ss para split horizontal e vv para split vertical(como no Yadr dotfiles)
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
"O Vim tem duas areas de colagem. Uma para o Vim e
"outra para o sistema
"Habilitar CTRL+C como atalho pra copiar do vim para o sistema
"

vnoremap <C-c> "+y

set clipboard=unnamedplus
set clipboard=unnamed


"------Colocando Ultisnips para Python3------"
let g:UltiSnipsUsePythonVersion = 3


"------------------CONFIGURACOES NERDCOMMENTER------------------------
"<leader>cn ==> comentar 
"<leader>c<space> ==> inverte o estado da linha comentada


"Configuracoes de integracao com o python
let g:python_host_prog = 'usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let g:syntastic_python_python_exec = 'python3' 


"------------------CONFIGURACOES DEOPLETE------------------------
let g:deoplete#enable_at_startup = 1


"------------------CONFIGURACOES RAINBOW------------------------
let g:rainbow_active = 1


"------------------CONFIGURACOES AIRLINE------------------------
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#formatter ='unique_tail_improved'
let g:airline_theme='deus'


"------------------CONFIGURACOES TAB/SPACE------------------------

set expandtab softtabstop=2 shiftwidth=2
