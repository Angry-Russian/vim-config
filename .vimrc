"
" sample vimrc file at
" https://amix.dk/vim/vimrc.html
"
syntax on
set tabstop=4
set shiftwidth=4
set mouse=a
set ff=unix
set encoding=utf8
set shell=/bin/bash
set listchars=space:·,trail:·,precedes:«,extends:»,eol:↲,tab:\|→


set ai "auto indent
set si "smart indent
set lazyredraw "don't redraw during macros
set nobackup	" don't create backup files
set noswapfile	" don't create swap files
set number		" show line numbers

set viminfo^=% " Remember info about buffers on close...?
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set cursorline

set foldmethod=indent

set autoread
filetype plugin indent on

" Return to last edit position on buffer open
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ 	exe "normal! g`\"" |
	\ endif

colorscheme monokai
"Extra color coding
hi SpecialKey ctermfg=240 guifg=#444444
hi CursorLine cterm=NONE ctermbg=236
hi LineNr ctermfg=240
hi CursorLineNr ctermfg=250
hi Visual ctermbg=238

inoremap <C-s> <C-o>:update<CR>
noremap <C-q> <Esc>:q<CR>
inoremap <C-h> <Esc>:set list!<CR>
nnoremap <bs> X

"set foldmethod=indent
set breakindent wrap linebreak

"space folds/unfolds current level
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf