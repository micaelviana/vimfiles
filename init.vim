"=======================================================================
  "_   _ ______ ______      _______ __  __ 
 "| \ | |  ____/ __ \ \    / /_   _|  \/  |
 "|  \| | |__ | |  | \ \  / /  | | | \  / |
 "| . ` |  __|| |  | |\ \/ /   | | | |\/| |
 "| |\  | |___| |__| | \  /   _| |_| |  | |
 "|_| \_|______\____/   \/   |_____|_|  |_|
"=======================================================================
call plug#begin('~/.vim/plugged')
"-----Basic----
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete
Plug 'ctrlpvim/ctrlp.vim' "Fuzzy file finder
Plug 'preservim/nerdtree' "Sidebar
Plug 'itchyny/lightline.vim' "Lightline statusbar
Plug 'preservim/nerdcommenter' "Assistant to insert comments
Plug 'sheerun/vim-polyglot' "Syntax of various languages for VIM
"-----Snippets----
Plug 'SirVer/ultisnips' "Create new snippets
Plug 'honza/vim-snippets' "Collection of snippets for various languages
"-----Temas----
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'rakr/vim-one'
"-----Extras----
Plug 'christoomey/vim-tmux-navigator' "More friendly navigation between splits
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "Multiple cursors
Plug 'mhinz/vim-startify' "Start screen
Plug 'psliwka/vim-smoothie' "Smooth scrolling for Vim done right
Plug 'ryanoasis/vim-devicons' "Icons for VIM
call plug#end()

"----------GENERAL----------
set hidden "Keep multiple buffers open
set number relativenumber "Display line numbers
set cursorline "highlit cursor line
set mouse=a "enable mouse interaction
set ignorecase "disable case sensitive in search and commands
set inc=split "command preview
set splitright splitbelow "define which way the splits open
syntax enable "Correctly color the syntax of languages
set clipboard=unnamedplus "Copy/paste between vim and other programs.
set expandtab shiftwidth=4 autoindent "tabs expand to 4 spaces, keed previous line indentation 
if has('termguicolors')  "enable terminal colors
    set termguicolors  
endif

autocmd BufEnter *.png,*.jpg,*gif exec "! xdg-open ".expand("%" ) | :bw "Open images from VIM on Linux

"theme definition
"let g:material_terminal_italics = 1
"let g:material_theme_style = 'darker'
" colorscheme material


colorscheme one
set background=dark " for the dark version
" set background=light " for the light version
let g:one_allow_italics = 1 " italic for comments

"----------SHORTCUTS DEFINITION----------
"leader+s to save changes, ctrl+x to close, ctrl+a to select the entire text
nnoremap <leader>s :w <cr>
nnoremap <silent> <c-x> :x <cr>
map <C-a> <esc>ggVG<CR>
"shortcut to  splits (from YADR dotfiles)
nnoremap <silent> ss <C-w>s
nnoremap <silent> vv <C-w>v
"reload Vim File 
nnoremap <leader>rv :source $HOME/.config/nvim/init.vim <cr>
"shortcut for switch between modes faster
imap jj <Esc>

"----------PLUGIN SETTINGS----------
"NERDTree
map <C-t> :NERDTreeToggle<CR>

"Lightline
set noshowmode "to be not redundant in insert mode
"theme definition
let g:lightline = { 'colorscheme': 'one' }

"NERDCommenter: comment and uncomment lines
map // <plug>NERDCommenterToggle

"UltiSnips: enable split to editing snippet
let g:UltiSnipsEditSplit='vertical'

"Startify
"Based on: https://github.com/benbrastmckie/.config/

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
            \ '~/repositories',
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
"CONQUER OF COMPLETION RECOMENDATIONS
source $HOME/.config/nvim/coc.vim
