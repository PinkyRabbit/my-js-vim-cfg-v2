" NERDTree settings

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1

let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreeExactMatchHighlightColor = {}

let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightColor = {}

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExtensionHighlightColor = {}

let s:white = 'bdbdbd'
let g:NERDTreePatternMatchHighlightColor['.*\.md$'] = s:white
let g:NERDTreePatternMatchHighlightColor['.*\.txt$'] = s:white

let s:blue_grey_dark = '607d8b'
let g:NERDTreePatternMatchHighlightColor['.*\.config$'] = s:blue_grey_dark
let g:NERDTreePatternMatchHighlightColor['.*\.conf$'] = s:blue_grey_dark
let g:NERDTreePatternMatchHighlightColor['.*\.env$'] = s:blue_grey_dark

let s:grey_deep = '616161'
let g:NERDTreePatternMatchHighlightColor['.*lock$'] = s:grey_deep

let s:green_system = '1b5e20'
let g:NERDTreeExactMatchHighlightColor['node_modules'] = s:green_system
let g:NERDTreeExactMatchHighlightColor['dist'] = s:green_system
let g:NERDTreeExactMatchHighlightColor['build'] = s:green_system

let s:green_html = '6aed58'
let g:NERDTreePatternMatchHighlightColor['.*\.html$'] = s:green_html
let g:NERDTreePatternMatchHighlightColor['.*\.htm$'] = s:green_html
let g:NERDTreePatternMatchHighlightColor['.*\.ejs$'] = s:green_html
let g:NERDTreePatternMatchHighlightColor['.*\.twig$'] = s:green_html
let g:NERDTreePatternMatchHighlightColor['.*\.hbr$'] = s:green_html

let s:pink_styles = 'e91e63'
let g:NERDTreePatternMatchHighlightColor['.*\.css$'] = s:pink_styles 
let g:NERDTreePatternMatchHighlightColor['.*\.scss$'] = s:pink_styles
let g:NERDTreePatternMatchHighlightColor['.*\.sass$'] = s:pink_styles

let s:spec_color = 'e040fb'
let g:NERDTreePatternMatchHighlightColor['.*spec\.ts$'] = s:spec_color 

let s:yellow = 'ffeb3b'
let g:NERDTreeExtensionHighlightColor['js'] = s:yellow
let g:NERDTreeExtensionHighlightColor['jsx'] = s:yellow

let s:orange = 'ffa726'
let g:NERDTreeExtensionHighlightColor['json'] = s:orange

let s:dark_blue= '00acc1'
let g:NERDTreeExtensionHighlightColor['ts'] = s:dark_blue

let s:blue= '03a9f4'
let g:NERDTreeExtensionHighlightColor['vue'] = s:blue
