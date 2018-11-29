let g:space_prefix_dict = { 'name': 'Top',
                                    \'h': ['bp', 'previous buffer'],
                                    \'l': ['bn', 'next buffer'],
                                    \'<C-I>': ['b#', 'alternate buffer'],
                                    \}

let g:space_prefix_dict.f = { 'name': 'Files',
            \'v': ['e $MYVIMRC', 'Open vimrc'],
            \'f': ['DeniteBuffer file', 'buffer relative' ],
            \'r': ['Denite file_mru', 'recent'],
            \}

call denite#custom#source('file, file_mru', 'matchers', ['matcher/regexp'])
call denite#custom#source('file, file_mru', 'sorters', ['sorter/rank'])

let g:space_prefix_dict.b = { 'name': 'Buffer',
                                    \'b': ['Denite buffer', 'buffers' ],
                                    \'d': ['bd', 'close'],
                                    \'l': ['bn', 'forward'],
                                    \'h': ['bp', 'previous'],
                                    \'<C-I>': ['b#', 'alternate'],
                                    \}

let g:space_prefix_dict.T = { 'name': 'UI',
                                    \'s': ['Denite colorscheme', 'colorschemes']}

let g:space_prefix_dict.d = { 'name': 'Denite',
                                    \'h': ['Denite help', 'help']}

let g:space_prefix_dict.w = { 'name': 'Window',
                                    \'/': ['vnew', 'split vertically'],
                                    \'-': ['new', 'split horizontally'],
                                    \'<C-I>': ['wincmd p', 'previous'],
                                    \'d': ['close', 'close'],
                                    \'D': ['only', 'close others'],
                                    \'h': ['wincmd h', 'left'],
                                    \'l': ['wincmd l', 'right'],
                                    \'k': ['wincmd k', 'up'],
                                    \'j': ['wincmd j', 'down'],
                                    \'H': ['wincmd H', 'move left'],
                                    \'L': ['wincmd L', 'move right'],
                                    \'K': ['wincmd K', 'move up'],
                                    \'J': ['wincmd J', 'move down'], 
                                    \}

let g:space_prefix_dict.w.r = { 'name': 'Window resizing',
                                    \'l': ['vertical resize +1  | call feedkeys("\<space>wr")', 'increase width'],
                                    \'h': ['vertical resize -1 | call feedkeys("\<space>wr")', 'decrease width'],
                                    \'k': ['resize -1 | call feedkeys("\<Space>wr")', 'decrease height'],
                                    \'j': ['resize +1 | call feedkeys("\<Space>wr")', 'increase height'],
                                    \'q': ['', 'exit state']
                                    \}

let g:space_prefix_dict.p = { 'name': 'Project',
                                    \'t': ['!bazel test test:all', 'run tests'],
                                    \}

let g:space_prefix_dict.g = { 'name': 'Git',
                                    \'w': ['Gwrite', 'add and write'],
                                    \'c': ['Gcommit', 'commit'],
                                    \'p': ['Gpush', 'push'],
                                    \'u': ['Gpull', 'pull'],
                                    \'f': ['Gfetch', 'fetch'],
                                    \}

call leaderGuide#register_prefix_descriptions(' ', "g:space_prefix_dict")
nmap <space> :LeaderGuide '<space>'<CR>
nmap <space>. <Plug>leaderguide-global
nmap <space>, <Plug>leaderguide-buffer
nnoremap <leader>cd :call CscopeFind('g', expand('<cword>'))<CR>
nnoremap <leader>ca :call CscopeFindInteractive(expand('<cword>'))<CR>

let g:rtagsUseDefaultMappings = 0
noremap <Leader>gi :call rtags#SymbolInfo()<CR>
noremap <Leader>. :call rtags#JumpTo(g:SAME_WINDOW)<CR>
noremap <Leader>gJ :call rtags#JumpTo(g:SAME_WINDOW, { '--declaration-only' : '' })<CR>
noremap <Leader>gS :call rtags#JumpTo(g:H_SPLIT)<CR>
noremap <Leader>gV :call rtags#JumpTo(g:V_SPLIT)<CR>
noremap <Leader>gT :call rtags#JumpTo(g:NEW_TAB)<CR>
noremap <Leader>gp :call rtags#JumpToParent()<CR>
noremap <Leader>gf :call rtags#FindRefs()<CR>
noremap <Leader>gF :call rtags#FindRefsCallTree()<CR>
noremap <Leader>gn :call rtags#FindRefsByName(input("Pattern? ", "", "customlist,rtags#CompleteSymbols"))<CR>
noremap <Leader>gs :call rtags#FindSymbols(input("Pattern? ", "", "customlist,rtags#CompleteSymbols"))<CR>
noremap <Leader>r :call rtags#ReindexFile()<CR>
noremap <Leader>gl :call rtags#ProjectList()<CR>
noremap <Leader>gw :call rtags#RenameSymbolUnderCursor()<CR>
noremap <Leader>gv :call rtags#FindVirtuals()<CR>
noremap <Leader>gb :call rtags#JumpBack()<CR>
noremap <Leader>gh :call rtags#ShowHierarchy()<CR>
noremap <Leader>gC :call rtags#FindSuperClasses()<CR>
noremap <Leader>gc :call rtags#FindSubClasses()<CR>
noremap <Leader>gd :call rtags#Diagnostics()<CR>

