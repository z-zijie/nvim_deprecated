"""""""""""""""""""""""""""""""""""""""""""""""""
" Most of the project are copied from amix/vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""
" There are serval sections in this file:
"
"	=> General
"	=> User interface
"	=> Colors and Fonts
"	=> Text, tab and indent related
"	=> Moving around, tabs, windows and buffers
"	=> Status line
"	=> Editing mappings

"""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""
" == Source some external configuration files ==
"""""""""""""""""""""""""""""""""""""""""""""""""

" Source the list of plugins
source pluglist.vim




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

" [PF] Fast Quit
nmap <LEADER>q :q<CR>

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

" Show cursorline
set cursorline

" Show command
set showcmd


"""""""""""""""""""""""""""""""""""""""""""""""""
" 	== Colors and Fonts ==
"""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

try
	colorscheme onedark
catch
endtry

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""
"	== Text, tab and indent related ==
"""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai		"Auto indent
set si		"Smart indent
set wrap	"Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""
"   == Moving around, tabs, windows and buffers ==
"""""""""""""""""""""""""""""""""""""""""""""""""

" Disable hightlight when <LEADER><CR> is pressed
map <silent> <LEADER><CR> :noh<CR>

" Smart way to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Useful mappings for managing tabs
map <LEADER>tn :tabnew<CR>
map <LEADER>to :tabonly<CR>
map <LEADER>tc :tabclose<CR>
map <LEADER>tm :tabmove
map <LEADER>t<LEADER> :tabnext<CR>

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"""""""""""""""""""""""""""""""""""""""""""""""""
"   == Status line ==
"""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""
"   == Editing mappings ==
"""""""""""""""""""""""""""""""""""""""""""""""""

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

" [PF] Go to File under cursor in new tabpage
nmap <LEADER>gf <C-w>gf

