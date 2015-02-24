set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" INTEGRATION
Plugin 'tpope/vim-fugitive'

" C/C++ NAVIGATION
Plugin 'a.vim'

" AUTO COMPLETION
Plugin 'Valloric/YouCompleteMe'

" SYNTAX CHECK
Plugin 'scrooloose/syntastic'

" SNIPPETS
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" SYNTAX HIGHLIGHT
Plugin 'justinmk/vim-syntax-extra'

" COLOR SCHEME
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'sjl/badwolf'
Plugin 'morhetz/gruvbox'

" FILE FINDER
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/unite.vim'
Plugin 'ujihisa/unite-colorscheme'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'

" INTERFACE
Plugin 'majutsushi/tagbar'
Plugin 'itchyny/lightline.vim'
Plugin 'mbbill/undotree'
Plugin 'mhinz/vim-startify'

" OTHER FEATURES
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bronson/vim-trailing-whitespace'
"Plugin 'myusuf3/numbers.vim'
"Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
filetype indent on

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

set undodir=~/.vim/undodir
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

let g:nerdtree_tabs_open_on_console_startup = 1

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:solarized_termcolors = 256
let g:rehash256 = 1
let g:molokai_original = 1
set background=dark
colorscheme molokai

