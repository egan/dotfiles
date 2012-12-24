"" General Settings
set nocp
set nobk
set sc
set mousef
set lbr
set hls
set is
set ai
set pt=<F2>
set ru

"" General Modes
filetype plugin indent on
syntax on

"" Overrides
let mapleader=","
let g:tex_flavor="latex"
let g:is_posix=1
let g:is_bash=1
let g:netrw_altv=1
let g:netrw_alto=1

"" Folding
set foldmethod=marker
set foldmarker={{{,}}}

"" Mappings
nnoremap <silent><F3> :w!<CR>:silent !aspell -c -x %<CR>:e! %<CR>:redraw!<CR>
nnoremap <silent><F4> :silent !dict <cword> \| less<CR>:redraw!<CR>
nnoremap <silent><F9> :SCCompile<CR>
nnoremap <silent><F10> :SCCompileRun<CR>
nnoremap <CR> o<Esc>
nnoremap <silent><Leader>/ :noh<CR>
nnoremap <Tab> %
" Clean trailing whitespace and last clear search pattern.
nnoremap <silent><leader>W :%s/\s\+$//<CR>:let @/=''<CR>
vnoremap <Tab> %
