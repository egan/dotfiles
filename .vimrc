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
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"" Folding
set foldmethod=marker
set foldmarker={{{,}}}

"" Bundles
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'xuhdev/SingleCompile'
Bundle 'godlygeek/tabular'
Bundle 'spf13/vim-autoclose'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'goldfeld/vim-seek'
Bundle 'tpope/vim-surround'

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
let g:NERDShutUP=1

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
