" use deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
let g:deoplete#sources#clang#executable = '/usr/bin/clang'
let g:deoplete#sources = {}
let g:deoplete#sources.c = ['around', 'file', 'syntax']
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

function! SetupNeocompleteForCppWithRtags()
    " Enable heavy omni completion.
    setlocal omnifunc=RtagsCompleteFunc

    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif
    let l:cpp_patterns='[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.cpp = l:cpp_patterns 
    set completeopt+=longest,menuone
endfunction

autocmd FileType cpp,c call SetupNeocompleteForCppWithRtags()
