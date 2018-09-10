set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sickill/vim-monokai'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-dispatch'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
"Plugin 'nsf/gocode', {'rtp': 'vim/'}



Plugin 'sheerun/vim-polyglot'

Plugin 'ryanoasis/vim-devicons'

call vundle#end()

let mapleader=","
"let g:jedi#force_py_version = 2
let g:jedi#auto_initialization = 0

:set filetype=xml

filetype plugin indent on  

"gg=G
set wildmenu
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set nu
set scrolloff=3
set tabstop=4 
set shiftwidth=4
set smartindent
set smarttab
set expandtab
set autoindent
set ruler
set nobackup 
set nowritebackup
set noswapfile
"set list
set directory=~/tmp/
set showmatch
set smartcase
set hlsearch
set incsearch
set wildignore=*.swp,*.bak,*.pyc,*.class
set mouse+=a
set backspace=indent,eol,start
set completeopt=longest,menuone
set background=dark
set clipboard=unnamed
if( has("termguicolors"))

    set termguicolors
endif

set laststatus=2

set cursorline


let base16colorspace=256
let g:elite_mode=1

let g:SuperTabDefaultCompletionType="<C-X><C-O>"


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
set encoding=utf-8
colorscheme default
"let g:solarized_termcolors=256

if !exists( "g:ycm_semantic_triggers")
    let g:ycm_semantic_trigger = {}
endif
let g:ctrlp_custom_ignore = 'node_modules\|DS_store\|git'
let g:ctrlp_match_window='results:100'
let g:ctrlp_max_height='40'
"let g:ycm_semantic_triggers['typescript'] = ['.']
if has("gui_vimr")
end
