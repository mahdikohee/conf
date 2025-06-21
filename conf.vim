" ==== Vim Configuration with Gruvbox Dark Theme, Auto Pairs & Smart Indent ====

" === Basic Editor Settings ===
filetype plugin indent on
syntax enable
set noswapfile
set smartindent
set clipboard=unnamedplus
set background=dark
colorscheme gruvbox
set t_Co=256

" === AutoPairs Settings ===
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<M-p>'
let g:AutoPairsMapBS = 1
let g:AutoPairsMapCR = 1
let g:AutoPairsMapSpace = 1

" === indentLine Plugin Settings ===
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

" === Editor Behavior ===
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
" set cursorline

" === Syntax Highlighting ===
syntax on

" === Terminal toggle with Ctrl+t ===
nnoremap <C-t> :terminal<CR>
tnoremap <Esc> <C-\><C-n>

" === Clipboard Copy-Paste Shortcuts ===
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap <C-v> <C-r>+
nnoremap <S-Insert> "+p
inoremap <S-Insert> <C-r>+
vnoremap <S-Insert> "+p

" === Rust Runner: Press Ctrl + B to run 'cargo run' ===
nnoremap <C-b> :w<CR>:!cargo run<CR>













