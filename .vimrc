" linus' vimrc

syntax on				"colors
filetype on				"let vim detect the filetype
set hlsearch				"highlite search
set termguicolors			"std colors
set nocompatible			"not behave like vi
set mouse=a				"enable mouse

filetype plugin on			"enable filetype
set path+=**				"add sub-directories to search path
set wildmenu				"show options when tab in search
set wildignore+=*.cache,.git/*,*.jscache,*/.git/*

set tabstop=4				"1tab = 4 spaces
set shiftwidth=4

" Leader

let mapleader=" "
nnoremap <leader>s :w<CR>		
"write
nnoremap <leader>q :q<CR>		
"quit
nnoremap <leader>g :wq<CR>	
"write and quit

autocmd vimenter * colorscheme vague	"color theme

set autoindent
set smarttab

set number
set relativenumber
set ruler
set encoding=utf-8

"netrw

let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4	"open in prior window
let g:netrw_altv=1		" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\/\s\s|)\zs\.15\+'

" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <Leader><Leader> :Files<CR>

nnoremap go :let f=expand('<cfile>') . '.md' \| if filereadable(f) \| execute 'edit!' f \| else \| execute 'normal! gf' \| endif<CR>

