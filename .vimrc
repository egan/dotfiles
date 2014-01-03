"" General Settings
set nocompatible		" Enable vim-specific features.
set shortmess+=I		" Disable startup message.
set nobackup			" Don't backup saved files.
set ruler			" Show the ruler.
set showcmd			" Show partial commands in statusline.
set mouse=a			" Enable mouse usage.
set mousefocus			" Focus windows with mouse in GVim
set showmatch			" Show matching parenthetical delimitters.
set hlsearch			" Highlight search terms.
set incsearch			" Find as you type search.
set ignorecase			" Case insensitive search.
set smartcase			" Case sensitive when uppercase present.
set linebreak			" Perform linebreaks at appropriate characters.
set autoindent			" Indent at same level as previous line.
set foldenable			" Automatically fold code.
set nojoinspaces		" Do not doublespace on join (J).
set pastetoggle=<F2>		" Enable unformatted paste.
set splitright			" Open new vsplit window to the right.
set splitbelow			" Open new split window to the bottom.

"" Vundle Config
set rtp+=~/.vim/bundle/vundle	" Include vundle in runtime path.
call vundle#rc()		" Run vundle.

"" Folding
set foldmethod=marker		" Use markers for folding.
set foldmarker={{{,}}}		" Markers for folding.

"" Bundles
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'xuhdev/SingleCompile'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'godlygeek/tabular'
"Bundle 'spf13/vim-autoclose'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mbbill/undotree'
Bundle 'tpope/vim-fugitive'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-repeat'
Bundle 'goldfeld/vim-seek'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-vividchalk'

"" General Modes
filetype plugin indent on	" Enable filetype plugins and indentation.
syntax on			" Enable syntax highlighting.

"" Overrides
let mapleader=","		" Use comma for leader key rather than backspace.
let g:tex_flavor="latex"	" Assume *.tex are LaTeX files rather than TeX.
let g:is_posix=1		" Assume POSIX shell files.
let g:is_bash=1			" Assume *.sh are bash files rather than sh.
let g:netrw_altv=1		" Split netrw to the right.
let g:netrw_alto=1		" Split netrw to the bottom.

"" Mappings
nnoremap Y y$
nnoremap <CR> o<Esc>
nnoremap <Tab> %
vnoremap <Tab> %
nmap <silent><Leader>/ :noh<CR>
nmap <silent><Leader>W :%s/\s\+$//<CR>:let @/=''<CR>
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
"cmap cwd lcd %:p:h
"cmap w!! w !sudo tee % >/dev/null
nmap <silent><F3> :w!<CR>:silent !aspell -c -x %<CR>:e! %<CR>:redraw!<CR>
nmap <silent><F4> :silent !dict <cword> \| less<CR>:redraw!<CR>

"" Airline Config
set laststatus=2
let g:airline_theme = 'simple'
"let g:airline#extensions#tabline#enabled = 1

"" Neocomplcache Config
nmap <silent><F5> :NeoComplCacheToggle<CR>
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_max_list = 15
"inoremap <expr><C-g> neocomplcache#undo_completion()
"inoremap <expr><C-l> neocomplcache#complete_common_string()
"inoremap <expr><CR> neocomplcache#complete_common_string()
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
"inoremap <expr><s-CR> pumvisible() ? neocomplcache#close_popup()"\<CR>" : "\<CR>"
"inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y> neocomplcache#close_popup()
" Enable Omnicompletion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

"" NERDTree Config
map <leader>e :NERDTreeFind<CR>
map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1

"" SingleCompile Config
nmap <silent><F9> :SCCompile<CR>
nmap <silent><F10> :SCCompileRun<CR>

"" Tabularize Config
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

"" UndoTree Config
nnoremap <Leader>u :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle=1
