execute pathogen#infect()
syntax enable
"if has('gui_running')
"    set background=dark
"else
    "set background=dark
"    set background=dark
"endif
"set t_Co=16
set guifont=Menlo\ Regular:h16
set nowrap
colorscheme solarized
set background=light
set number

set smartindent
filetype off
"call pathogen#runtime_append_all_bundles()
filetype plugin indent on
let g:Tex_IgnoredWarnings = 7
"let g:clang_periodic_quickfix = 0
"let g:clang_complete_copen = 1
"let g:clang_complete_auto = 0
"let g:SuperTabDefaultCompletionType = "context"
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"

"let g:neocomplcache_enable_at_startup = 1 

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
imap kj <Esc>
set cursorline
set hidden
set autoindent
set copyindent
"set number
set ruler
set showmatch
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set nobackup
set noswapfile
set undolevels=1000
set clipboard=unnamed
set history=1000
set pastetoggle=<F2>
set mouse=a
set backspace=2
let mapleader = '\'
nnoremap <leader>w <C-w>v<C-w>l
set gdefault
nnoremap / /\v
vnoremap / /\v
set wrap
"set textwidth=79
set formatoptions=qrn1
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>o :put =' '<cr>
nnoremap <leader>O :put! =' '<cr>
nnoremap <leader>u g:ClangUpdateQuickFix()
set colorcolumn=79
"au FocusLost * :wa

autocmd BufRead,BufNewFile *.sql_in set filetype=sql
autocmd BufRead,BufNewFile *.py_in set filetype=python

" disable arrow keys


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map gC :'a,. s/^/ */^M:. s/\(.*\)/\1^V^V^M **************\//^M:'a s/\(.*\)/\/**************^V^V^M\1/^M

set virtualedit=onemore
"call rainbow_parenthsis#LoadBraces()
"call rainbow_parenthsis#Activate()

" au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
"                         \ exe "normal g'\"" | endif


" Vim Latex
"----------------------------------------------------------------------------
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
let g:Tex_ViewRule_pdf = 'Skim'

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set runtimepath+=$HOME/.vim/plugins_dir/misc
set runtimepath+=$HOME/.vim/plugins_dir/notes
let g:SuperTabDefaultCompletionType = "context"
