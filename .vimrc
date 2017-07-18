call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" PlugIn outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'vim-scripts/L9'

" INTEGRATION
Plug 'tpope/vim-fugitive'

" C/C++ NAVIGATION
Plug 'vim-scripts/a.vim'

" AUTO COMPLETION
"Plug 'Valloric/YouCompleteMe'

" SYNTAX CHECK
"Plug 'scrooloose/syntastic'

" SNIPPETS
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" SYNTAX HIGHLIGHT
Plug 'justinmk/vim-syntax-extra'

" COLOR SCHEME
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'
Plug 'chriskempson/base16-vim'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'

" FILE FINDER
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'
Plug 'mileszs/ack.vim'
Plug 'dyng/ctrlsf.vim'

" INTERFACE
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'fholgado/minibufexpl.vim'

" OTHER FEATURES
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'kien/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bronson/vim-trailing-whitespace'
"Plug 'myusuf3/numbers.vim'
"Plug 'Yggdroot/indentLine'

call plug#end()

set nocompatible
syntax on
filetype plugin indent on
let mapleader = ","
set tags+=tags;

set fileencodings=utf-8
set fileencoding=utf-8
set termencoding=utf-8

set autoindent
set cindent
set smartindent

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set hlsearch
set incsearch
set ignorecase
set smartcase

set magic

set showcmd
set showmatch

set linebreak
set backspace=eol,start,indent

set history=1000
set nobackup

set lazyredraw
set nowrap
set title
set laststatus=2
set number
set ruler
set wildmenu
set scrolloff=4
set mouse=a

set completeopt-=preview

set undodir=~/.local/share/nvim/undo
set undofile
set undolevels=1000  " maximum number of changes that can be undone
set undoreload=10000  " maximum number lines to save for undo on a buffer reload

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

func! Sts( )
    let st = expand("<cword>")
    exe "sts ".st
endfunc
nnoremap <leader>st :call Sts( )<cr>

map <leader>f :FixWhitespace<cr>
map <leader>u :UndotreeToggle<cr>
map <leader>t :TagbarToggle<cr>
map <leader>n <plug>NERDTreeTabsToggle<cr>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit = "vertical"

let g:ycm_confirm_extra_conf = 0
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:nerdtree_tabs_open_on_console_startup = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

let g:solarized_termcolors = 256
let g:rehash256 = 1
let g:molokai_original = 1

set background=dark
colorscheme molokai

