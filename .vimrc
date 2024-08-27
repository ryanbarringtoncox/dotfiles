set nocompatible " be vim improved
syntax on
set encoding=utf8

set ignorecase smartcase " if search pattern has uppercase char, search is case sensitive

" buffer mappings - use ctrl h/l to cycle left/right thru open buffers
noremap <C-l> :bn!<CR>
noremap <C-h> :bp!<CR>

" Disable file type for vundle
filetype off                  " required


" OSX stupid backspace fix
set backspace=indent,eol,start

" Set Tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

set cursorline
hi cursorline cterm=bold term=bold guibg=yellow guifg=white
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

" should allow you to undo after saving, changing buffers and changing back
:set hidden

" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set autochdir

" " Show file options above the command line
set wildmenu

" map fzf to ctrl-f
noremap <C-p> :GFiles<CR>

" set leader to be ;
let mapleader = ";"

" map space bar to history
noremap <leader><space> :History<ENTER>
" move line down by pressing -
noremap <leader>- ddp
" move line up by pressing -
noremap <leader>_ ddkP
" use <c-d> to delete lines in insert mode
inoremap <c-d> <esc>ddi
" make <c-u> uppercase a word in imode or nmode
inoremap <c-u> <esc>veU
nnoremap <c-u> veU
" move up and down 5 lines at a time with ctl
nnoremap <c-j> 7j
inoremap <c-j> <esc>7ji
nnoremap <c-k> 7k
inoremap <c-k> <esc>7ki
" move up and down 5 lines at a time in visual mode
vnoremap <c-j> 7j
vnoremap <c-k> 7k
" edit and source vimrc on the fly
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
" type console.log("") in normal and insert modes
:inoremap <leader>cl console.log("")<esc>hha
:nnoremap <leader>cl iconsole.log("")<esc>hha
" type print("") in normal and insert modes
:inoremap <leader>pp print("")<esc>hha
:nnoremap <leader>pp iprint("")<esc>hha
" map jk to <esc> key and (temporarily) disable escape to learn it
:inoremap jk <esc>
" this isn't working - was intended to force me to jk above 
" :inoremap <esc> <nop>
" close buffers more easily - causes issues when i do back then dw
" :nnoremap bd :bd<cr>

set number

:nnoremap <leader>sp :set paste<cr>
:nnoremap <leader>snp :set nopaste<cr>

" haven't got local leader and comment shortcut below working yet
" set local leader to be ,
" let maplocalleader = "\\"
" comment out lines based on filetype from anywhere within line
" :autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
" :autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
