"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/lukas/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/lukas/.local/share/dein')
  call dein#begin('/home/lukas/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/lukas/.local/share/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('shiracamus/vim-syntax-x86-objdump-d')
  call dein#add('lyuts/vim-rtags', {'on_ft': ['c']})
  call dein#add('rzaluska/deoplete-rtags', {'on_ft': ['c']})

  call dein#add('tpope/vim-fireplace', {'on_ft': ['clojure']})
  call dein#add('tpope/vim-classpath', {'on_ft': ['clojure']})
  " call dein#add('zchee/deoplete-clang')

  " Add or remove your plugins here:
  " autoclose brackets
  call dein#add('raimondi/delimitmate')
  " surround text objects with delimiters
  call dein#add('tpope/vim-surround')
  "set tabstop width and co heuristically
  call dein#add('tpope/vim-sleuth')
  "commenting with keystroke gcc
  call dein#add('tpope/vim-commentary')
  "git wrapper
  call dein#add('tpope/vim-fugitive')
  call dein#add('junegunn/gv.vim')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('itchyny/lightline.vim')
  
  "linting
  call dein#add('neomake/neomake')
  " call dein#add('ap/vim-buftabline')
  call dein#add('vim-ruby/vim-ruby', {'on_ft': ['ruby']})
  call dein#add('tpope/vim-endwise')
  " call dein#add('plasticboy/vim-markdown')
  call dein#add('elzr/vim-json')
  call dein#add('brookhong/cscope.vim', {'on_ft': ['c']})
  call dein#add('pgdouyon/vim-accio')
  " auto completion engine
  call dein#add('Shougo/deol.nvim')
  call dein#add('eagletmt/neco-ghc', {'on_ft': ['haskell']})
  call dein#add('zchee/deoplete-jedi', {'on_ft': ['python']})
  call dein#add('zchee/deoplete-zsh')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neco-vim')
  call dein#add('Shougo/neco-syntax')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('Shougo/echodoc.vim')

  call dein#add('Konfekt/FastFold')

  call dein#add('euclio/vim-markdown-composer')
  call dein#add('vim-utils/vim-man')
  "use vims builtin file explorer as nerdtree replacement
  call dein#add('tpope/vim-vinegar')

  call dein#add('donRaphaco/neotex', {'on_ft': ['latex']})
  call dein#add('thaerkh/vim-indentguides')
  call dein#add('bazelbuild/vim-ft-bzl')
  call dein#add('brooth/far.vim')
  call dein#add('Shougo/neomru.vim')

  call dein#add('tpope/vim-speeddating')
  call dein#add('tpope/vim-projectionist')
  call dein#add('airblade/vim-rooter')
  call dein#add('hecal3/vim-leader-guide')
  call dein#add('sirtaj/vim-openscad')
  call dein#add('wakatime/vim-wakatime')
  call dein#add('janko/vim-test')

  "eyecandy
  call dein#add('mhinz/vim-signify')
  call dein#add('mhinz/vim-janah')
  call dein#add('icymind/NeoSolarized')
  call dein#add('joshdick/onedark.vim')
  call dein#add('arakashic/chromatica.nvim')
  call dein#add('challenger-deep-theme/vim')
  call dein#add('chriskempson/base16-vim')
  call dein#add('nlknguyen/papercolor-theme')
  call dein#add('luochen1990/rainbow')
  call dein#add('octol/vim-cpp-enhanced-highlight')

  "split single lines to multiple lines via one command
  " run gS to split and gJ to join again
  call dein#add('andrewradev/splitjoin.vim')

  "code formatter
  call dein#add('sbdchd/neoformat')

" markdown preview
  call dein#add('JamshedVesuna/vim-markdown-preview')

  call dein#add('vimwiki/vimwiki')
  call dein#add('tbabej/taskwiki')
  call dein#add('farseer90718/vim-taskwarrior')
  call dein#add('majutsushi/tagbar')
  call dein#add('powerman/vim-plugin-AnsiEsc')


  call dein#add('tbodt/deoplete-tabnine', {'build': './install.sh',
        \'on_ft': ['ruby']})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable
let g:deoplete#enable_at_startup = 1

" If you want to install not installed plugins on startup.
"if dein#check_install()
  "call dein#install()
"endif

"End dein Scripts-------------------------
source /home/lukas/.config/nvim/denite.vim
source /home/lukas/.config/nvim/lightline.vim
source /home/lukas/.config/nvim/deoplete.vim
source /home/lukas/.config/nvim/misc.vim
source /home/lukas/.config/nvim/keymapping.vim
