set guifont=Fira\ Mono:h15

"for vim gui zoom
nmap <c-+> :ZoomIn<CR>
nmap <c--> :ZoomOut<CR>
"Using a GUI Neovim doesn't detect asdf shims
let g:coc_node_path = '/home/micael/.asdf/shims/node'
