"" General Settings
set nocompatible                                 " Enable vim-specific features.
set shortmess+=I                                 " Disable startup message.
set nobackup                                     " Don't backup saved files.
set ruler                                        " Show the ruler.
set showcmd                                      " Show partial commands in statusline.
set mouse=a                                      " Enable mouse usage.
set mousefocus                                   " Focus windows with mouse in GVim
set showmatch                                    " Show matching parenthetical delimitters.
set hlsearch                                     " Highlight search terms.
set incsearch                                    " Find as you type search.
set ignorecase                                   " Case insensitive search.
set smartcase                                    " Case sensitive when uppercase present.
set linebreak                                    " Perform linebreaks at appropriate characters.
set autoindent                                   " Indent at same level as previous line.
set tabstop=4                                    " Use four columns for tabstop.
set shiftwidth=4                                 " Indent by four columns.
set foldenable                                   " Automatically fold code.
set nojoinspaces                                 " Do not doublespace on join (J).
set pastetoggle=<F2>                             " Enable unformatted paste.
set splitright                                   " Open new vsplit window to the right.
set splitbelow                                   " Open new split window to the bottom.

"" Vundle Config
set rtp+=~/.vim/bundle/vundle                    " Include vundle in runtime path.
call vundle#rc()                                 " Run vundle.

"" Folding
set foldmethod=marker                            " Use markers for folding.
set foldmarker={{{,}}}                           " Markers for folding.

"" Bundles
Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'chrisbra/csv.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'xuhdev/SingleCompile'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'godlygeek/tabular'
" Bundle 'spf13/vim-autoclose'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mbbill/undotree'
Bundle 'tpope/vim-fugitive'
" Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-repeat'
Bundle 'goldfeld/vim-seek'
Bundle 'tpope/vim-surround'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-vividchalk'
Bundle 'vim-scripts/ZoomWin'

"" General Modes
filetype plugin indent on                        " Enable filetype plugins and indentation.
syntax on                                        " Enable syntax highlighting.

"" Overrides
let mapleader=","                                " Use comma for leader key rather than backspace.
let g:tex_flavor="latex"                         " Assume *.tex are LaTeX files rather than TeX.
let g:is_posix=1                                 " Assume POSIX shell files.
let g:is_bash=1                                  " Assume *.sh are bash files rather than sh.
let g:netrw_altv=1                               " Split netrw to the right.
let g:netrw_alto=1                               " Split netrw to the bottom.
au BufNewFile,BufRead *.md set filetype=markdown " Assume *.md are markdown, not simula.

"" Mappings
nnoremap Y y$
nnoremap <CR> o<Esc>
nmap <silent><Leader>/ :noh<CR>
nmap <silent><Leader>W :%s/\s\+$//<CR>:let @/=''<CR>
nmap <Leader>ff [I:let nr = input("Which one: ")<BAR>exe "normal " . nr ."[\t"<CR>
"cmap cwd lcd %:p:h
"cmap w!! w !sudo tee % >/dev/null
nmap <silent><F3> :w!<CR>:silent !aspell -c -x '%'<CR>:e! %<CR>:redraw!<CR>
nmap <silent><F4> :silent !dict <cword> \| less<CR>:redraw!<CR>
nmap <silent><F5> :set number!<CR>
nmap <silent><F6> :set relativenumber!<CR>
nmap <silent><F6> :let &virtualedit=&virtualedit=="" ? "all" : ""<CR>

"" Airline Config
set laststatus=2
let g:airline_theme = 'simple'

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

"" Surround Config
let g:surround_{char2nr('q')}="``\r''"
let g:surround_{char2nr('Q')}="`\r'"
let g:surround_{char2nr('c')}="\\\1command\1{\r}"

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
