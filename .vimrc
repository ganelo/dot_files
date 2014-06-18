autocmd!


set shortmess+=r

set showmode
set showcmd

set shiftwidth=4
set shiftround
set tabstop=4
set expandtab
set smarttab

" auto indent"
filetype plugin indent on
" toggle auto-indenting for paste "
set pastetoggle=<F2>

" shift tab to unindent (even in Visual mode)"
imap <S-tab> <C-d>
map <S-tab> :s/^    //<CR>gv

" tab to indent in Visual mode
map <tab> :s/^/    /<CR>gv

" home once = first nonwhitespace char, home again = start of line
noremap  <expr> <Home> (col('.') == matchend(getline('.'), '^\s*')+1 ? '0'  : '^')
imap <Home> <C-o><Home>

" wrap movement at ends of lines
set whichwrap+=<,>,h,l,[,]

" comment and uncomment
map ,c :s/^/#/<CR>
map ,u :s/^#//<CR>

set background=dark

set backspace=indent,eol,start
syntax on

set showmatch

set noerrorbells

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" show the `best match so far' as search strings are typed:
set incsearch

