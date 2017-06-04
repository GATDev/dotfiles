" SETUP {{{
" ---------------------------------------------------------
let g:python_host_prog='/usr/local/bin/python2.7'
let g:python3_host_prog='/usr/local/bin/python3.6'
let $PATH=$PATH . ':' . expand('~/.composer/vendor/bin')

set nocompatible
" }}}

" VIM-PLUG {{{
" ----------------------------------------------------------
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'airblade/vim-gitgutter'         "Shows a git diff in the gutter
Plug 'arnaud-lb/vim-php-namespace'    "Insert PHP use statements automatically
Plug 'cakebaker/scss-syntax.vim'      "Syntax file for SASS
Plug 'christoomey/vim-tmux-navigator' "Seamless navigation between tmux panes and vim splits
Plug 'craigemery/vim-autotag'         "Auto update tags file
Plug 'easymotion/vim-easymotion'      "Jump to motion target with one key
Plug 'elzr/vim-json'                  "Better syntax highlighting for JSON
Plug 'gabesoft/vim-ags'               "Clearer display of Ag results
Plug 'godlygeek/tabular'              "Text filtering and alignment
Plug 'hail2u/vim-css3-syntax'         "CSS3 syntax support
Plug 'itchyny/lightline.vim'          "A light and configurable statusline/tabline
Plug 'jason0x43/vim-js-indent'        "Indent function for javascript and typescript
Plug 'jelera/vim-javascript-syntax'   "Enhanced Javascript syntax file
Plug 'jiangmiao/auto-pairs'           "Insert or delete brackets, parens and quote pairs
Plug 'joshdick/onedark.vim'           "Onedark theme
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'               "Asynchronous fuzzy file finder
Plug 'junegunn/goyo.vim'              "Distraction free writing
Plug 'leafgarland/typescript-vim'     "Typescript syntax files
Plug 'majutsushi/tagbar'              "Easy way to view the tags of the current file
Plug 'MarcWeber/vim-addon-mw-utils'   "Interpret a file by function and automatically cache
Plug 'mattn/emmet-vim'                "Provides support for expanding abbreviations
Plug 'mhartington/vim-typings'        "Provides .d.ts management for typings
Plug 'mkusher/padawan.vim'            "Padawan PHP completion server plugin
Plug 'nelsyeung/twig.vim'             "Twig syntax highlighting, indentation and snippets
Plug 'pangloss/vim-javascript'        "Improved Javascript indentation and syntax support
Plug 'pbogut/deoplete-padawan'
Plug 'plasticboy/vim-markdown'        "Markdown syntax highlighting, rules and mappings
Plug 'qbbr/vim-symfony'               "Symfony2 autocompletion and snippets
Plug 'quramy/tsuquyomi'               "Typescript omnicompletion
Plug 'quramy/vim-dtsm'                "Execute typescript dtsm commands
Plug 'quramy/vim-js-pretty-template'  "Highlight javascript template strings
Plug 'rking/ag.vim'                   "A code-searching tool similar to ack, but faster
Plug 'scrooloose/nerdcommenter'       "Customisable code commenting
Plug 'scrooloose/nerdTree'            "Tree explorer to open files and directories
Plug 'sheerun/vim-polyglot'           "A pack of 70+ language syntaxes
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'              "Asynchronous snippet plugin
Plug 'Shougo/neosnippet-snippets'     "Standard neosnippet snippets repository
Plug 'Shougo/unite.vim'               "Search files, buffers, recently used files or registers
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'sjl/gundo.vim'                  "Visualise vim undo tree
Plug 'stanangeloff/php.vim'           "PHP syntax file (5.3 - 7.1)
Plug 'stephpy/vim-php-cs-fixer'       "Executes php-cs-fixer on a directory or file
" Plug 'suan/vim-instant-markdown'      "Instant markdown preview
Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
Plug 'terryma/vim-multiple-cursors'   "Multiple cursors
Plug 'thaerkh/vim-workspace'          "Vim session management
Plug 'tobyS/pdv'                      "PHP documentor for vim
Plug 'tobyS/vmustache'                "Required for pdv
Plug 'tomtom/tlib_vim'                "Some utility functions for vim
Plug 'tpope/vim-abolish'              "Easily search for, substitute, and abbreviate words
Plug 'tpope/vim-cucumber'             "Syntax highlighting for .feature files
Plug 'tpope/vim-dispatch'             "Kick off builds and test suites
Plug 'tpope/vim-endwise'              "Automatically end Ruby structures
Plug 'tpope/vim-eunuch'               "UNIX shell commands
Plug 'tpope/vim-fugitive'             "A comprehensive git wrapper
Plug 'tpope/vim-git'                  "Syntax, indent and filetype plugin for git files
Plug 'tpope/vim-haml'                 "Runtime files for Haml, Sass and SCSS
Plug 'tpope/vim-obsession'            "Continuously updated session files
Plug 'tpope/vim-repeat'               "Remaps . so that plugins can use it
Plug 'tpope/vim-speeddating'          "Increment/decrement dates and times
Plug 'tpope/vim-surround'             "Mappings to delete, change and add surrounding pairs
Plug 'tpope/vim-unimpaired'           "Pairs of handy bracket mappings
Plug 'valloric/listtoggle'            "Toggle quicklisk and location list
Plug 'vim-php/tagbar-phpctags.vim'    "Generate phpctags for tagbar
Plug 'vim-scripts/SyntaxRange'        "Define different filetype syntax on buffer regions
Plug 'vim-scripts/taglist.vim'        "Overview of the structure of source code files
Plug 'w0rp/ale'                       "Ansynchronous linting engine

call plug#end()
" }}}

" GENERAL SETTINGS {{{
" ----------------------------------------------------------
filetype plugin indent on
syntax on
scriptencoding utf-8
set bs=
set viewoptions=folds,options,cursor,unix,slash
set history=2000
set iskeyword-=.   " '.' is an end of word designator
set iskeyword-=#   " '#' is an end of word designator
set iskeyword-=-   " '-' is an end of word designator
set backspace=indent,eol,start
set formatoptions-=or
set foldmethod=marker
set showmatch
set autoread
set lazyredraw
set clipboard=unnamed
" }}}

" LEADERS AND REMAPS {{{
" ----------------------------------------------------------
let mapleader = ','

nmap        <leader><space> :FZF<CR>
nmap        <leader><leader><space> :NERDTreeToggle<CR>
nmap        <leader><leader>t :TagbarToggle<CR>
nmap        <leader>/ :noh<CR>
nmap        <leader>h :%s/:\(\w\+\) =>/\1:/gc<CR>
map         <leader>i mmgg=G`m<CR>
map         <leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map         <leader>t :vs<CR>:term<CR>
map         <leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map         <leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>
nmap        <leader>V :tabe ~/.vimrc<CR>
nmap        <leader>R :so ~/.vimrc<CR>
nnoremap    <leader>o o<Esc>
nnoremap    <leader>O O<Esc>
noremap     <Up> ddkP<CR>k
noremap     <Down> ddp<CR>k
nnoremap    Y y$
nnoremap    ; :
inoremap    jj <Esc>
nmap        k gk
nmap        j gj
cmap        W w
cmap        W! w!
cmap        WQ wq
cmap        wQ wq
cmap        Q q
cmap        Q! q!
cmap        Qa qa
cmap        Qa! qa!
cmap        Tabe tabe
cmap        w!! w !sudo tee % >/dev/null
vnoremap    < <gv
vnoremap    > >gv
vnoremap    J :m '>+1<CR>gv=gv
vnoremap    K :m '<-2<CR>gv=gv
nnoremap    <Space> za
vnoremap    <Space> za

" }}}

" ABBREVIATIONS {{{
" ----------------------------------------------------------
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
" }}}

" DISABLED KEYS {{{
" ----------------------------------------------------------
inoremap  <Up>    <NOP>
inoremap  <Down>  <NOP>
inoremap  <Left>  <NOP>
inoremap  <Right> <NOP>
noremap   <Left>  <NOP>
noremap   <Right> <NOP>
" }}}

" VISUALS AND COLORSCHEMES {{{
" ----------------------------------------------------------
set termguicolors

let g:onedark_terminal_italics=1
colorscheme onedark
set background=dark

function! ToggleBG()
    if &background == 'light'
        execute ":set background=dark"
    else
        execute ":set background=light"
    endif
endfunction
command! Togbg call ToggleBG()
nnoremap <leader><leader>b :call ToggleBG()<CR>

" set cursorline
set noshowmode

" lightline settings
let g:lightline = {
            \ 'colorscheme': 'onedark',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'readonly': 'LightLineReadonly',
            \   'modified': 'LightLineModified',
            \   'fugitive': 'LightLineFugitive',
            \   'filename': 'LightLineFilename'
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }

autocmd FileType sccs set iskeyword+=-
" }}}

" INTERFACE {{{
" ----------------------------------------------------------
set visualbell
set laststatus=2
set showcmd

command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
            \ | wincmd p | diffthis

set mouse=nicr
set autoindent
set smartindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set number
set relativenumber
set numberwidth=4
" }}}

" SPLITS AND WINDOWS {{{
" ----------------------------------------------------------
set splitbelow
set splitright
autocmd VimResized * exe "normal! \<c-w>="
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" }}}

" USEFUL FUNCTIONS {{{
" ----------------------------------------------------------

" Remove trailing whitespace
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
set list
nmap <leader>§ :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Restore cursor to most recent position in file
function! ResCur()
    if line("'\"") <= line("$")
        silent! normal! g'"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter ?* call ResCur()
augroup END

" Rename the current file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>
" }}}

" SEARCH & COMPLETION {{{
" ----------------------------------------------------------
set completeopt=longest,menuone
set incsearch
set hlsearch
set ignorecase
set smartcase
set smarttab
set magic
nnoremap n nzzzv
nnoremap N Nzzzv
" }}}

" TERMINAL CONFIGURATION {{{
" ----------------------------------------------------------
:au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" }}}

" DEOPLETE CONFIGURATION {{{
" ----------------------------------------------------------
let g:deoplete#enable_at_startup = 1
" }}}

" NEOSNIPPET CONFIGURATION {{{
" ----------------------------------------------------------
let g:neosnippet#enable_snipmate_compatability = 1

" Neosnippet key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" To conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
" }}}

" HELP SYSTEM SPEEDUPS {{{
" ----------------------------------------------------------
autocmd filetype help nnoremap <buffer><cr> <c-]>
autocmd filetype help nnoremap <buffer><bs> <c-T>
autocmd filetype help nnoremap <buffer>q :q<CR>
autocmd filetype help set nonumber
" }}}

" FILETYPES AND OPTIONS {{{
" ----------------------------------------------------------
set shortmess=atI
set wildmode=list:longest,full
set wildignore+=*/tmp/*,*.o,*.obj,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
set list listchars=tab:\ \ ,trail:·
" }}}

" SWAP FILES AND PERSISTENT UNDO {{{
" ----------------------------------------------------------

" Swap files
set noswapfile
set nobackup
set nowb

" Persistent undo
let s:vim_cache = expand('$HOME/.vim/backups')
if filewritable(s:vim_cache) == 0 && exists("*mkdir")
    call mkdir(s:vim_cache, "p", 0700)
endif
set undodir=~/.vim/backups
set undofile
" }}}

" LIGHTLINE FUNCTIONS {{{
" ----------------------------------------------------------
function! LightLineModified()
    if &filetype == "help"
        return ""
    elseif &modified
        return "+"
    elseif &modifiable
        return ""
    else
        return ""
    endif
endfunction

function! LightLineReadonly()
    if &filetype == "help"
        return ""
    elseif &readonly
        return ""
    else
        return ""
    endif
endfunction

function! LightLineFugitive()
    if exists("*fugitive#head")
        let branch = fugitive#head()
        return branch !=# '' ? ' '.branch : ''
    endif
    return ''
endfunction

function! LightLineFilename()
    return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
                \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
                \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction
" }}}

" FUGUTIVE CONFIGURATION {{{
" ----------------------------------------------------------
noremap <Leader>ga      :Gwrite<CR>
noremap <Leader>gc      :Gcommit<CR>
noremap <Leader>gpush   :Gpush<CR>
noremap <Leader>gpull   :Gpull<CR>
noremap <Leader>gs      :Gstatus<CR>
noremap <Leader>gb      :Gblame<CR>
noremap <Leader>gd      :Gvdiff<CR>
noremap <Leader>gr      :Gremove<CR>
" }}}

" TABULARIZE FUNCTIONS {{{
" ----------------------------------------------------------
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction
" }}}

" PHP CONFIGURATION {{{
" ----------------------------------------------------------

" Syntax
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpKeyword
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Insert a use statement for the class under the cursor
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader><Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader><Leader>u :call PhpInsertUse()<CR>

" Expand the name under the cursor to its fully qualified name
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader><Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader><Leader>e :call PhpExpandClass()<CR>

" Sort use cases alphabetically
autocmd FileType php inoremap <Leader><Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader><Leader>s :call PhpSortUse()<CR>
let g:php_namespace_sort_after_insert = 1

" PDV
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
autocmd FileType php nnoremap <leader>\ :call pdv#DocumentCurrentLine()<CR>

" Padawan
let g:padawan#composer_command = "composer"
let g:padawan#cli = 'php -d memory_limit=-1 ~/.composer/vendor/bin/padawan'

" Tagbar PHPCtags
let g:tagbar_phpctags_memory_limit = '512M'
" }}}

" TAGS CONFIGURATION {{{
" ----------------------------------------------------------
let g:autotagTagsFile="tags"
" }}}

" ALE SYNTAX CHECKER CONFIGURATION {{{
" ----------------------------------------------------------
let g:ale_linters = {'html': 'tidy', 'js': 'eslint', 'ts': 'tslint', 'json': 'jsonlint', 'yml': 'yamllint'}
let g:ale_linter_aliases = {'twig': 'html'}
" }}}

" NERDCOMMENTER CONFIGURATION {{{
" ----------------------------------------------------------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'twig': { 'left': '{#','right': '#}' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" }}}

" NERDTREE CONFIGURATION {{{
" ----------------------------------------------------------
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
" }}}

" TERNJS CONFIGURATION {{{
" ----------------------------------------------------------
let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1
" }}}
