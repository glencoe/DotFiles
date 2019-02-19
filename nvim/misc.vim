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

let g:rooter_patterns = ['WORKSPACE', '.git']
" let g:rainbow_active = 1

command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction

" run neoformat on save and join the undo history for it
" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END
