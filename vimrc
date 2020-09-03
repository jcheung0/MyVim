set nocompatible 
filetype off
 

call plug#begin('~/.vim/plugged')
 "Plug 'davidhalter/jedi-vim', {'for': 'python'}
 Plug 'airblade/vim-gitgutter'
 Plug 'vhdirk/vim-cmake'
 Plug 'evanleck/vim-svelte', {'branch': 'main'} 
 "Plug 'ycm-core/YouCompleteMe'
 Plug 'OmniSharp/omnisharp-vim' 
 Plug 'tpope/vim-dadbod'
 Plug 'kristijanhusak/vim-dadbod-ui'
 "air line plugins
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'tomasiser/vim-code-dark'
 Plug 'mileszs/ack.vim'
 
 " fuzzy finder 
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

 "Plug 'ncm2/ncm2'

 Plug 'tpope/vim-fugitive'
 Plug 'dart-lang/dart-vim-plugin'
 
 " Directory Plugin
 Plug 'scrooloose/nerdtree'
 Plug 'chriskempson/base16-vim'
 Plug 'vifm/vifm.vim'
 if has('nvim')
    "Plug 'neovim/nvim-lsp'
 endif

Plug 'jacoborus/tender.vim'
 Plug 'tpope/vim-dispatch'
 Plug 'majutsushi/tagbar'
 
 Plug 'terryma/vim-multiple-cursors'
 Plug 'Quramy/tsuquyomi'
 "Plug 'dense-analysis/ale'
Plug 'frazrepo/vim-rainbow'

 "Plug 'w0rp/ale'
 Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'neomake/neomake'
  
 "Language support
 Plug 'sheerun/vim-polyglot'
 Plug 'fatih/vim-go'
 Plug 'mattn/emmet-vim'
 
 Plug 'HerringtonDarkholme/yats.vim'
Plug 'kaicataldo/material.vim'
Plug 'brooth/far.vim'
Plug 'tpope/vim-surround'
call plug#end()

"let g:deoplete#enable_at_startup = 1
highlight clear

"vim.cmd('packadd nvim-lsp')
"require'nvim_lsp'.gopls.setup{}

if(exists("syntax_on"))
    syntax reset
endif
 let mapleader=","
 "let g:jedi#force_py_version = 2
 let g:jedi#auto_initialization = 0
let g:material_theme_style = 'darker'
 
 :set filetype=xml
 
 filetype plugin indent on  
 if !has('nvim')
    let g:vimspector_enable_mappings = 'HUMAN'
    packadd! vimspector
 endif
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
set list
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
"set noexpandtab 
let base16colorspace=256 
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


let base16colorspace=256
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
    :nnoremap <C-q> :tabprevious<CR>
    :nnoremap <C-e> :tabnext<CR>
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
    :noremap <C-S-j> :m+<CR>
    :noremap <C-S-k> :m-2<CR>
endfunction

let g:ale_completion_enabled = 1

"function SetupSyntastic()
"    let g:syntastic_enable_perl_checker=1
"    let g:syntastic_python_checkers=['pylint']
"endfunction


set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=**/node_modules/*,**/bower_components/*]

let g:dbml_nofold_blocks = 1

au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead Vagrantfile setf ruby

let g:typescript_compiler_binary = 'tsc'

let g:typescript_compiler_options = ''
let g:python3_host_prog=expand('/usr/local/bin/python3')

:call SetupMap()
:call ConfigureTabs()
syntax on
set encoding=UTF-8
set t_Co=256
set t_ut=
"colorscheme material 
colorscheme codedark
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
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>


set packpath=~/.vim/

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)


" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
let g:OmniSharp_server_stdio = 1
"let g:OmniSharp_popup = 0

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
