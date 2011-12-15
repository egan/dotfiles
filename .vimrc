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

"" Resource Locations
set dict=.vim/spell/words

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
nmap <F9> :SCCompile<CR>
nmap <F10> :SCCompileRun<CR>
map <CR> o<Esc>
nnoremap <silent><Leader>/ :noh<CR>
nnoremap <Tab> %
vnoremap <Tab> %
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
