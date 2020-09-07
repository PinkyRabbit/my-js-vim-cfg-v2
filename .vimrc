if !executable('curl')
    echoerr "You have to install curl!"
    execute 'q!'
endif

let VIM_DIR=expand('~/.vim/')

" Install plug-vim
"---------------------------
if !filereadable(VIM_DIR.'/autoload/plug.vim')
    echo "Installing Vim-Plug..."
    echo ""
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    let g:not_finish_vimplug='yes'
endif

let plugins_directory = VIM_DIR.'plugins'
if !isdirectory(plugins_directory)
    echo "Installing plugins for vim..."
    echo "--> Please wait untill all plugins will be installed and type ':q' + ENTER"
    echo ""
    autocmd VimEnter * PlugInstall
endif

" Install themes
"---------------------------
if !isdirectory(VIM_DIR.'/colors')
    " https://github.com/rakr/vim-one
    echo "Installing light theme..."
    execute '!curl -fLo ~/.vim/colors/one.vim --create-dirs https://raw.githubusercontent.com/rakr/vim-one/master/colors/one.vim'
    execute '!curl -fLo ~/.vim/autoload/airline/themes/one.vim --create-dirs https://raw.githubusercontent.com/rakr/vim-one/master/autoload/airline/themes/one.vim'

    " https://github.com/crusoexia/vim-dracula
    echo "Installing dark theme..."
    execute '!curl -fLo ~/.vim/colors/dracula.vim --create-dirs https://raw.githubusercontent.com/crusoexia/vim-dracula/master/colors/dracula.vim'

    echo "Installing blue theme..."
"   https://github.com/herrbischoff/cobalt2.vim
"   execute '!curl -fLo ~/.vim/colors/cobalt2.vim --create-dirs https://raw.githubusercontent.com/herrbischoff/cobalt2.vim/master/colors/cobalt2.vim'
"   https://github.com/GertjanReynaert/cobalt2-vim-theme
    execute '!curl -fLo ~/.vim/colors/cobalt2.vim --create-dirs https://raw.githubusercontent.com/GertjanReynaert/cobalt2-vim-theme/master/colors/cobalt2.vim'
endif

" Set colors
syntax on
if !exists('g:syntax_on')
    syntax enable
endif
set t_Co=256
set cursorline

"> Light theme
" let g:one_allow_italics = 1
" set background=light
" colorscheme one
" let g:airline_theme='one'

"> Dark theme
" let g:dracula_italic = 1
" colorscheme dracula

"> Blue theme
colorscheme cobalt2

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
    Plug 'Chiel92/vim-autoformat' " spaces/braces etc. (ESlint/gofmt)
    Plug 'Raimondi/delimitMate' " auto-completion for quotes, parens, brackets, etc
    Plug 'alvan/vim-closetag' " close html tag, press >
" Plug 'sheerun/vim-polyglot' "  language SYNTAX packs
" Plug 'Valloric/YouCompleteMe'
" Plug 'w0rp/ale' " Syntax linter
" Plug 'tpope/vim-fugitive' " Git wrapper
" Plug 'airblade/vim-gitgutter' " Git diff
" Plug 'mattn/gist-vim'

" javascript plugins
    Plug 'galooshi/vim-import-js' " JS imports autocomplation
    Plug 'posva/vim-vue' " Vue supporting


" airline + linter
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dense-analysis/ale' " + linter

" Ultisnips better be last plugin
" Plug 'SirVer/ultisnips'
call plug#end()

" Required:
filetype plugin indent on

" Settings
"---------------------------

"> Files navigation
" let g:netrw_banner = 0
" let g:netrw_browse_split = 0
" let g:netrw_altv = 1
" let g:netrw_sort_sequence = '[\/]$,*' " sort
" map <C-w> :tabp<cr>

"> MatchTagAlways
let g:mta_filetypes = { 'html' : 1,  'javascript.jsx' : 1 }

"> add syntax
autocmd BufEnter,BufRead *.vue set filetype=vue.javascript " VueJS supporting

"> YouCompleteMe
" set completeopt-=preview " Don't show YCM's preview window
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0

"> snippets
let g:UltiSnipsUsePythonVersion=2
let g:UltiSnipsSnippetsDir=VIM_DIR.'UltiSnips'
let g:ycm_key_list_select_completion=['<c-j>', '<Down>']
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'
let g:UltiSnipsEditSplit='vertical'

"> Git Gist
" let g:gist_post_private = 0
" let g:gist_post_anonymous = 0
" let g:gist_detect_filetype = 1
" let g:gist_open_browser_after_post = 0

"  Main settings
"---------------------------
set number " line numbers
set relativenumber " to display relative line numbers
set hidden " shows files that starts from .
set autoread " reload file if the file changes on the disk
set history=50 " history of commands
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

" plugins settings in files:
source $HOME/.vim/settings/.airline " airline + linter ale
source $HOME/.vim/settings/.linting " eslint
source $HOME/.vim/settings/.close-tags " close html tags settings
source $HOME/.vim/settings/.tabs " tabs size
