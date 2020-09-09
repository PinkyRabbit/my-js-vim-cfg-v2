" javascript
let g:ale_fixers = {'javascript': ['eslint'], 'javascript.jsx': ['eslint'], 'vue': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_sign_warning = '±'
let g:ale_sign_error = '✘'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_lint_on_text_changed = 'never'
let g:airline#extensions#ale#enabled = 1 " Enable ale airline integration
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Python 3 ALE
" \   'python': ['flake8'],
" let g:ale_python_pylint_executable = ''
" let g:ale_python_pylint_options = '-m pylint --max-line-length 120'
" let g:ale_python_autopep8_executable = 'autopep8'
" let g:ale_python_autopep8_options = '--in-place --aggressive --aggressive --experimental --ignore-local-config --max-line-length 120 --jobs 4'
" let g:ale_python_flake8_executable = 'python3'
" let g:ale_python_flake8_options = '-m flake8 --max-line-length=120'
" let g:ale_python_mypy_executable = ''
" let g:ale_python_yapf_executable = 'yapf'
" let g:ale_python_yapf_options = '--parallel --in-place --recursive'
