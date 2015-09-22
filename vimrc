set nocompatible              " be iMproved, required
filetype off                  " required

" automatically reload vimrc when writing
autocmd! bufwritepost .vimrc source % 
"edit .vimrc wherever I go
nnoremap <leader>ev :vsplit $MYVIMRC<cr>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'gcmt/taboo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bling/vim-airline'
Plugin 'mbbill/undotree'
Plugin 'klen/python-mode'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'

"gundo
"vim-surround
"tabular

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

"Set default register to be the clipboard
set clipboard=unnamed

"change leader key
let mapleader=','

"edit .vimrc wherever I go
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"Change tab key settings
set tabstop=2
set shiftwidth=2
set expandtab

"unmap the arrow keys
inoremap <up> <nop>
noremap <up> <nop>
inoremap <down> <nop>
noremap <down> <nop>
inoremap <left> <nop>
noremap <left> <nop>
inoremap <right> <nop>
noremap <right> <nop>

"map escape to kj/jk
inoremap kj <Esc>
cnoremap kj <Esc>
inoremap KJ <Esc>
cnoremap KJ <Esc>
inoremap jk <Esc>
cnoremap jk <Esc>
inoremap JK <Esc>
cnoremap JK <Esc>

"map tab to change windows
nnoremap <Tab> <C-w>w
"map control-h/l to switch buffers
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>
"map control-j/k to switch tabs
nnoremap <C-j> :tabnext<CR>
nnoremap <C-k> :tabprevious<CR>
"map control-n/m to open/close tabs
nnoremap <C-n> :tabnew<CR>
nnoremap <C-m> :tabclose<CR>


"folding
nnoremap <space> za
nnoremap <C-@> zA
nnoremap <C-@> <C-Space>
vnoremap <space> zf
set foldlevelstart=99
set foldmethod=indent
set foldnestmax=2

"add new lines without going into insert mode
nmap <CR> o<Esc> 

"Use solarized theme
syntax enable
set background=dark
colorscheme solarized

" Disable swap files
set noswapfile

" move blocks of code with arrows in visual mode
vnoremap < <gv 
vnoremap > >gv

" Display line numbers
set number

"Show filename on bottom
set ls=2
set title

"Change colon to semicolon for switching to comdline mode
nmap ; :

"Make visual instead of audio alerts
set visualbell

"Center the display line after searches
nnoremap n nzz
nnoremap N Nzz

"fix backspace defaults
set backspace=indent,eol,start

"list possible autocompletion in command mode
set wildmenu
set wildmode=list:longest

"search incrementally and ignore case in search
set is
set ic

set smartindent

"set underscore as a word separator
set iskeyword-=_

"show command as you type
set sc

"pymode settings
let g:pymode = 1
let g:pymode_warnings = 1
let g:pymode_trim_whitespaces = 1 
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_virtualenv = 1    
let g:pymode_breakpoint_bind = 1
let g:pymode_lint = 0
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pylint']
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<Tab>'
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd = 'new'
command! Pt PymodeLintToggle

"syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_check_on_wq = 0
"command! St SyntasticToggleMode
"command! Sc SyntasticCheck

"airline settings
let g:airline#extensions#tabline#enabled = 1

"UndoTree settings
command! Ut UndotreeToggle

"RainbowParentheses settings
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadBraces

"Taboo settings
command! Nametab TabooRename
