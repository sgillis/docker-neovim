""" Plugins
call plug#begin('~/.nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/Align'
call plug#end()
"""

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='ubaryd'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Don't load default Align plugin mappings
let g:loaded_AlignMapsPlugin=1

" Colorscheme
colorscheme molokai

" Show line number
set number

" Set 7 lines before and after cursor for scrolling
set so=7

" Set colorcolumn to indicate 80 characters mark
let &colorcolumn=join(range(80,999),",")
highligh ColorColumn ctermbg=236

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Highlight current line
set cursorline

" Highlight search term
set hlsearch

" Turn off tab expanding when working in a Makefile
:autocmd BufNewFile,BufRead [Mm]akefile* setl noexpandtab tabstop=8

""" Keybindings
let mapleader = ","

" Buffers
map gt :bnext<CR>
map gr :bprev<CR>
map <leader>q :bd<CR>

" Deselect highlighted
map <leader><CR> :noh<CR>

map <leader>t :CtrlP<CR>

" Toggle Syntastic
map <leader>8 :SyntasticToggle<CR>

" Align
map <leader>ap :Align
"""
