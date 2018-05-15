" Only vim, not compatible with vi.
set nocompatible

set  rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" powerline-status
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" colorscheme
"Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'

" python syntax
Plug 'hdima/python-syntax'

" surround
Plug 'tpope/vim-surround'

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Python autocomplete
Plug 'davidhalter/jedi-vim'

" Initialize plugin system
call plug#end()

set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set termencoding=utf-8

set fileformats=unix,mac,dos

syntax on

set ignorecase
set hlsearch

set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color

set tabstop=2
set shiftwidth=2
set softtabstop=2

set backspace=start,indent,eol

set backup
set swapfile
set backupdir=~/.vim/backup
set directory=~/.vim/swap

set foldmethod=syntax
set foldlevel=100

colorscheme molokai
