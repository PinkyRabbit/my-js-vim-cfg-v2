# javascript-vim-config

Hi all! This is my second version of config for Vim. With time I made my own vim-coding style, and, you can try to use it, if you want.

[Link to my OLD config](https://github.com/PinkyRabbit/nodejs-python-vim-config).

![Vim image](https://raw.githubusercontent.com/PinkyRabbit/my-js-vim-cfg-v2/master/vim-demo.png "Vim image")

How to use:

0. Vim version 8.2
1. install `Vim`, `perl` and `cmake` if you didn't.
2. move to your home directory:

```
cd ~
```

3. clone this repo

```
git clone THIS/REPO.git .vim
```

4. create configs symlink

```
sudo ln -s ~/.vim/.vimrc .vimrc
```

5. move to vim directory

```
cd .vim
```

6. open config and wait untill plugins installation ends

```
vim .vimrc
```

7. close vim (`:q`)
8. move to YCM folder

```
cd plugged/YouCompleteMe
```

9. install [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

```
./install.py --js-completer
```

## Linting

For correct binding eslint with vim I use Ale plugin. It is awesome powerful plugin for any linter.

Please read Ale documentation [here](https://github.com/dense-analysis/ale).

To edit linters setting please edit `/settings/.linting`

## Autocompletion with YCM



## Snippets

There was implemented snippets usage mechanism. Snippets let you code more faster. So go to directory UltiSnips. There is an example of snippet for VueJS.

Please read UltiSnips plugin documentation [here](https://github.com/SirVer/ultisnips). 

## Gists

When we use snippets - all cool. But sometimes we need to share code with some one. How we can do it faster? We can use git gists.

Also we can extract presaved configs same way.

:Gist -s comment - publish gist
:Gist -l - get gists list
:Gist -c u1y4o34o234134 - open gist
:Gist -d delete current opened gist

## Temporary files

As you know, when we edit files, Vim create a temporary copy of the file with `.swap` extension. To prevent of saving such files in the project director I create two directories under `.vim` named as `swap` and `backup`. SO. If you looking for `.swap` file - you should look here.

## Help and methods folding

I think, if you are familiar with VIM, there is no sense to present help on `F1` button. That's why I rebind it to file methods folding. In some cases it can be useful so test it.

## Font

To edit font and font size you should set up it inside Konsole settings

## Themes

* White [Vim-one](https://github.com/rakr/vim-one)
* Dark [Dracula](https://github.com/crusoexia/vim-dracula)
* Blue [Cobalt2](https://github.com/GertjanReynaert/cobalt2-vim-theme)

## Let the force be with you, bro!

Note: config was tested on Manjaro 18 Linux only.
