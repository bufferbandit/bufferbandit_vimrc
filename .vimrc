"+--------------------------+"
"|   Vimrc file as used by  |"
"|   Bufferbandit. 		    |"
"|  (Python oriented)	    |"
"+--------------------------+"

"Python commands
"---------------
autocmd FileType python nnoremap <buffer> <F8> :w \| exec '!clear; python' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <F9> :w \| exec '!clear; python' shellescape(@%, 1)<cr>

"Mouse copy controller
"---------------------
:set number
:se mouse+=a


"Python indentation
"------------------
syntax on
set showmatch
set ts=4
set sts=4
set sw=4
set autoindent
set smartindent
set smarttab
set expandtab
set number
set hls
set textwidth=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set incsearch
set ignorecase
set ruler
set wildmenu
set smarttab
filetype indent on
filetype on
filetype plugin on
au FileType python setl shiftwidth=4 tabstop=4

"Pathogen
"--------
" Installation instructions
" 
" mkdir -p ~/.vim/autoload ~/.vim/bundle 
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" cd ~/.vim/bundle 
" git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
"
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



"Directly into insert mode
"-------------------------
au BufRead,BufNewFile * start

"Autocompletion
"--------------
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"Vundle
"------
set nocompatible              
filetype off                
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required
" vundle {{{1

" needed to run vundle (but i want this anyways)
set nocompatible

" vundle needs filtype plugins off
" i turn it on later
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()

" list of plugins {{{2
" let Vundle manage Vundle (this is required)
"old: Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'

" to install a plugin add it here and run :PluginInstall.
" to update the plugins run :PluginInstall! or :PluginUpdate
" to delete a plugin remove it here and run :PluginClean
" 

" YOUR LIST OF PLUGINS GOES HERE LIKE THIS:
Plugin 'bling/vim-airline'

" add plugins before this
call vundle#end()

" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on

 
"Autocompletion

let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0  # disables the autocomplete to popup whenever you press .
syntax on
filetype plugin indent on

