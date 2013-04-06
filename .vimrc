""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" :BundleInstall

set nocompatible " be iMproved 去掉討厭的有關vi一致性模式，避免以前版本的一些bug和侷限
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'ap/vim-css-color' 
"Bundle 'ervandew/supertab'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

nnoremap <silent> <F5> :NERDTree<CR> "NERDTree 設定開啟的快速鍵

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" recommend for powerline
set laststatus=2 " For `powerline`
set encoding=utf-8
set t_Co=256 " Explicitly tell vim that the terminal has 256 colors "

set showmatch " 高亮顯示匹配的括號
set cursorline " highlight current line
syntax on " enable syntax highlight
"autocmd InsertEnter * se cul " 用淺色 highlight current line

" Railscasts Theme
" To use For GVim
" git clone git://github.com/jpo/vim-railscasts-theme.git
" git clone git://github.com/oguzbilgic/sexy-railscasts-theme.git
"
" To use For Terminal
" http://www.vim.org/scripts/script.php?script_id=2175
"
" 1: install this file as ~/.vim/colors/railscasts.vim
" 2: Type "colorscheme railscasts" into your vimrc file

"colorscheme railscasts
colorscheme Tomorrow-Night


" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" editor settings
set history=1000 " 歷史記錄數
set backspace=2 " 在 insert 也可用 backspace

" Default Indentation
set autoindent
set shiftwidth=2 " 設定縮排寬度 = 2
set softtabstop=2
set tabstop=2 " Tab鍵的寬度 = 2

set mouse=a	" use mouse in all modes
set ignorecase " 搜尋忽略大小寫
"set incsearch " Incremental search
set report=0 " 通過使用: commands 指令，告訴我們文件的哪一行被改變過


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ??
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
"

"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif


"set showmatch " Show matching brackets.
"set ignorecase " Do case insensitive matching

"set showcmd " Show (partial) command in status line.
"set smartcase " Do smart case matching
"set autowrite " Automatically save before commands like :next and :make
"set hidden " Hide buffers when they are abandoned

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
" source /etc/vim/vimrc.local
"endif
