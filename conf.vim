" ==== Vim Configuration with Grovbox Dark Theme, Auto Pairs & Smart Indent ====

" Enable filetype plugins and indentation
filetype plugin indent on
syntax enable

" Enable smart indentation
set smartindent
" Uncomment below for C-like smart indent if দরকার হয়
" set cindent

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

" Enable mouse support (optional)
set mouse=a

" Highlight the current line (optional)

" Enable syntax highlighting
syntax on

"
