"----------GENERAL----------
set hidden "Keep multiple buffers open
set number relativenumber "Display line numbers
set cursorline "highlit cursor line
set mouse=a "enable mouse interaction
set ignorecase "disable case sensitive in search and commands
set inc=split "command preview
set splitright splitbelow "define which way the splits open
set clipboard+=unnamedplus "Copy/paste between vim and other programs.
"indentation
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"When and how to draw the signcolumn.
set signcolumn=yes
"Everyone shares this setting
set backspace=indent,eol,start
"Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable 
"delays and poor user experience.
set updatetime=300

set scrolloff=8 "Minimal number of screen lines to keep above and below the cursor.
if has('termguicolors')  "enable terminal colors
    set termguicolors  
endif
" Disable all backup files
set nobackup
set nowritebackup
set noswapfile

"---------------AUTOCOMMANDS
autocmd BufEnter * silent! lcd %:p:h "change directory automaticcaly
autocmd BufEnter *.png,*.jpg,*gif exec "! xdg-open ".expand("%" ) | :bw "Open images from VIM on Linux


"---------------Vim Plug
"Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

"List of plugins
call plug#begin('~/.vim/plugged')
    "Theme
    Plug 'arcticicestudio/nord-vim'
    "autopairs
    Plug 'jiangmiao/auto-pairs'
    "LSP requirements
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    "LSP extras
    Plug 'williamboman/nvim-lsp-installer' " allows you to seamlessly install LSP servers locally
    Plug 'preservim/nerdtree' "Sidebar
    Plug 'sheerun/vim-polyglot' "while Treesitter is not stable
    Plug 'mg979/vim-visual-multi', {'branch': 'master'} "Multiple cursors
    Plug 'psliwka/vim-smoothie' "Smooth scrolling for Vim done right
    Plug 'preservim/nerdcommenter' "Assistant to insert comments
    Plug 'itchyny/lightline.vim' "statusline
    Plug 'https://github.com/ctrlpvim/ctrlp.vim' "While telescope is not  here
    Plug 'ryanoasis/vim-devicons' "Icons for VIM
    Plug 'haya14busa/is.vim'
call plug#end()

"----------KEYMAPPINGS----------
"set mapleader
let mapleader = " "
"save and close
nnoremap <silent><leader>w :w <cr>
nnoremap <silent><leader>q :x <cr>
"select the entire document
map <leader>a <esc>ggVG<CR>
"shortcut to  splits (from YADR dotfiles)
nnoremap <silent> ss <C-w>s
nnoremap <silent> vv <C-w>v
"reload Vim File 
nnoremap <leader>rv :source $HOME/.config/nvim/init.vim <cr>
"edit  vim file in a new tab
nnoremap <silent><leader>ev :tabnew $MYVIMRC <cr>
"shortcut for switch between modes faster
imap jj <Esc>
imap JJ <Esc>
"replace selected content faster
nnoremap <leader>r :%s///g<Left><Left>
" Map Ctrl-Backspace to delete the previous word in insert mode.
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
" Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x
noremap <Del> "_x
"Go to the beggining of the line
nnoremap gh 0
"Go to the end of the line
nnoremap ge $
"Tip(I always forget)
"Press ^ to go to the first non white space character on the line.
"Press g_ to go to the last non whitespace character in the line.


"Better split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

colorscheme nord


"Some plugin configs
"NERDTREE
let g:NERDTreeShowhidden=1
let g:NERDTreeAutoDeleteBuffer=1

map <C-t> :NERDTreeToggle<CR>


"NERDCommenter: comment and uncomment lines
map // <plug>NERDCommenterToggle

"statusline
let g:lightline = {'colorscheme': 'nord'}
