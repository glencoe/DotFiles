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
                                    \'-': ['hnew', 'split horizontally'],
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
