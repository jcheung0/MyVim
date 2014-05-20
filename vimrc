set nocompatible 
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'wincent/Command-T'

let mapleader=","

filetype plugin indent on  
set wildmenu
set nu
set mouse=a
set scrolloff=3
set tabstop=4 
set shiftwidth=4
set smartindent
set expandtab
set autoindent
set ruler
set nobackup 
set nowritebackup
set noswapfile
set list
set directory=~/tmp/
set showmatch
set smartcase
set hlsearch
set incsearch
set wildignore=*.swp,*.bak,*.pyc,*.class
set mouse=a

function! ConfigureTabs()
	set switchbuf=usetab
endfunction

au FileType ruby set tw=80 ts=2
au BufRead,BufNewFile *.tt set filetype=html

function! SetupMap()
	:imap ( ()<left> 
	:imap [ []<left> 
	:imap { {}<left>
	:inoremap " "" 
    :nnoremap <C-p>     :tabprevious<CR>
    :nnoremap <C-n>     :tabnext<CR>
    :nnoremap <C-t>     :tabnew<CR>     
    :nnoremap <C-o>     :edit<CR> 
endfunction

function SetupSyntastic()
    let g:syntastic_enable_perl_checker=1
    let g:syntastic_python_checkers=['pylint']
endfunction


:call SetupSyntastic()
:call SetupMap()
:call ConfigureTabs()
syntax on
