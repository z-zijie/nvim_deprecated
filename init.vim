"""""""""""""""""""""""""""""""""""""""""""""""""
" Most of the project are copied from amix/vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""
" There are serval sections in this file:
"
"	=> General
"	=> User interface
"	=> Colors and Fonts



"""""""""""""""""""""""""""""""""""""""""""""""""
"	== General ==
"""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history NVIM has to remember
set history=500

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "

" [Personal Feature] Fast saving
nmap <LEADER>w :w!<CR>

" [PF] :W sudo saves the file
" (For handing the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <BAR> edit!


"""""""""""""""""""""""""""""""""""""""""""""""""
" 	== User interface ==
"""""""""""""""""""""""""""""""""""""""""""""""""

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Hightlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expression turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Show linenumber
set number
" Show relativenumber
set relativenumber


"""""""""""""""""""""""""""""""""""""""""""""""""
" 	== Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""
