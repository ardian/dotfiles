" Enable copying to clipboard using `CTRL + c`
map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>
inoremap jj <ESC>



"-----------------Vundle---------------"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
" Nerd tree
Plugin 'scrooloose/nerdtree'
"Base16 Color Scheme
Plugin 'chriskempson/base16-vim'

"Vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" JavaScript plugins
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

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













let mapleader = ','				"The default leader is \ comma is better
set number
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>

"-----------------Javascript---------------"
filetype plugin indent on


"-----------------conf from Tom---------------"
set viminfo='20,<1000,s100

set noswapfile
" http://stackoverflow.com/a/21323445
" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

    " Python
    autocmd BufRead *.py set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
endif

" For everything else, use a tab width of 2 space chars.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set textwidth=72




"-----------------Disable bell---------------"
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif


"-----------------Ned a name for this conf---------------"
set clipboard=unnamed



"-----------------Visuals---------------"

"colorscheme atom-dark-256"
"set t_CO=256"
colorscheme base16-default-dark
let base16colorspace=256
set background=dark
set laststatus=2
let g:airline_powerline_fonts = 1
set guifont=Monaco_Linux-Powerline:h12


set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
set background=dark
"colorscheme delek


"-----------------Searching---------------"
set hlsearch
set incsearch





"-----------------Split Managment---------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>





"-----------------Mappings---------------"
"Make it easy to edit the Vimrc file."
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal."
nmap <Leader><space> :nohlsearch<cr> 

nmap <Leader>t :NERDTreeToggle<cr>







"-----------------Auto-Commands---------------"

"Automatically source the Vimrc file on safe BufWritePost .vimrc source %

augroup  autosourcing
	autocmd!	
	autocmd BufWritePost .vimrc source %
augroup END


