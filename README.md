# javascript-vim-config

Hi all! This is my second version of config for Vim. With time I made my own vim-coding style, and, you can try to use it, if you want.

[Link to my OLD config](https://github.com/PinkyRabbit/nodejs-python-vim-config).

![Vim image](https://raw.githubusercontent.com/PinkyRabbit/my-js-vim-cfg-v2/master/vim-demo.png "Vim image")

## Requirements

* Vim version 8.2
* Install `Vim`, `perl` and `cmake` if you didn't.

## Installation:

1. move to your home directory:

```
cd ~
```

2. clone this repo

```
git clone THIS/REPO.git .vim
```

3. create configs symlink

```
sudo ln -s ~/.vim/.vimrc .vimrc
```

5. open config and wait untill plugins installation ends

```
vim ~/.vim/.vimrc
```

Now you can open your project by `vim .` in project root folder.

## Linting

For correct binding eslint with vim I use Ale plugin. It is awesome powerful plugin for any linter.

Please read Ale documentation [here](https://github.com/dense-analysis/ale).

To edit linters setting please edit `/settings/.linting`

## Autocompletion with YCM

If you will talk about autocompletion anywhere, all knows about YouCompleteMe. It supports most of programmig languages, have clever settings. So, if you still don't hear about it - you will love it.

Install it in two steps:
1. `cd ~/.vim/plugins/YouCompleteMe`
2. `./install.py --js-completer`

After plugin was installed you should know about `.tern-project` files. To use YCM inside your project you should:
1. Use default tern config that already saved when you firstly run `.vimrc` from my config (it will binds to your projects automatically)
2. Create own `.tern-project` file and put it inside project root directory (don't forget to add it to `.gitignore`)

Full documentation about tern settings you can [find here](https://ternjs.net/doc/manual.html).

## Snippets

There was implemented snippets usage mechanism. Snippets let you code more faster. So go to directory UltiSnips. There is an example of snippet for VueJS.

Please read UltiSnips plugin documentation [here](https://github.com/SirVer/ultisnips). 

## Gists

When we use snippets - all cool. But sometimes we need to share code with some one. How we can do it faster? We can use git gists.

Also we can extract presaved configs same way.

* `:Gist -s comment` - publish gist
* `:Gist -l` - get gists list
* `:Gist -c u1y4o34o234134` - open gist
* `:Gist -d` delete current opened gist

## Navigation

To work with the buffers fine enough to use Sex/Vex. But if we want to have full project view we should use more strong tool [NERDTree](https://github.com/preservim/nerdtree). It similar like file trees in other editors. Just open Vim in project root directory by commant `vim .`. Files tree can be easy hidden by `Ctrl-b`.

You can set up any colors by file extensions. Just edit NERDTree config in `settings/.nerd.vim`.

## Marks

For more fast navigation though file I use Mark plugin. It's totally easy to use it `\m` to mark any item and next you can search by mark number. You can read a plugin documentation [here](https://github.com/inkarkat/vim-mark)

## Help and methods folding

I think, if you are familiar with VIM, there is no sense to present help on `F1` button. That's why I rebind it to file methods folding. In some cases it can be useful so test it.

# Comments

With a perfect plugin [vim-commentary](https://github.com/tpope/vim-commentary). Just `gc` to make a comment

## Temporary files

As you know, when we edit files, Vim create a temporary copy of the file with `.swap` extension. To prevent of saving such files in the project director I create two directories under `.vim` named as `swap` and `backup`. SO. If you looking for `.swap` file - you should look here.

## Font

To edit font and font size you should set up it inside Konsole settings

## Themes

* White [Vim-one](https://github.com/rakr/vim-one)
* Dark [Dracula](https://github.com/crusoexia/vim-dracula)
* Blue [Cobalt2](https://github.com/GertjanReynaert/cobalt2-vim-theme)

## Let the force be with you, bro!

Note: config was tested on Manjaro 18 Linux only.
