"denite configs
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
