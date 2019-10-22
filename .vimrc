if !executable('curl')
  echoerr "You have to install curl or first install vim-plug yourself!"
  execute 'q!'
endif

let VIM=$HOME.'/.vim/'

 " Install plug-vim
"---------------------------
if !filereadable(VIM.'autoload/plug.vim')
  echo "Installing Vim-Plug..."
  echo ""
  execute 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  let g:not_finish_vimplug='yes'
endif

if !isdirectory(VIM.'colors')
  echo "Installing Theme..."
  echo ""
  execute "curl -fLo ~/.vim/colors/one.vim --create-dirs https://raw.githubusercontent.com/rakr/vim-one/master/colors/one.vim"
endif

if !isdirectory(VIM.'autoload/airline')
  echo "Installing Airline Theme..."
  echo ""
  execute "curl -fLo ~/.vim/autoload/airline/themes/one.vim --create-dirs https://raw.githubusercontent.com/rakr/vim-one/master/autoload/airline/themes/one.vim"
endif

let plugins_directory=VIM.'plugged'

if !isdirectory(plugins_directory)
  autocmd VimEnter * PlugInstall
endif

"> Javascript
" Plug 'honza/vim-snippets' " html C etc...
" Plug 'epilande/vim-es2015-snippets' " es6
" Plug 'epilande/vim-react-snippets' " react
" Plug 'alexbyk/vim-ultisnips-js-testing' " mocha/jasmine
"> Python
" Plug 'zchee/deoplete-jedi', " https://github.com/zchee/deoplete-jedi
" Plug 'jmcantrell/vim-virtualenv', " https://github.com/jmcantrell/vim-virtualenv
" Plug 'ehamberg/vim-cute-python', " use unicode characters for several built-in functions and operators

" Required:
call plug#begin(plugins_directory)
Plug 'sheerun/vim-polyglot' "  language SYNTAX packs
Plug 'posva/vim-vue' " Vue supporting
Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale' " Syntax linter
Plug 'Chiel92/vim-autoformat' " spaces/braces etc. (ESlint/gofmt)
Plug 'Raimondi/delimitMate' " auto-completion for quotes, parens, brackets, etc
Plug 'Valloric/MatchTagAlways' " highlight enclosing tags
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'airblade/vim-gitgutter' " Git diff
Plug 'mattn/gist-vim'

" Ultisnips better be last plugin
Plug 'SirVer/ultisnips'
call plug#end()

" Required:
filetype plugin indent on

" Settings
"---------------------------

"> Files navigation
let g:netrw_banner = 0
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_sort_sequence = '[\/]$,*' " sort
map <C-w> :tabp<cr>

"> Status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
if exists('*fugitive#statusline')
  set statusline+=%{fugitive#statusline()}
endif

"> MatchTagAlways
let g:mta_filetypes = { 'html' : 1,  'javascript.jsx' : 1 }

"> add syntax
" autocmd BufEnter,BufRead *.vue set filetype=vue.javascript " VueJS supporting

"> Linting
" \   'python': ['flake8'],
let g:ale_fixers = {'javascript': ['eslint'], 'javascript.jsx': ['eslint']}
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
" let g:ale_python_pylint_executable = ''
" let g:ale_python_pylint_options = '-m pylint --max-line-length 120'
" let g:ale_python_autopep8_executable = 'autopep8'
" let g:ale_python_autopep8_options = '--in-place --aggressive --aggressive --experimental --ignore-local-config --max-line-length 120 --jobs 4'
" let g:ale_python_flake8_executable = 'python3'
" let g:ale_python_flake8_options = '-m flake8 --max-line-length=120'
" let g:ale_python_mypy_executable = ''
" let g:ale_python_yapf_executable = 'yapf'
" let g:ale_python_yapf_options = '--parallel --in-place --recursive'

"> Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:ale_sign_column_always = 0 " Always show ale column
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#branch#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"> YouCompleteMe
" set completeopt-=preview " Don't show YCM's preview window
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0

"> snippets
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips"
let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'
let g:UltiSnipsEditSplit='vertical'
 
"> Git Gist
let g:gist_post_private = 0
let g:gist_post_anonymous = 0
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 0

" Set colors
"---------------------------
syntax on
if !exists('g:syntax_on')
    syntax enable
endif
set t_Co=256
set cursorline
set background=light        " for the light version
" let g:one_allow_italics = 1 " italic in comments
colorscheme one
let g:airline_theme='one'

"  Main settings
"---------------------------
set guifont=Menlo\ Regular:h14 " font
set number " line numbers
set hidden " shows files that starts from .
set autoread " reload file if the file changes on the disk
set history=100 " history of commands
set wrap " enables visual wrapping + NEXT line
set textwidth=0 wrapmargin=0 " remove automatic insertion of newlines
set tabstop=2 " show existing tab with 2 spaces width
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set expandtab " On pressing tab, insert 2 spaces
set hlsearch " highlighting search matches
set list " Show trailing whitespace
let g:loaded_matchparen=0 " disable auto highlighting of matched parentheses
set listchars=tab:▸\ ,trail:▫ " Display tabs an invisible characters
set encoding=UTF-8 " Save with utf8 encoding
set shell=/bin/bash " Open bash
set updatetime=100 " redraw the status bar often
set title " let vim set the terminal title

" Append tabs configs
"----------------------------------------------
source $HOME/.vim/.tabs

