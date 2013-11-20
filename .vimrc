set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake.git'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'tpope/vim-bundler.git'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'gorodinskiy/vim-coloresque.git'

inoremap <M-o> <Esc>o
inoremap <C-j> <Down>
let g:ragtag_global_maps = 1

" vim-scripts repos
" non github repos

" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

syntax enable         " and show them in color if possible.
runtime macros/matchit.vim  " enhanced keyword matching on %
set viminfo^=!        " Add recently accessed projects menu (project plugin)

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

set cf                  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256         " Number of things to remember in history.
set autowrite           " Writes on make/shell commands
set ruler               " Ruler on
set nu                  " Line numbers on
set nowrap              " Line wrapping off
set timeoutlen=250      " Time to wait after ESC (default causes an annoying delay)
"
set path=,.             " Search path for gf to include cwd and current file's dir.
" COLORS 
"
set t_Co=256              " Set # terminal colors 
" colorscheme bclear      " Mellower black background, subdued
" colorscheme borland     " bright blue background!
" colorscheme jellybeans  " lo-contrast, dim gray-on-black
" colorscheme leo         " high-contrast theme via http://www.vim.org/scripts/script.php?script_id=2156
" colorscheme railscasts  " sharp black background for terminal vim
" colorscheme morning     " for gVim, colors on white 
set background=light
set background=dark
colorscheme solarized

" Formatting
set tabstop=2                   " Tabs are 2 spaces
set backspace=indent,eol,start  " equivalent to next line:
" set bs=2                      " Backspace over everything in insert mode
set shiftwidth=2                " Tabs under smart indent
set autoindent                  " Indent per last line
set smarttab                    " Tab in indent smartwidth spaces
set expandtab                   " Tab in Insert mode to spaces
set nocp incsearch              " vi-incompatible, incremental search display
" Formatting (some of these are for coding in C and C++)
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set cindent
" Auto format comments, text using textwidth, 'gq' to reformat, add comment
" leader following <Enter> in Insert mode
set formatoptions=tcqr

" Visual
set showmatch                 " Show matching brackets.
set matchtime=5               " Bracket blinking for 10ths of a second
set list                      " Displays tab as ^I and eol as $
" Show $ at end of line and trailing space as  
"set lcs=tab:▸◦,eol:$,trail:~,extends:>,precedes:<
set listchars=tab:»·,eol:¬,trail:~,extends:>,precedes:<
set novisualbell              " No blinking .
set noerrorbells              " No noise.
set laststatus=2              " Always show status line.

" gvim specific
set mousehide  " Hide mouse after chars typed
" set mouse=a  " disabled Mouse in all modes - like to cut/paste out of
" terminal - April 8, 2010

" Use Exuberent Ctags to index projects. tag file should be in project root
" See http://ctags.sourceforge.net/ and
" http://www.codeulatescreencasts.com/products/vim-for-rails-developers
set tags=./tags

" Suggested for ragtag.vim

inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

" Add the Paste function to F2 to disable indenting when pasting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
