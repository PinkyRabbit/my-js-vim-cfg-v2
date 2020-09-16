let VIM_DIR=expand('~/.vim/')

if !executable('curl')
    echoerr "You have to install curl!"
    execute 'q!'
endif

source $HOME/.vim/.install.vim " call autoinstall

" Set colors and theme
"---------------------------
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

" Enabled plugins
"---------------------------
call plug#begin(plugins_directory)
    Plug 'Chiel92/vim-autoformat' " spaces/braces etc. (ESlint/gofmt)
    Plug 'alvan/vim-closetag' " close html tag, press >
    Plug 'Valloric/YouCompleteMe' " multilanguage autocomplete
    Plug 'inkarkat/vim-ingo-library' " needed for Marks plugin
    Plug 'inkarkat/vim-mark' " classic plugin for Marks multicoloring
    Plug 'mattn/gist-vim' " plugin for gist
" Plug 'sheerun/vim-polyglot' "  language SYNTAX packs
" Plug 'tpope/vim-fugitive' " Git wrapper
" Plug 'airblade/vim-gitgutter' " Git diff
" Plug 'honza/vim-snippets' " html C etc...
" Plug 'epilande/vim-es2015-snippets' " es6
" Plug 'epilande/vim-react-snippets' " react
" Plug 'alexbyk/vim-ultisnips-js-testing' " mocha/jasmine

" javascript plugins
    Plug 'galooshi/vim-import-js' " JS imports autocomplation
    Plug 'posva/vim-vue' " Vue supporting

" airline + linter
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dense-analysis/ale' " + linter

" Ultisnips better be last plugin
    Plug 'SirVer/ultisnips'
call plug#end()
filetype plugin indent on " Required!

"> Main settings
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

" Put .swp and ~ files under ~/.vim
"---------------------------
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/swap

" Additional syntax
"---------------------------
autocmd BufEnter,BufRead *.vue set filetype=vue.javascript " VueJS supporting

" Rebinding F1 for folding
"---------------------------
set foldmethod=indent
set foldlevel=99
let g:FoldMethod = 0
map <F1> :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

" Plugins settings in files
"---------------------------
source $HOME/.vim/settings/.airline.vim " airline + linter ale
source $HOME/.vim/settings/.linting.vim " eslint
source $HOME/.vim/settings/.close-tags.vim " close html tags settings
source $HOME/.vim/settings/.tabs.vim " tabs size
source $HOME/.vim/settings/.ycm.vim " autocomplete for js
source $HOME/.vim/settings/.gist.vim " settings for gist
source $HOME/.vim/settings/.snips.vim " settings for ultisnip
