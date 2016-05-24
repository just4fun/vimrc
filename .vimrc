set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ==========Customized Plugins Start==========

" themes
Plugin 'dracula/vim'
Plugin 'tomasr/molokai'

" syntax highlighting
Plugin 'mustache/vim-mustache-handlebars'

" plugins
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-fugitive'

" ==========Customized Plugins End==========

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

" ==========Customized Settings Start==========

syntax enable
syntax on

" theme
set background=dark
color molokai
"color dracula

" change default mapleader key
let mapleader=';'

" `2` is same as `set backspace=indent,eol,start`
set backspace=2

" always show status bar
set laststatus=2

" show line number
set number

" highlight current line and column
set cul
set cuc
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#3d3f49 gui=NONE

" reduce update time for plugin `vim-gitgutter`
set updatetime=250

" customized mappings
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
map <C-w> :tabclose<CR>

map <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>

map <leader>gb :Gblame<CR>
"map <leader>gs :Gstatus<CR>
"map <leader>gd :Gdiff<CR>
"map <leader>gl :Glog<CR>
"map <leader>gc :Gcommit<CR>
"map <leader>gp :Git push<CR>

" ignore specific folders when using `ctrlp.vim`
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.git|\.idea|node_modules|bower_components|build|dist|vendor|tmp$',
  \ }

" ==========Customized Settings End==========
