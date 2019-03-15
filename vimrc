set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim', {'for': 'python'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rakr/vim-one'
Plugin 'Yggdroot/LeaderF'

"Plugin 'dracula/vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
"Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-dispatch'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'heavenshell/vim-tslint'
Plugin 'Quramy/tsuquyomi'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'

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


function! ConfigureTabs()
  set switchbuf=usetab
endfunction
"let g:airline_theme='one'
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
    ":nnoremap <C-S-f>   :CtrlP<CR>
    :nnoremap <C-S-d>   :NERDTree<CR>
    :nmap <F8> :TagbarToggle<CR>
    inoremap <Nul> <C-n>

endfunction

function SetupSyntastic()
    let g:syntastic_enable_perl_checker=1
    let g:syntastic_python_checkers=['pylint']
endfunction

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif


set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=**/node_modules/*,**/bower_components/*]


au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead Vagrantfile setf ruby

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

:call SetupSyntastic()
:call SetupMap()
:call ConfigureTabs()
syntax on
set encoding=utf-8
set t_Co=256
colorscheme default 
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
  set ttymouse=xterm
  "set ttymouse=xterm2
endif

let g:ctrlp_custom_ignore = {
    \   'dir': 'node_modules\|DS_store\|\.git$\|build\|dist',
    \   'file': '\v\.(exe|dll|lib)$'
    \}
let g:ctrlp_match_window='results:25'
let g:ctrlp_max_height='25'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_working_path_mode = 'ra'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

if has("gui_vimr")
end


 augroup vimrc

   autocmd!

   autocmd BufWinEnter,Syntax * syn sync minlines=500 maxlines=500

 augroup END
