" vim-airline companion theme of Hybrid
" (http//github.com/w0ng/vim-hybrid)

let g:airline#themes#hybrid#palette = {}

function! airline#themes#hybrid#refresh()
    let s:N1 = ['#1d1f21', '#b5bd68', '', '']
    let s:N2 = airline#themes#get_highlight('CursorLine')
    let s:N3 = airline#themes#get_highlight('PMenu')

    let g:airline#themes#hybrid#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
    let g:airline#themes#hybrid#palette.normal_modified = {}

    let s:warning_group = ['#1d1f21', '#de935f', '', '']
    let g:airline#themes#hybrid#palette.normal.airline_warning = s:warning_group
    let g:airline#themes#hybrid#palette.normal_modified.airline_warning = s:warning_group

    let s:error_group = ['#1d1f21', '#cc6666', '', '']
    let g:airline#themes#hybrid#palette.normal.airline_error = s:error_group
    let g:airline#themes#hybrid#palette.normal_modified.airline_error = s:error_group

    let s:I1 = ['#1d1f21', '#8abeb7', '', '']
    let g:airline#themes#hybrid#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:N3)
    let g:airline#themes#hybrid#palette.insert_modified = g:airline#themes#hybrid#palette.normal_modified
    let g:airline#themes#hybrid#palette.insert.airline_warning = g:airline#themes#hybrid#palette.normal.airline_warning
    let g:airline#themes#hybrid#palette.insert_modified.airline_warning = g:airline#themes#hybrid#palette.normal_modified.airline_warning
    let g:airline#themes#hybrid#palette.insert.airline_error = g:airline#themes#hybrid#palette.normal.airline_error
    let g:airline#themes#hybrid#palette.insert_modified.airline_error = g:airline#themes#hybrid#palette.normal_modified.airline_error

    let s:R1 = ['#1d1f21', '#b294bb', '', '']
    let g:airline#themes#hybrid#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:N3)
    let g:airline#themes#hybrid#palette.replace_modified = g:airline#themes#hybrid#palette.normal_modified
    let g:airline#themes#hybrid#palette.replace.airline_warning = g:airline#themes#hybrid#palette.normal.airline_warning
    let g:airline#themes#hybrid#palette.replace_modified.airline_warning = g:airline#themes#hybrid#palette.replace_modified.airline_warning
    let g:airline#themes#hybrid#palette.replace.airline_error = g:airline#themes#hybrid#palette.normal.airline_error
    let g:airline#themes#hybrid#palette.replace_modified.airline_error = g:airline#themes#hybrid#palette.replace_modified.airline_error

    let s:V1 = ['#1d1f21', '#81a2be', '', '']
    let g:airline#themes#hybrid#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:N3)
    let g:airline#themes#hybrid#palette.visual_modified = g:airline#themes#hybrid#palette.normal_modified
    let g:airline#themes#hybrid#palette.visual.airline_warning = g:airline#themes#hybrid#palette.normal.airline_warning
    let g:airline#themes#hybrid#palette.visual_modified.airline_warning = g:airline#themes#hybrid#palette.normal_modified.airline_warning
    let g:airline#themes#hybrid#palette.visual.airline_error = g:airline#themes#hybrid#palette.normal.airline_error
    let g:airline#themes#hybrid#palette.visual_modified.airline_error = g:airline#themes#hybrid#palette.replace_modified.airline_error

    let s:IA = ['#d0d0d0', '#303030', '', '']
    let g:airline#themes#hybrid#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
    let g:airline#themes#hybrid#palette.inactive_modified = g:airline#themes#hybrid#palette.normal_modified

    let g:airline#themes#hybrid#palette.accents = {
                \ 'red': airline#themes#get_highlight('Constant'),
                \ }


endfunction

call airline#themes#hybrid#refresh()
