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
Plugin 'tomasr/molokai'

" syntax highlighting
Plugin 'mustache/vim-mustache-handlebars'

" plugins

" tree explorer
Plugin 'scrooloose/nerdtree'

" show git status in nerdtree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" show git diff in the gutter
Plugin 'airblade/vim-gitgutter'

" vim motion
Plugin 'easymotion/vim-easymotion'

" file quick finder
Plugin 'kien/ctrlp.vim'

" vim statusline
Plugin 'Lokaltog/vim-powerline'

" git commands wrapper
Plugin 'tpope/vim-fugitive'

" global search tool
Plugin 'mileszs/ack.vim'

" most recently used
Plugin 'vim-scripts/mru.vim'

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

" change default mapleader key
let mapleader=';'

" set tab size and indent
set expandtab
set tabstop=2
set shiftwidth=2

" `2` is same as `set backspace=indent,eol,start`
set backspace=2

" always show status bar
set laststatus=2

" show line number
set number

" highlight current word
set hlsearch

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
map <C-e> :tabclose<CR>

" for `nerdtree` plugin
map <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<CR>

" for `vim-fugitive` plugin
map <leader>gb :Gblame<CR>
"map <leader>gs :Gstatus<CR>
"map <leader>gd :Gdiff<CR>
"map <leader>gl :Glog<CR>
"map <leader>gc :Gcommit<CR>
"map <leader>gp :Git push<CR>

" for `mru.vim` plugin
map <leader>mr :MRU<CR>

" ignore specific folders while using `ctrlp.vim`
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.git|\.idea|node_modules|bower_components|build|dist|vendor|tmp$',
  \ }

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" ==========Customized Settings End==========

