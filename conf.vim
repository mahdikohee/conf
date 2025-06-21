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





































another glassy vim conf for more beautiful look 




-----------------



" -------------------------------------
" 1. প্লাগইন ম্যানেজার vim-plug সেটআপ
" -------------------------------------
call plug#begin('~/.vim/plugged')

" dracula থিম প্লাগইন
Plug 'dracula/vim', { 'as': 'dracula' }

" অটো ক্লোজ ব্র্যাকেট প্লাগইন
Plug 'jiangmiao/auto-pairs'

call plug#end()

" -------------------------------------
" 2. বেসিক সেটিংস
" -------------------------------------
syntax enable
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set clipboard=unnamedplus
set cursorline
set termguicolors

" -------------------------------------
" 3. থিম সেটআপ
" -------------------------------------
colorscheme dracula

" -------------------------------------
" 4. আরও কিছু হ্যাকিং এর জন্য হেল্পফুল অপশন
" -------------------------------------
set wildmenu
set ignorecase
set smartcase
set incsearch
set hlsearch
set mouse=a

" -------------------------------------
" 5. সহজ কমান্ডের জন্য কিবাইন্ড (ঐচ্ছিক)
" -------------------------------------
nnoremap <leader>t :!gnome-terminal &<CR>

" -------------------------------------
" 6. Leader কী ডিফাইন (ঐচ্ছিক)
" -------------------------------------
let mapleader="\<Space>"

" -------------------------------------
" 7. ফাইল কন্ডিশনাল এবং অটো কমান্ড (ঐচ্ছিক)
" -------------------------------------
autocmd BufWritePre * :%s/\s\+$//e






























//another dark theme for dracual 


" -------------------------------------
" 1. প্লাগইন ম্যানেজার বাদ দিয়ে ম্যানুয়াল থিম লোড
" -------------------------------------
" ড্রাকুলা থিম গিট থেকে ম্যানুয়ালি ক্লোন করা থাকতে হবে:
" ~/.vim/pack/vendor/start/dracula
" থিম লোডের জন্য নিচের লাইন

set runtimepath+=~/.vim/pack/vendor/start/dracula

" -------------------------------------
" 2. বেসিক সেটিংস
" -------------------------------------
syntax enable
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set clipboard=unnamedplus
set cursorline
set termguicolors

" -------------------------------------
" 3. থিম সেটআপ - ড্রাকুলা
" -------------------------------------
colorscheme dracula

" থিমের আরও ডার্ক, মুডি লুক দিতে কাস্টমাইজেশন
hi Normal       ctermbg=NONE guibg=#0b0e14
hi LineNr       ctermfg=DarkGrey guifg=#4b5263
hi CursorLineNr ctermfg=Yellow guifg=#e1b12c
hi CursorLine   ctermbg=Black guibg=#121417
hi Visual       ctermbg=DarkGrey guibg=#2c313c
hi Search       ctermbg=DarkRed guibg=#5a1e1e

hi Comment      ctermfg=DarkGrey guifg=#5c6370
hi Constant     ctermfg=DarkMagenta guifg=#c678dd
hi Identifier   ctermfg=Cyan guifg=#56b6c2
hi Statement    ctermfg=DarkYellow guifg=#d19a66
hi Type         ctermfg=DarkCyan guifg=#61afef
hi Special      ctermfg=DarkRed guifg=#e06c75

" -------------------------------------
" 4. হেল্পফুল অপশন হ্যাকিং এর জন্য
" -------------------------------------
set wildmenu
set ignorecase
set smartcase
set incsearch
set hlsearch
set mouse=a

" -------------------------------------
" 5. সহজ টার্মিনাল ওপেন করার জন্য কিবাইন্ড (ঐচ্ছিক)
" -------------------------------------
let mapleader="\<Space>"
nnoremap <leader>t :!gnome-terminal &<CR>

" -------------------------------------
" 6. অটো কমান্ড: ফাইল সেভ করার আগে লাইন শেষের অতিরিক্ত স্পেস মুছে ফেলা
" -------------------------------------
autocmd BufWritePre * :%s/\s\+$//e
