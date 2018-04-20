"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/luk/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/luk/.local/share/dein')
  call dein#begin('/home/luk/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/luk/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  " autoclose brackets
  call dein#add('raimondi/delimitmate')
  " surround text objects with delimiters
  call dein#add('tpope/vim-surround')
  "set tabstop width and co heuristically
  call dein#add('tpope/vim-sleuth')
  "git wrapper
  call dein#add('tpope/vim-fugitive')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('itchyny/lightline.vim')
  call dein#add('ap/vim-buftabline')
  call dein#add('tpope/vim-commentary')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('elzr/vim-json')
  call dein#add('lyuts/vim-rtags')
  call dein#add('brookhong/cscope.vim')
  call dein#add('pgdouyon/vim-accio')
  " auto completion engine
  call dein#add('spinotech/deoplete-rtags')
  call dein#add('Shougo/deoplete-rct')
  call dein#add('eagletmt/neco-ghc')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('zchee/deoplete-zsh')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neco-vim')
  call dein#add('Shougo/neco-syntax')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Shougo/denite.nvim', { 'rev': '879cba7' })
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('Shougo/echodoc.vim')

  call dein#add('Konfekt/FastFold')

  call dein#add('mhinz/vim-janah')
  call dein#add('icymind/NeoSolarized')
  call dein#add('joshdick/onedark.vim')
  call dein#add('arakashic/chromatica.nvim')
  call dein#add('mhinz/vim-signify')
  call dein#add('euclio/vim-markdown-composer')
  call dein#add('vim-utils/vim-man')
  "use vims builtin file explorer as nerdtree replacement
  call dein#add('tpope/vim-vinegar')

  call dein#add('donRaphaco/neotex')
  call dein#add('thaerkh/vim-indentguides')
  call dein#add('bazelbuild/vim-ft-bzl')
  call dein#add('brooth/far.vim')
  call dein#add('challenger-deep-theme/vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('chriskempson/base16-vim')
  call dein#add('jceb/vim-orgmode')
  call dein#add('tpope/vim-speeddating')
  call dein#add('tpope/vim-projectionist')
  call dein#add('airblade/vim-rooter')
  call dein#add('hecal3/vim-leader-guide')
  call dein#add('sirtaj/vim-openscad')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
  "call dein#install()
"endif

"End dein Scripts-------------------------

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
colorscheme challenger_deep
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#bufferline#enabled = 1
let mapleader=","
let g:neopairs#enable = 1
let delimitMate_expand_cr = 1
"don't show current mode in under status bar
set noshowmode
let g:echodoc#enable_at_startup = 1
let g:rooter_use_lcd = 1
let g:rooter_silent_chdir=1

source /home/luk/.config/nvim/denite.vim
source /home/luk/.config/nvim/lightline.vim
source /home/luk/.config/nvim/keymapping.vim
" use deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
let g:deoplete#sources#clang#executable = '/usr/bin/clang'
let g:deoplete#sources = {}
let g:deoplete#sources.c = ['rtags', 'around', 'file', 'syntax']
call deoplete#custom#source('around', 'rank', 50)
set completeopt+=noinsert

" deoplete tab completion
inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
imap <expr><C-l> pumvisible() ? deoplete#complete_common_string() : neosnippet#expandable_or_jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "\<C-l>"
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
    " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
  set csverb
endif
