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
                                    \'h': ['wincmd h', 'left'],
                                    \'l': ['wincmd l', 'right'],
                                    \'k': ['wincmd k', 'up'],
                                    \'j': ['wincmd j', 'down'],
                                    \'H': ['wincmd H', 'move left'],
                                    \'L': ['wincmd L', 'move right'],
                                    \'K': ['wincmd K', 'move up'],
                                    \'J': ['wincmd J', 'move down'], 
                                    \}

let g:space_prefix_dict.p = { 'name': 'Project',
                                    \'t': ['!bazel test test:all', 'run tests']}

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
noremap <Leader>ri :call rtags#SymbolInfo()<CR>
noremap <Leader>rj :call rtags#JumpTo(g:SAME_WINDOW)<CR>
noremap <Leader>rJ :call rtags#JumpTo(g:SAME_WINDOW, { '--declaration-only' : '' })<CR>
noremap <Leader>rS :call rtags#JumpTo(g:H_SPLIT)<CR>
noremap <Leader>rV :call rtags#JumpTo(g:V_SPLIT)<CR>
noremap <Leader>rT :call rtags#JumpTo(g:NEW_TAB)<CR>
noremap <Leader>rp :call rtags#JumpToParent()<CR>
noremap <Leader>rf :call rtags#FindRefs()<CR>
noremap <Leader>rF :call rtags#FindRefsCallTree()<CR>
noremap <Leader>rn :call rtags#FindRefsByName(input("Pattern? ", "", "customlist,rtags#CompleteSymbols"))<CR>
noremap <Leader>rs :call rtags#FindSymbols(input("Pattern? ", "", "customlist,rtags#CompleteSymbols"))<CR>
noremap <Leader>rr :call rtags#ReindexFile()<CR>
noremap <Leader>rl :call rtags#ProjectList()<CR>
noremap <Leader>rw :call rtags#RenameSymbolUnderCursor()<CR>
noremap <Leader>rv :call rtags#FindVirtuals()<CR>
noremap <Leader>rb :call rtags#JumpBack()<CR>
noremap <Leader>rh :call rtags#ShowHierarchy()<CR>
noremap <Leader>rC :call rtags#FindSuperClasses()<CR>
noremap <Leader>rc :call rtags#FindSubClasses()<CR>
noremap <Leader>rd :call rtags#Diagnostics()<CR>

