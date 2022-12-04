set nocompatible " be iMproved, required
filetype off  " required

" Plugin manager
call plug#begin('~/.config/nvim/plugged')
" Markdown and css colors:
Plug 'tpope/vim-markdown' | Plug 'ap/vim-css-color'
" Colorscheme
Plug 'doki-theme/doki-theme-vim'
" Git management
Plug 'tpope/vim-fugitive'
" File-tree:
Plug 'preservim/nerdtree'
" CTRL P / FZF
Plug 'ctrlpvim/ctrlp.vim'
" Asynchronous completion
Plug 'Shougo/deoplete.nvim'
" Linting
Plug 'dense-analysis/ale'
call plug#end()

filetype plugin indent on "required
syntax on

" Colorscheme (and color related things)
colorscheme sonoda_umi
set t_Co=256
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
highlight LineNr ctermBg=232 ctermFg=220
highlight CursorLine ctermBg=234
highlight Visual ctermbg=240
highlight ColorColumn ctermbg=240

" General Settings
set encoding=UTF-8 splitbelow wildmode=longest,list,full
set shiftwidth=2 autoindent smartindent tabstop=2 softtabstop=2 expandtab 
set relativenumber number smartcase nowrap hlsearch cursorline
set completeopt=menu 
set fillchars+=eob:\
" set colorcolumn=81 "Slower redraw

" Status Line
set statusline=
set statusline+=%#NonText#
set statusline+=%=
set statusline+=\ %f
set statusline+=\ 
set statusline+=%#CursorLineNr#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#IncSearch#
set statusline+=\ %l/%L
set statusline+=\ [%c]

" Lint and autocomplete
map <F6> :setlocal spell! spelllang=en_us<CR>
let g:deoplete#enable_at_startup = 1
let g:ale_lint_on_save = 1

" Nerdtree to navigation
map <silent> <C-n> :NERDTreeFocus<CR>

