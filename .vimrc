set tabstop=2
set shiftwidth=2
" spaces instead of tabs
set expandtab
" always set auto indent on
set autoindent
set incsearch
" show tab characters. visual whitespace
set list
set listchars=tab:>.

set ignorecase
set showmatch

set smarttab
set ai
set cin

set nocompatible               " be iMproved
filetype off                   " required!

" turn on pathogen
execute pathogen#infect()
" to generate help
":call pathogen#helptags()

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors=['proprietary attribute "ng-', 'proprietary attribute "pg-'] " ignore angular ng- attributes
let g:airline_powerline_fonts = 1

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|build'

filetype plugin indent on     " required!

syntax on

if has("autocmd")
  " Enable file tupe detection
  filetype on

  autocmd FileType haskell setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab foldmethod=syntax number
  autocmd FileType typescript setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab number
endif

set omnifunc=syntaxcomplete#Complete

" key maps
map <C-n> :NERDTreeToggle<CR>
