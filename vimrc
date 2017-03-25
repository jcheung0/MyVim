set nocompatible 
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'wincent/Command-T'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sickill/vim-monokai'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'nosami/Omnisharp'
Plugin 'tpope/vim-dispatch'
Plugin 'majutsushi/tagbar'
"Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'keith/swift.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim',{'do': 'make'}
Plugin 'OmniSharp/omnisharp-vim'
"Plugin 'elmcast/elm-vim'
"Plugin 'rust-lang/rust.vim'
Plugin 'HerringtonDarkholme/yats.vim'

let mapleader=","
"let g:jedi#force_py_version = 2
let g:jedi#auto_initialization = 0

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
set termguicolors

function! ConfigureTabs()
  set switchbuf=usetab
endfunction

au FileType ruby set tw=80 ts=2
au BufRead,BufNewFile *.tt set filetype=html

function! SetupMap()
	:imap ( ()<left> 
	:imap [ []<left> 
	:imap { {}<left>
    :nnoremap <C-m>     :tabprevious<CR>
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
au BufNewFile,BufRead Vagrantfile setf ruby
:call SetupSyntastic()
:call SetupMap()
:call ConfigureTabs()
syntax on
colorscheme default
"let g:solarized_termcolors=256

if !exists( "g:ycm_semantic_triggers")
    let g:ycm_semantic_trigger = {}
endif
let g:ctrlp_custom_ignore = 'node_modules\|DS_store\|git'
let g:ctrlp_match_window='results:100'
let g:ctrlp_max_height='40'
"let g:ycm_semantic_triggers['typescript'] = ['.']
