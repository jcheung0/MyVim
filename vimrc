
set nocompatible 
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
  
set wildmenu

set mouse=a
set scrolloff=3

function! ConfigureTabs()
	set switchbuf=usetab
endfunction

function! SetupMap()
	:imap ( ()<left> 
	:imap [ []<left> 
	:imap { {}<left>
	:inoremap " ""  
endfunction

:call SetupMap()
:call ConfigureTabs()
syntax on
