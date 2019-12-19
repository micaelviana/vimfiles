"ACESSE O GIT DE CADA UMA PRA VER SE AINDA ESTAO FUNCIONANDO E QUAIS OS
"REQUISITOS
"Vai permitir o cadastro dos plugins do vim-plug"
"Pra instalar eh Plug usuarioGithub/repositorio"
"Sobre os plugins. vim-sensible nao faco ideia, veio de exemplo.
"Night owl, onehalf sao temas 
"vim-polyglot eh para reconhecer sintaxe de diversas linguagens
"fzf permite mostrar os arquivos do meu diretorio de forma rapida usando :Files
"auto-pairs completa parenteses, chaves, essas coisas
"rainbow vai colorir os parenteses e chaves e demais
"Ultisnips permite a criacao de snippets. Requer uma certa configuracao
"vim-snippets tem definicoes de snippets. Auxilia o Ulti
"A instalacao do deoplete para autocomplete tem seu proprio bloco
"Lightline configura a barra de status
"NERDTree permite usar uma barra lateral no VIM. Eh bastante util
"Nerdcommenter eh para funcoes de comentarios
"Mips eh um arquivo de sintaxe para codigos da arquitetura mips
call plug#begin()
"Ja tem o OneDark mas vou deixar o Onehalf pelo tema light dele
"Onedark colore melhor a sintaxe do que o Onehalf
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'oblitum/rainbow'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/mips.vim'
call plug#end()
"Depois de adicionar um plugin execute o comando :PlugInstall"


"Definicao de tema
"begin
syntax on
set termguicolors
colorscheme onedark

"colorscheme night-owl
"Definicao do tema gruvbox
"colorscheme gruvbox
"set background=dark
"Definicao do tema Onehalf
"colorscheme onehalfdark

"end

"Permite a navegacao entre arquivos sem ter que salvar as alteracoes antes de ir para um arquivo diferente"
set hidden

"Habilita a visao lateral do numero das linhas"
set number

"Habilita a linha relativa, o deslocamento da linha atual ate a linha x"
set relativenumber

"Habilita interacao com o mouse "
set mouse=a

"Habilita preview de comando"
if has('nvim')
    set inccommand=split
endif


"Criando atalhos com o teclado"

"Definir tecla principal dos atalhos"
let mapleader = "\<space>"

"Ao apertar space+ls ele lista os arquivos do diretorio atual e da um esc"
nnoremap <leader>ls :!ls<esc>

"Ao digitar CTRL+P Vai executar esse comando e dar um enter. :Files mostra os
"arquivos do meu projeto
"Vai ser executado no modo de comando. No modo de insercao CTRL+P da
"autocomplete
nnoremap<c-p> :Files <cr>

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

"Duplicar a linha como nos outros editores
nnoremap<C-S-d> yyp


"Atalhos para o NERDTree: ativar e desativar
nnoremap<c-k> :NERDTree <cr> 
nnoremap<c-b> :NERDTreeClose <cr>

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

"Eu so consegui criar snippets navegando ate o endereco acima e criando
"manualmente o arquivo linguagem.snippets. Exemplo: cpp.snippets

":UltiSnipsEdit permite a criacao de um novo snippet

"escopo da criacao de um snippet
"snippet atalho 'Descricao' b ==> na verdade descricao eh entre aspas duplas
"function $1 (){
"	$0
"}
"endsnippet

"------------------CONFIGURACOES LIGHTLINE------------------------
"Impedir que o modo de insercao apareca duplicado
set noshowmode

"Selecionar colorscheme
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }


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



"------------------CONFIGURACOES TAB/SPACE------------------------
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
