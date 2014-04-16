set nocompatible 
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
  
set wildmenu
set nu
set mouse=a
set scrolloff=3
set tabstop=4 
set shiftwidth=4
set smartindent
set expandtab

function! ConfigureTabs()
	set switchbuf=usetab
endfunction

function! SetupMap()
	:imap ( ()<left> 
	:imap [ []<left> 
	:imap { {}<left>
	:inoremap " "" 
    :nnoremap <C-p>     :tabprevious<CR>
    :nnoremap <C-n>     :tabnext<CR>
    :nnoremap <C-t>     :tabnew<CR>     
endfunction

:call SetupMap()
:call ConfigureTabs()

syntax on
