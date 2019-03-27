set nocompatible 
filetype off
 

call plug#begin('~/.vim/plugged')
 Plug 'davidhalter/jedi-vim', {'for': 'python'}
 Plug 'airblade/vim-gitgutter'
 
 "air line plugins
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 
 " fuzzy finder 
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'

 Plug 'ncm2/ncm2'

 Plug 'tpope/vim-fugitive'
 
 " Directory Plugin
 Plug 'scrooloose/nerdtree'


 " theme 
 Plug 'sickill/vim-monokai'
 Plug 'ErichDonGubler/vim-sublime-monokai' 
 Plug 'rakr/vim-one'

 Plug 'tpope/vim-dispatch'
 Plug 'majutsushi/tagbar'
 
 Plug 'terryma/vim-multiple-cursors'
 "Plug 'heavenshell/vim-tslint'
 Plug 'Quramy/tsuquyomi'

 Plug 'w0rp/ale'
 Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'neomake/neomake'
  
 "Language support
 Plug 'sheerun/vim-polyglot'
 Plug 'fatih/vim-go'

 Plug 'mattn/emmet-vim'


 "Plug 'ryanoasis/vim-devicons'

 if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
 else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
 endif
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'OmniSharp/omnisharp-vim'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete-clangx'
Plug 'Shougo/neco-syntax'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'kaicataldo/material.vim'
Plug 'brooth/far.vim'
Plug 'tpope/vim-surround'
call plug#end()

let g:deoplete#enable_at_startup = 1
 
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
set textwidth=140
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
set rtp+=/usr/local/opt/fzf
 
 
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim pat/ch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set laststatus=2

set cursorline


"let base16colorspace=256
let g:elite_mode=1

let g:SuperTabDefaultCompletionType="<C-X><C-O>"

let g:deoplete#file#enable_buffer_path = 1
function! ConfigureTabs()
  set switchbuf=usetab
endfunction
au FileType ruby set tw=80 ts=2
au BufRead,BufNewFile *.tt set filetype=html

function! SetupMap()
	:imap ( ()<left> 
    :imap [ []<left> 
    :imap { {}<left>
    ":nnoremap <C-q> :tabprevious<CR>
    ":nnoremap <C-w> :tabnext<CR>
    :nnoremap <C-t> :tabnew<CR>     
    :nnoremap <C-o> :edit<CR> 
    ":nnoremap <C-S-f>   :CtrlP<CR>
    :nnoremap <C-S-d>   :NERDTree<CR>
    :nmap <F8> :TagbarToggle<CR>
    nnoremap <C-p> :Files<Cr>
    inoremap <Nul> <C-n>
    noremap <Up> <NOP>
    noremap <Down> <NOP>
    noremap <Left> <NOP>
    noremap <Right> <NOP>
endfunction

let g:ale_completion_enabled = 1

"function SetupSyntastic()
"    let g:syntastic_enable_perl_checker=1
"    let g:syntastic_python_checkers=['pylint']
"endfunction


set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=**/node_modules/*,**/bower_components/*]


au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead Vagrantfile setf ruby

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
:call SetupMap()
:call ConfigureTabs()
syntax on
set encoding=UTF-8
set t_Co=256
colorscheme material 
"let g:solarized_termcolors=256
if !exists( "g:ycm_semantic_triggers")
    let g:ycm_semantic_trigger = {}
endif

if has("gui_running")
  "mouse visual block (ala MS Word)
  nmap <A-LeftMouse> ms<LeftMouse><C-v>`so
  imap <A-LeftMouse> <Esc><C-v>`^ms<Esc>gi<LeftMouse><C-o><C-v>`so
  vmap <A-LeftDrag> <LeftDrag>
  vmap <A-LeftMouse> <C-v><LeftMouse>msgv`s
  vmap <S-LeftMouse> v<LeftMouse>msgv`s
  set mouse=ra
else
  "paste toggle
  nmap <F7> :set paste! paste?<CR>
  imap <F7> <C-o>:set paste!<CR>
  vmap <F7> <Esc>:set paste!<CR>gv
  "xterm mouse with middleclick paste
  nnoremap <MiddleMouse> i<MiddleMouse>
  vnoremap <MiddleMouse> s<MiddleMouse>
  set pastetoggle=<F7> mouse=rnv
  "choose either one
  "set ttymouse=xterm
  "set ttymouse=xterm2
endif
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
 
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif 
 
  augroup vimrc
 
    autocmd!
 
    autocmd BufWinEnter,Syntax * syn sync minlines=500 maxlines=500
 
augroup END

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


let g:user_emmet_install_global = 0
autocmd FileType xml,html,css EmmetInstall
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
let g:user_emmet_leader_key=','


set hidden

