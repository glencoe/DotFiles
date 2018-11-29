set showmatch
set ignorecase
set mouse=v
set hlsearch
set number relativenumber
set wildmode=longest,list,full
set wildmenu
set cc=80
set termguicolors
set timeoutlen=1000 ttimeoutlen=0
set scrolloff=6
colorscheme base16-monokai
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1
let mapleader=","
let g:neopairs#enable = 1
let delimitMate_expand_cr = 1
"don't show current mode in under status bar
set noshowmode
let g:echodoc#enable_at_startup = 1
let g:rooter_use_lcd = 1
let g:rooter_silent_chdir=1
"persistent file history
set undofile
set undodir=~/.config/nvim/undodir

"system clipboard
set clipboard+=unnamed
call neomake#configure#automake('w')
