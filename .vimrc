filetype plugin on  " Automatically detect file types.
syntax enable       " and show them in color if possible.
set nocompatible    " We don't want vi compatibility.

" Add recently accessed projects menu (project plugin)
set viminfo^=!

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
" COLORS 
"
set t_Co=256            " Set # terminal colors 
" colorscheme bclear      " Mellower black background, subdued
" colorscheme borland     " bright blue background!
" colorscheme jellybeans  " lo-contrast, dim gray-on-black
" colorscheme leo         " high-contrast theme via http://www.vim.org/scripts/script.php?script_id=2156
" colorscheme railscasts    " sharp black background for terminal vim
" colorscheme morning     " for gVim, colors on white 
set background=dark
colorscheme solarized

" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set backspace=indent,eol,start " equivalent to next line:
" set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
" Auto format comments, text using textwidth, 'gq' to reformat, add comment
" leader following <Enter> in Insert mode
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

" Visual
set showmatch     " Show matching brackets.
set mat=5         " Bracket blinking.
set list
" Show $ at end of line and trailing space as  
"set lcs=tab:▸◦,eol:$,trail:~,extends:>,precedes:<
set listchars=tab:»·,eol:¬,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

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
