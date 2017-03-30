"" General Settings
set nocompatible                                 " Enable vim-specific features.
set autoindent                                   " Indent at same level as previous line.
set autoread                                     " Automatically read a file when it changes.
set backspace=indent,eol,start                   " Allow unrestricted backspace.
set display+=lastline                            " Show part of last line even if too long.
set foldenable                                   " Automatically fold code.
set formatoptions+=j                             " Remove comment leader when joining lines.
set hlsearch                                     " Highlight search terms.
set ignorecase                                   " Case insensitive search.
set incsearch                                    " Find as you type search.
set linebreak                                    " Perform linebreaks at appropriate characters.
set mouse=a                                      " Enable mouse usage.
set mousefocus                                   " Focus windows with mouse in GVim
set nobackup                                     " Don't backup saved files.
set nojoinspaces                                 " Do not doublespace on join (J).
set nrformats-=octal                             " Don't interpret leading 0s as octal.
set pastetoggle=<F2>                             " Enable unformatted paste.
set ruler                                        " Show the ruler.
set shiftwidth=4                                 " Indent by four columns.
set shortmess+=I                                 " Disable startup message.
set showcmd                                      " Show partial commands in statusline.
set showmatch                                    " Show matching parenthetical delimitters.
set smartcase                                    " Case sensitive when uppercase present.
set splitbelow                                   " Open new split window to the bottom.
set splitright                                   " Open new vsplit window to the right.
set tabstop=4                                    " Use four columns for tabstop.
set tags=./tags;                                 " Search up tree for tags file.
set wildmenu                                     " Show command line completion.

"" Folding
set foldmethod=marker                            " Use markers for folding.
set foldmarker={{{,}}}                           " Markers for folding.

"" Vundle Config
set rtp+=~/.vim/bundle/Vundle.vim                " Include vundle in runtime path.
call vundle#begin()                              " Run vundle.

"" Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'chaoren/vim-wordmotion'
Plugin 'chrisbra/csv.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'easymotion/vim-easymotion'               " \\MOTION
Plugin 'godlygeek/tabular'                       " :Tab REGEX # \zs
Plugin 'goldfeld/vim-seek'                       " sSEQ; OPERATORx
Plugin 'kana/vim-textobj-entire'                 " ae; ie
Plugin 'kana/vim-textobj-lastpat'                " a/; i/
Plugin 'kana/vim-textobj-user'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'mbbill/undotree'
Plugin 'mileszs/ack.vim'                         " :Ack REGEX
Plugin 'scrooloose/nerdtree'                     " ^e
Plugin 'terryma/vim-expand-region'               " v+; v_
Plugin 'tpope/vim-abolish'                       " :Subvert; crs; crm; crc; cru
Plugin 'tpope/vim-commentary'                    " gcc
Plugin 'tpope/vim-fugitive'                      " :Gstatus; :Gdiff; :Gedit; :Ggrep
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'                      " csXY; ysMOTIONX; dsX
Plugin 'tpope/vim-unimpaired'                    " [b; [n; [<Space>
Plugin 'tpope/vim-vividchalk'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/VisIncr'                     " :I
Plugin 'vim-scripts/ZoomWin'                     " ^wo
Plugin 'xuhdev/SingleCompile'

call vundle#end()

"" General Modes
filetype plugin indent on                        " Enable filetype plugins and indentation.
syntax on                                        " Enable syntax highlighting.
runtime macros/matchit.vim                       " Enable enhanced functionality for % motion.

"" Overrides
let g:tex_flavor="latex"                         " Assume *.tex are LaTeX files rather than TeX.
let g:is_posix=1                                 " Assume POSIX shell files.
let g:is_bash=1                                  " Assume *.sh are bash files rather than sh.
let g:netrw_altv=1                               " Split netrw to the right.
let g:netrw_alto=1                               " Split netrw to the bottom.
au BufNewFile,BufRead *.md set filetype=markdown " Assume *.md are markdown, not simula.

"" Mappings
cnoremap <expr> %%getcmdtype() == ':' ? expand('%:h').'/' : '%%'
nnoremap <silent><C-l> :<C-u>nohl<C-r>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-l>
nnoremap Y y$
nnoremap <CR> o<Esc>
nmap <silent><Leader>W :%s/\s\+$//<CR>:let @/=''<CR>
nmap <Leader>ff [I:let nr = input("Which one: ")<BAR>exe "normal " . nr ."[\t"<CR>
cmap cwd lcd %:p:h
cmap w!! w !sudo tee % >/dev/null
nmap <silent><F3> :w!<CR>:silent !aspell -c -x '%'<CR>:e! %<CR>:redraw!<CR>
nmap <silent><F4> :silent !dict <cword> \| less<CR>:redraw!<CR>
nmap <silent><F5> :set number!<CR>
nmap <silent><S-F5> :set relativenumber!<CR>
nmap <silent><F6> :let &virtualedit=&virtualedit=="" ? "all" : ""<CR>
nmap <silent><F7> :let &colorcolumn=&colorcolumn=="" ? "80" : ""<CR>

"" Airline Config
set laststatus=2                                 " Always show the status line.
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

"" Visual Increment Config
cmap Iz II 1 0

"" Functions
" Refactor the given lines using a dictionary, replacing all occurrences of
" each key in the dictionary with its value.
function! Refactor(dict) range
	execute a:firstline . ',' . a:lastline .  's/\C\<\%(' . join(keys(a:dict),'\|'). '\)\>/\='.string(a:dict).'[submatch(0)]/ge'
endfunction
command! -range=% -nargs=1 Refactor :<line1>,<line2>call Refactor(<args>)

" Prune the argslist to just those buffers listed in the quickfix list.
function! QuickfixFilenames()
	" Building a hash ensures we get each buffer only once
	let buffer_numbers = {}
	for quickfix_item in getqflist()
		let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
	endfor
	return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction
command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()

