" Author: Gary Thirkell
" Last Update: 30th September 2016

" ENVIRONMENT
" ----------------------------------------------------------

let g:python_host_prog='/usr/local/bin/python2'
let g:python3_host_prog='/usr/local/bin/python3.5'
let $PATH=$PATH . ':' . expand('~/.composer/vendor/bin')

" Platform identification
function! OSX()
    return has('macunix')
endfunction
function! LINUX()
    return has('unix') && !has('macunix') && !has('win32unix')
endfunction
function! WINDOWS()
    return  (has('win32') || has('win64'))
endfunction

set nocompatible

" VIM-PLUG
" ----------------------------------------------------------

if OSX()
    call plug#begin('~/.config/nvim/autoload/plugged')
endif
if WINDOWS()
    call plug#begin('~/.vim/plugged')
endif

Plug 'morhetz/gruvbox'                "Gruvbox theme
Plug 'tomasr/molokai'                 "Moloaki theme
Plug 'easymotion/vim-easymotion'      "Jump to motion target with one key
Plug 'greplace.vim'                   "Global search and replace for vim
Plug 'sheerun/vim-polyglot'           "A pack of 70+ language syntaxes
Plug 'airblade/vim-gitgutter'         "Shows a git diff in the gutter
Plug 'valloric/listtoggle'            "Toggle quicklisk and location list
Plug 'tpope/vim-fugitive'             "A comprehensive git wrapper
Plug 'tpope/vim-git'                  "Syntax, indent and filetype plugin for git files
Plug 'tpope/vim-endwise'              "Automatically end Ruby structures
Plug 'tpope/vim-unimpaired'           "Pairs of handy bracket mappings
Plug 'tpope/vim-commentary'           "Comment out lines and motion targets
Plug 'tpope/vim-dispatch'             "Kick off builds and test suites
Plug 'tpope/vim-surround'             "Mappings to delete, change and add surrounding pairs
Plug 'tpope/vim-haml'                 "Runtime files for Haml, Sass and SCSS
Plug 'tpope/vim-abolish'              "Easily search for, substitute, and abbreviate words
Plug 'tpope/vim-speeddating'          "Increment/decrement dates and times
Plug 'tpope/vim-repeat'               "Remaps . so that plugins can use it
Plug 'tpope/vim-eunuch'               "UNIX shell commands
Plug 'tpope/vim-obsession'            "Continuously updated session files
Plug 'tpope/vim-cucumber'             "Syntax highlighting for .feature files
Plug 'godlygeek/tabular'              "Text filtering and alignment
Plug 'tComment'                       "Filetype sensitive comments for vim
Plug 'itchyny/lightline.vim'          "A light and configurable statusline/tabline
Plug 'pangloss/vim-javascript'        "Improved Javascript indentation and syntax support
Plug 'jelera/vim-javascript-syntax'   "Enhanced Javascript syntax file
Plug 'elzr/vim-json'                  "Better syntax highlighting for JSON
Plug 'rking/ag.vim'                   "A code-searching tool similar to ack, but faster
Plug 'gabesoft/vim-ags'               "Clear display of Ag resultsClearer display of Ag results
Plug 'scrooloose/nerdTree'            "Tree explorer to open files and directories
Plug 'scrooloose/syntastic'           "Syntax error checking
Plug 'mattn/emmet-vim'                "Provides support for expanding abbreviations
Plug 'MarcWeber/vim-addon-mw-utils'   "Interpret a file by function and automatically cache
Plug 'tomtom/tlib_vim'                "Some utility functions for vim
Plug 'honza/vim-snippets'             "Snippets files for various programming languages
Plug 'garbas/vim-snipmate'            "Support for textual snippets
Plug 'jiangmiao/auto-pairs'           "Insert or delete brackets, parens and quote pairs
Plug 'evidens/vim-twig'               "Twig syntax highlighting and snippets
Plug 'hail2u/vim-css3-syntax'         "CSS3 syntax support
Plug 'cakebaker/scss-syntax.vim'      "Syntax file for SASS
Plug 'stanangeloff/php.vim'           "PHP syntax file (5.3 - 5.6)
" Plug 'shawncplus/phpcomplete.vim'     "Improved PHP omnicompletion
Plug 'tobyS/vmustache'                "Required for pdv
Plug 'tobyS/pdv'                      "PHP documentor for vim
Plug 'mkusher/padawan.vim'            "Padawan PHP completion server plugin
Plug 'arnaud-lb/vim-php-namespace'    "Insert PHP use statements automatically
Plug 'stephpy/vim-php-cs-fixer'       "Executes php-cs-fixer on a directory or file
Plug 'christoomey/vim-tmux-navigator' "Seamless navigation between tmux panes and vim splits
Plug 'vim-scripts/SyntaxRange'        "Define different filetype syntax on buffer regions
Plug 'vim-scripts/taglist.vim'        "Overview of the structure of source code files
Plug 'majutsushi/tagbar'              "Easy way to view the tags of the current file
Plug 'vim-php/tagbar-phpctags.vim'    "Generate phpctags for tagbar
" Plug 'ervandew/supertab'              "Perform all insert mode completions with Tab
Plug 'terryma/vim-multiple-cursors'   "Multiple cursors
Plug 'qbbr/vim-symfony'               "Symfony2 autocompletion and snippets
Plug 'vimwiki/vimwiki'                "Personal wiki for vim
Plug 'Shougo/unite.vim'               "search files, buffers, recently used files or registers
Plug 'Shougo/neosnippet'              "Asynchronous snippet plugin
Plug 'Shougo/neosnippet-snippets'     "Standard neosnippet snippets repository
Plug 'junegunn/goyo.vim'              "Distraction free writing
Plug 'junegunn/fzf.vim'               "Asynchronous fuzzy file finder
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'pbogut/deoplete-padawan'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }


call plug#end()


" GENERAL SETTINGS
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


" LEADERS AND REMAPS
" ----------------------------------------------------------

let mapleader = ','
nmap <leader><leader><space> :NERDTreeToggle<CR>
nmap <leader><space> :FZF<CR>
nmap <leader>t :TagbarToggle<CR>
nmap <leader>ct :! ctags -R --fields=+laimS --languages=php<CR>
nmap <leader>c :%s/^\s*#.*$//g<CR>:%s/\(\n\)\n\+/\1/g<CR>:nohl<CR>gg
nmap <leader>V :tabe ~/.vimrc<CR>
nmap <leader>h :%s/:\(\w\+\) =>/\1:/gc<CR>
nmap <leader>R :so ~/.vimrc<CR>
nmap <leader>P :Phpcs<CR>
map <leader>i mmgg=G`m<CR>
map <leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
noremap <Up> ddkP<CR>k
noremap <Down> ddp<CR>k
nnoremap Y y$
inoremap jj <Esc>
nmap k gk
nmap j gj


" DISABLED KEYS
" ----------------------------------------------------------

inoremap  <Up>    <NOP>
inoremap  <Down>  <NOP>
inoremap  <Left>  <NOP>
inoremap  <Right> <NOP>
noremap   <Left>  <NOP>
noremap   <Right> <NOP>
set noesckeys


" VISUALS AND COLORSCHEMES
" ----------------------------------------------------------

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set termguicolors

let g:gruvbox_sign_column='bg0'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_underline=1
let g:gruvbox_bold=1
let g:gruvbox_undercurl=1
let g:gruvbox_italicize_comments=1
let g:gruvbox_italic=1
colorscheme gruvbox
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


" VISUALS AND COLORSCHEMES
" ----------------------------------------------------------
let g:lightline = {
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
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' }
            \ }

autocmd FileType sccs set iskeyword+=-

" INTERFACE
" ----------------------------------------------------------

set visualbell
set laststatus=2
set showcmd

command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
            \ | wincmd p | diffthis


" MOUSE
" ----------------------------------------------------------

set mouse=nicr


" TABS
" ----------------------------------------------------------

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab


" NUMBERING
" ----------------------------------------------------------

set number
set numberwidth=4


" SPLITS AND WINDOWS
" ----------------------------------------------------------

set splitbelow
set splitright
autocmd VimResized * exe "normal! \<c-w>="


" QUICKER WINDOW MOVEMENT
" ----------------------------------------------------------

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


" USEFUL FUNCTIONS
" ----------------------------------------------------------

" Insert a use statement for the class under the cursor
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" Trailing Whitespace
set listchars=tab:>\ ,trail:•,extends:>,precedes:<,nbsp:+
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


" SEARCH & COMPLETION
" ----------------------------------------------------------

set completeopt=longest,menuone
set incsearch
set hlsearch
set ignorecase
set smartcase


" NEOVIM SPECIFICS
" ----------------------------------------------------------

" Deoplete
let g:deoplete#enable_at_startup = 1

" Neosnippet
let g:neosnippet#enable_snipmate_compatability = 1
let g:neosnippet#snippets_directory = '~/.config/nvim/bundle/vim-snippets/snippets'

" Neosnippet key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" To conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif


" HELP SYSTEM SPEEDUPS
" ----------------------------------------------------------

autocmd filetype help nnoremap <buffer><cr> <c-]>
autocmd filetype help nnoremap <buffer><bs> <c-T>
autocmd filetype help nnoremap <buffer>q :q<CR>
autocmd filetype help set nonumber


" FILETYPES AND OPTIONS
" ----------------------------------------------------------

" File messages and options
set shortmess=atI
set wildmode=list:longest,full
set wildignore=*.o,*.obj,*~,*.swp


" SWAP FILES AND PERSISTENT UNDO
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


" NETRW
" ----------------------------------------------------------

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_keepdir = 1


" SYNTASTIC CONFIGURATION
" ----------------------------------------------------------

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_in_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode = "passive"
let g:syntastic_enable_signs = 1
let g:syntastic_html_tidy_exec = 'tidy5'
nnoremap <leader>sc :SyntasticCheck<CR> :lopen<CR>


" TAGBAR PHPCTAGS CONFIGURATION
" ----------------------------------------------------------

let g:tagbar_phpctags_memory_limit = '512M'


" PDV CONFIGURATION
" ----------------------------------------------------------

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
autocmd FileType php nnoremap <leader>\ :call pdv#DocumentCurrentLine()<CR>


" LIGHTLINE FUNCTIONS
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


" TABULAR FUNCTION
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


function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpKeyword
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END


" PADAWAN CONFIGURATION
" ----------------------------------------------------------

let g:padawan#composer_command = "composer"
