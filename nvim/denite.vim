"denite configs
nnoremap <space>bb :Denite buffer<CR>
nnoremap <space>fr :Denite file_mru<CR>
nnoremap <space>ff :DeniteBuffer file<CR>
nnoremap <space>Ts :Denite colorscheme<CR>
nnoremap <space>dh :Denite help<CR>
nnoremap <space>w/ :vnew<CR>
nnoremap <space>w- :hnew<CR>
nnoremap <space>bd :bd<CR>
nnoremap <space>bn :bn<CR>
nnoremap <space>bp :bp<CR>
nnoremap <space>bh :bp<CR>
nnoremap <space>bl :bn<CR>
nnoremap <space>h :bp<CR>
nnoremap <space>l :bn<CR>
nnoremap <space>w<Tab> :wincmd p<CR>
nnoremap <space>wd :close<CR>
nnoremap <space>w <C-W>
nnoremap <space><Tab> :b#<CR>
nnoremap <space>fv :e /home/luk/.config/nvim/init.vim<CR>

let insert_mode_mappings = [
    \ [ '<C-k>', '<denite:move_to_previous_line>' ],
    \ [ '<C-j>', '<denite:move_to_next_line>' ],
    \ [ '<C-h>', '<denite:move_up_path>' ],
    \ [ '<Up>', '<denite:move_to_previous_line>' ],
    \ [ '<Down>', '<denite:move_to_next_line>' ]
    \]

for mapping in insert_mode_mappings
    call denite#custom#map('insert', mapping[0], mapping[1], 'noremap')
endfor
