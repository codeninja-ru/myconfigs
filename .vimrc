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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'rubycomplete'
Bundle 'Solarized'
set background=light
let g:solarized_termtrans=0
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized


"
"" My Bundles here:
""
"" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
"" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"


if has("autocmd")
  " Enable file tupe detection
  filetype on

  autocmd FileType haskell setlocal ts=4 sts=4 sw=4 expandtab
endif
