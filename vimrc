" Author: Harsh Modhera
" Github: hkmodhera

"" Plugin Manager ""

" All plugins go between vundle begin/end "

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'VundleVim/Vundle.vim' 

call vundle#end()               " required
filetype plugin indent on       " required

" Personalized configurations after Vundle does its thing "

"" Colors / Themes ""

" colorscheme [ name ]          " All color schemes are stored in ~/.vim/colors/
"                               " No color scheme means vim uses the same
"                                 one as iterm2

"" Basic Configurations ""

syntax enable                   " Enable syntax highlighting

" Formating "

set tabstop=4                   " Number of spaces given to <TAB> when file is loaded
set softtabstop=4               " Number of spaces given to <TAB> when editing
set expandtab                   " Converts tabs to spaces (4 spaces to be exact)
set shiftwidth=4                " Number of spaces given to indenting using v - j/k - >/<
set autoindent                  " Auto indent
set backspace=indent,eol,start  " Makes backspace work similar to other programs

" Navigation "

set number                      " Displays line numbers
set relativenumber              " Centers your cursor location to be line 0
set ruler                       " Meta info dispalyed at bottom right corner
set showcmd                     " Shows the last command in bottom right corner
set nocursorline                " Highlights the line in which the cursor is on
set wildmenu                    " Auto complete for filenames?
set hidden                      " Allows you to switch between unsaved buffers/files

" Saves and restores folds upon exiting/opening files "
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview    

" Searching "

set showmatch                   " Highlights matching parentheses/brackets
set incsearch                   " Search as the characters are entered
set hlsearch                    " Highlight searched matches corner
set ignorecase                  " Ignores the case when searching

"" Key Mappings ""

" map = recursive   noremap = non-recursive
" i,n,v infront of above keywords specify the mode

:let mapleader = ","

nnoremap <space> za             " Toggle the fold at the cursor 
nnoremap <leader>nt :NERDTree   " Open the nerdtree file explorer

"" Miscellaneous ""

" Document Editing "

" ]s is next misspelled word
" [s is prev misspelled word
" zg is to add a word to spellfile
" z= is to see suggestions for misspelled word

" Set the spell file to store personal dictionary "
set spellfile=~/.vim/spell/en.utf-8.add

" Turn on spell check in specific files "
"   had to run command locally once for each file type
"   and then for every file afterwards of same type, 
"   spell check worked becuase of the of following lines
autocmd FileType markdown :setlocal spell spelllang=en_us
autocmd FileType text :setlocal spell spelllang=en_us

" Set textwidth to 80 in specific files
autocmd FileType markdown :setlocal textwidth=80
autocmd FileType text :setlocal textwidth=80

" Change highlight color of misspelled words "
highlight SpellBad      ctermfg=black ctermbg=yellow
highlight SpellCap      ctermfg=black ctermbg=cyan
highlight SpellLocal    ctermfg=black ctermbg=magenta
highlight SpellRare     ctermfg=black ctermbg=red

" Turn on auto complete spellchecked files "
set complete+=kspell

" Nerdtree Plugin "

" Automatically opens nerdtree if vim is opened with no arguments "
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" If nerdtree is last open buffer, close vim entirely "
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Close nerdtree when you open a file "
let NERDTreeQuitOnOpen=1

" Show hidden files in nerdtree "
" let NERDTreeShowHidden=1      " You can toggle hidden files with <shift-i>
"                                 so this is not necessary

" Make nerdtree UI look nicer "
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Nerdtree Git Plugin "

let g:NERDTreeIndicatorMapCustom = {
	\ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

