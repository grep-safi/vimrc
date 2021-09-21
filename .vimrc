filetype plugin on
filetype indent on

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
" set ignorecase

" When searching try to be smart about cases
" set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch


" These change the shape of cursor in
" Different modes

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
"CLOSE

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" -----------------------------------------

" These two remap <C-c> to escape
" in insert and normal mode respectively
inoremap <C-c> <Esc>
nnoremap <C-c> <Esc>

inoremap <C-j> <Esc>
nnoremap <C-j> <Esc>
" This allows editing of files without
" Having to save before switching file
set hidden
" CLOSE

" This adds relative and absolute numbering in
" Insert and normal modes respectively
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" CLOSE

" This is the syntax highlighting
syntax on
colorscheme desert
set background=dark

" highlight Normal ctermfg=grey ctermbg=darkblue
" CLOSE

" Adds numbering for whenever I look for a word
set shortmess-=S

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set nowrap "Unwrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to : and Ctrl-<Space> to fold toggle
map <space> :
nnoremap <C-space> za 

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

" setlocal foldmethod=syntax

"set foldmethod=indent
"set foldlevel=9

set clipboard=unnamed

