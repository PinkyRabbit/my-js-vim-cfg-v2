" NERDTree settings

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('md', 'white', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('config', 'grey', 'none', 'grey', '#151515')
call NERDTreeHighlightFile('conf', 'grey', 'none', 'grey', '#151515')
call NERDTreeHighlightFile('json', 'grey', 'none', '#607d8b', '#151515')
call NERDTreeHighlightFile('html', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'yellow', 'none', '#eeff41', '#f0f4c3')
call NERDTreeHighlightFile('vue', 'blue', 'none', '#64b5f6', '#0d47a1')
