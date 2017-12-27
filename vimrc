"" Plugin Manager ""

" All plugins go between vundle begin/end "

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

 

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
set autoindent                  " Auto indent
set backspace=indent,eol,start  " Makes backspace work similar to other programs

" Navigation "

set number                      " Displays line numbers
set relativenumber              " Centers your cursor location to be line 0
set showcmd                     " Shows the last command in bottom right corner
" set cursorline                " Highlights the line in which the cursor is on
set wildmenu                    " Auto complete for filenames?
set hidden                      " Allows you to switch between unsaved buffers/files

" Searching "

set showmatch                   " Highlights matching parentheses/brackets
set incsearch                   " Search as the characters are entered
set hlsearch                    " Highlight searched matches

"" Key Mappings ""



