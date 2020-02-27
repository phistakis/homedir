set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
" set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=1               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                   " set an 80 column border for good coding style
set clipboard=unnamed       " copy to system clipboard
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

let g:mapleader = '\'

nnoremap <leader>s :set invspell<CR>
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <Leader>gb :Gblame<CR>

inoremap <leader>p <C-R>="import pudb; pudb.set_trace()"<CR>
inoremap <leader>d <C-R>=strftime("%Y-%m-%dT%H:%M")<CR>


call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
call plug#end()


"----------------------------------------------------------
" FZF
"----------------------------------------------------------
if executable('fzf') " && PlugLoaded('fzf')
    command! -bang -nargs=* GGrep
      \ call fzf#vim#grep(
      \   'git grep --line-number '.shellescape(<q-args>), 0,
      \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)
    nmap <silent> <Leader>g :GGrep<CR>
    nmap <silent> <Leader>f :GFiles<CR>
    nmap <silent> <Leader>F :Files<CR>
    nmap <silent> <Leader>t :Tags<CR>
    nmap <silent> <Leader>b :Buffers<CR>
    nmap <silent> <leader>/ :BLines<CR>
    nmap <silent> <leader>C :Commands<cr>
endif

" Tag current dir
command! CTags !ctags -R
  \ --exclude='build*' --exclude='venv/**' --exclude='**/site-packages/**' 
  \ --exclude='dist/**' --exclude='*.json' --python-kinds=-i *

