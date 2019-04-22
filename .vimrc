" Bufferbandit vimrc
autocmd FileType python nnoremap <buffer> <F9> :w \| exec '!clear; python3' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <F5> :w \| exec '!clear; python3' shellescape(@%, 1)<cr>
set background=dark
set mouse-=a
syntax on

