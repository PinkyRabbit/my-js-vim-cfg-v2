"> YouCompleteMe settings

let g:ycm_key_list_select_completion = ['<tab>', '<c-j>']

" https://github.com/ycm-core/YouCompleteMe#the-gycm_autoclose_preview_window_after_completion-option
let g:ycm_auto_hover = ''

" :help completeopt and :help previewpopup and :help completepopup
" set completeopt-=preview
" let g:ycm_add_preview_to_completeopt = 0 " pair to setcompleteoption minus preview
set completeopt+=popup

let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_enable_diagnostic_signs = 0
noremap <F3> :call SyntaxHighlightToggle()<CR>
function! SyntaxHighlightToggle()
    if g:ycm_enable_diagnostic_highlighting 
        g:ycm_enable_diagnostic_highlighting = 0
        g:ycm_enable_diagnostic_signs = 0
    else
        g:ycm_enable_diagnostic_highlighting = 1
        g:ycm_enable_diagnostic_signs = 1
    endif
endfunction

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4

let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 1 "default 0

let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info
