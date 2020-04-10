#!/usr/local/bin/zsh
" File: init.vim
" Author: Jeff Heaton <aloha@salt.ac>
" Last Modified Date: 2020.03.22

set encoding=utf-8

let mapleader = " "
set backspace=indent,eol,start
set directory=/tmp//
set history=50
set autowrite
set nomodeline

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
