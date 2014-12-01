set nocompatible 
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'wincent/Command-T'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'nosami/Omnisharp'
Plugin 'tpope/vim-dispatch'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'faith/vim-go'
let mapleader=","

filetype plugin indent on  
set wildmenu
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
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
set backspace=indent,eol,start
set completeopt=longest,menuone
set background=dark


function! ConfigureTabs()
  set switchbuf=usetab
endfunction

au FileType ruby set tw=80 ts=2
au BufRead,BufNewFile *.tt set filetype=html

function! SetupMap()
	:imap ( ()<left> 
	:imap [ []<left> 
	:imap { {}<left>
    :nnoremap <C-p>     :tabprevious<CR>
    :nnoremap <C-n>     :tabnext<CR>
    :nnoremap <C-t>     :tabnew<CR>     
    :nnoremap <C-o>     :edit<CR> 
    :nnoremap <C-S-f>   :CtrlP<CR>
    :nnoremap <C-S-d>   :NERDTree<CR>
  :nmap <F8> :TagbarToggle<CR>
endfunction

function SetupSyntastic()
    let g:syntastic_enable_perl_checker=1
    let g:syntastic_python_checkers=['pylint']
endfunction
au BufNewFile,BufRead *.gradle setf groovy

:call SetupSyntastic()
:call SetupMap()
:call ConfigureTabs()
syntax on
colorscheme default
let g:solarized_termcolors=256

