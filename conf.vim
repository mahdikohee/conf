" ==== Vim Configuration with Gruvbox Dark Theme, Auto Pairs & Smart Indent ====

" Enable filetype plugins and indentation
filetype plugin indent on
syntax enable
set noswapfile
" Enable smart indentation
set smartindent
" Uncomment below for C-like smart indent if দরকার হয়
" set cindent

" Use system clipboard (copy-paste সাপোর্টের জন্য)
set clipboard=unnamedplus

" Colorscheme settings: gruvbox dark
set background=dark
colorscheme gruvbox

" Enable 256 colors support (important for gruvbox)
set t_Co=256

" Auto Pairs plugin basic settings
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<M-p>'

" Enable indentLine plugin (optional, visual indent guides)
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

" Show line numbers
set number

" Tabs & indentation settings
set expandtab        " Use spaces instead of tabs
set tabstop=4        " Number of spaces tabs count for
set shiftwidth=4     " Spaces to use for autoindent
set softtabstop=4    " Spaces in insert mode for tab

" Enable mouse support (for mouse selection and clipboard integration)
set mouse=a

" Highlight the current line (optional)
" set cursorline

" Enable syntax highlighting
syntax on

" === Terminal toggle with Ctrl+t ===
nnoremap <C-t> :terminal<CR>
tnoremap <Esc> <C-\><C-n>

" === Clipboard Copy-Paste shortcuts ===
" Visual mode: Ctrl+c copies to system clipboard
vnoremap <C-c> "+y

" Normal mode: Ctrl+v pastes from system clipboard
nnoremap <C-v> "+p

" Insert mode: Ctrl+v pastes from system clipboard
inoremap <C-v> <C-r>+

" (Optional) Insert mode Ctrl+c copies current line
" inoremap <C-c> <Esc>"+yyi

" Optional: Shift+Insert to paste in all modes
nnoremap <S-Insert> "+p
inoremap <S-Insert> <C-r>+
vnoremap <S-Insert> "+p
