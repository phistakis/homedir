set nocompatible
behave mswin

source $VIMRUNTIME/mswin.vim
source $HOME/.vim/cscope_maps.vim
source $HOME/.vim/python_fn.vim
" Autoload package bundles
call pathogen#runtime_append_all_bundles()

" source $HOME/.vim/ropevim.vim

set selection=inclusive
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands

filetype on
filetype plugin on

" Remember more commands and search history
set history=1000

" Keep more context when scrolling off the end of a buffer
set scrolloff=3

"search options
"set ignorecase
set smartcase
set incsearch
set showmatch   "show matching parens
set hlsearch

set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.pyo,*~

"black colorscheme
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="high"    "default value is normal
syntax enable
set background=dark
"colorscheme solarized
colorscheme torte
syntax sync fromstart
let g:python_highlight_space_errors=1

" visual indentations
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1

set number      " set line numbers

set backspace=eol,start,indent

"proper tab handling (insert spaces)
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set smarttab

"mouse always enabled (also in terminal)
set mouse=a

"proper autocomplete
set completeopt=longest,menuone
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
:inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"
:inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"

function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr> 

"nobody really wants F1 to start vim's help...
inoremap <F1> <ESC>
noremap <F1> <ESC>

inoremap <C-A> <Home>
noremap <C-A> <Home>

inoremap <C-E> <End>
noremap <C-E> <End>


"Edit mapping (make cursor keys work like in Windows: <C-Left><C-Right>
"Move to next word.
nnoremap <C-Left> b
vnoremap <C-S-Left> b
nnoremap <C-S-Left> gh<C-O>b
inoremap <C-S-Left> <C-O>gh<C-O>b

nnoremap <C-Right> w
vnoremap <C-S-Right> w
nnoremap <C-S-Right> gh<C-O>w
inoremap <C-S-Right> <C-O>gh<C-O>w

let g:syntastic_python_checker = 'pyflakes'

cmap w!! %!sudo tee > /dev/null %
set wildignore+=intustall/**
