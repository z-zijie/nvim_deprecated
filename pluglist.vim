" Source the list of plugins
call plug#begin('~/.config/nvim/plugged')

" Install Onedark ColorScheme
Plug 'joshdick/onedark.vim'

" Install 'Lean & mean status/tabline for vim'
Plug 'vim-airline/vim-airline'

" Install the code-completion engine
"Plug 'valloric/youcompleteme'

" Additional Vim syntax highlighting for C++
"Plug 'octol/vim-cpp-enhanced-highlight'

" comment plugin
Plug 'preservim/nerdcommenter'

" A Git wrapper
Plug 'tpope/vim-fugitive'

" Surrounding
"Plug 'tpope/vim-surround'

call plug#end()

