" --------------------------------------------------------------------
" @author Leechael Yim <yanleech@gmail.com>
" --------------------------------------------------------------------

" --------------------------------------------------------------------
" Functions
" --------------------------------------------------------------------
function SetTabWidthEqTwo()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endfunction

function SetTabWidthEqFour()
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
endfunction


" --------------------------------------------------------------------
" Editor behaviors
" --------------------------------------------------------------------
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible
set novisualbell
set noerrorbells
set ruler
set magic
set incsearch
set hlsearch
set ignorecase
set history=200
set display=lastline
if has('gui_running')
    set showcmd
endif
set wildmenu
set wildmode=list:longest
set modelines=0
set autoindent
set expandtab
set ttyfast

" Save on losing focus
au FocusLost * :wa


" --------------------------------------------------------------------
" Moving
" --------------------------------------------------------------------
" Prefer <leader> key `,` insteads of `\`
let mapleader=","
" Shortcut clean out search highline
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" For new vimer....like me XDDD
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>


" --------------------------------------------------------------------
" Language 
" --------------------------------------------------------------------
if has('win32')
    lang en
endif
set encoding=UTF-8
set langmenu=en_US.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,big5


" --------------------------------------------------------------------
" Display
" --------------------------------------------------------------------
if has('gui_running') && has('gui')
    color desert
    set cursorline
    set backspace=indent,eol,start
    set wrap
    set linebreak
endif
autocmd GUIEnter * winsize 100 56
autocmd GUIEnter * set go-=T go-=m
autocmd GUIEnter * set columns=100
autocmd GUIEnter * set lines=36
set ambiwidth=double
" Install YaHei_Mono in Windows!
if has('win32')
    set gfw=YaHei_Mono:h10
endif
syntax on
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set guitablabel=^N:%t


" --------------------------------------------------------------------
"  HTML
" --------------------------------------------------------------------
au FileType html call SetTabWidthEqTwo()


" --------------------------------------------------------------------
"  Python
" --------------------------------------------------------------------
au FileType python call SetTabWidthEqTwo()


" --------------------------------------------------------------------
"  PHP
" --------------------------------------------------------------------
au FileType php call SetTabWidthEqFour()
au FileType php set makeprg=php\ -l\ %
au FileType php set errorformat=%m\ in\ %f\ on\ line\ %l
" surround.vim customize shortcut: -
au FileType php let g:surround_45 = "<?php \r ?>"
" surround.vim customize shortcut: -
au FileType php let g:surround_61 = "<?=\r?>"

au BufWritePre *.php setlocal binary
au BufWritePre *.php setlocal noeol
au BufWritePost *.php setlocal nobinary


" --------------------------------------------------------------------
"  JavaScript
" --------------------------------------------------------------------
au FileType javascript call SetTabWidthEqFour()


" --------------------------------------------------------------------
"  NERDTree
" --------------------------------------------------------------------
map <C-d> :NERDTreeToggle<CR>
let NERDTreeWinSize=26
let NERDTreeShowBookmarks=1


" --------------------------------------------------------------------
" --------------------------------------------------------------------
