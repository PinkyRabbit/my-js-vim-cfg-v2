set cmdheight=2
" Install plug-vim
"---------------------------
if !filereadable(VIM_DIR.'/autoload/plug.vim')
    echo "Installing Vim-Plug..."
    execute 'silent !curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    let g:not_finish_vimplug='yes'
endif

let plugins_directory = VIM_DIR.'plugins'
if !isdirectory(plugins_directory)
    echo "Installing plugins for vim..."
    echo "--> Please wait untill all plugins will be installed and type ':q' + ENTER"
    autocmd VimEnter * PlugInstall
endif

" Install themes
"---------------------------
if !isdirectory(VIM_DIR.'/colors')
    " https://github.com/rakr/vim-one
    echo "Installing light theme..."
    execute 'silent !curl -fLo ~/.vim/colors/one.vim --create-dirs https://raw.githubusercontent.com/rakr/vim-one/master/colors/one.vim'
    execute 'silent !curl -fLo ~/.vim/autoload/airline/themes/one.vim --create-dirs https://raw.githubusercontent.com/rakr/vim-one/master/autoload/airline/themes/one.vim'

    " https://github.com/crusoexia/vim-dracula
    echo "Installing dark theme..."
    execute 'silent !curl -fLo ~/.vim/colors/dracula.vim --create-dirs https://raw.githubusercontent.com/crusoexia/vim-dracula/master/colors/dracula.vim'

    echo "Installing blue theme..."
"   https://github.com/herrbischoff/cobalt2.vim
"   execute 'silent !curl -fLo ~/.vim/colors/cobalt2.vim --create-dirs https://raw.githubusercontent.com/herrbischoff/cobalt2.vim/master/colors/cobalt2.vim'
"   https://github.com/GertjanReynaert/cobalt2-vim-theme
    execute 'silent !curl -fLo ~/.vim/colors/cobalt2.vim --create-dirs https://raw.githubusercontent.com/GertjanReynaert/cobalt2-vim-theme/master/colors/cobalt2.vim'
endif

" Copy tern-config for YCM
"---------------------------
if !filereadable(expand('~/.tern-config'))
    echo "Copy default config for autocomplation YCM..."
    execute 'silent !cp ~/.vim/tern/default.json ~/.tern-config'
endif

