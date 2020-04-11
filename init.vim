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

if (&t_Co > 2)
  syntax on
endif

filetype plugin indent on

augroup vimrcEx
  autocmd!

  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .{eslint,tslint,prettier}rc set filetype=json
augroup END

set number
set numberwidth=5

set tabstop=2
set shiftwidth=2
set expandtab
set shiftround
