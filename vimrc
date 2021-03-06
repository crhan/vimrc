set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'nathanaelkane/vim-indent-guides'  " 缩进对齐提示
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
"Plugin 'ervandew/supertab'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'sjl/gundo.vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'raimondi/delimitmate'  " 自动关括号

" Color
Plugin 'tpope/vim-vividchalk'
"Plugin 'altercation/vim-colors-solarized'

" Ruby related
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'tpope/vim-endwise'

" Python related
Plugin 'klen/python-mode'
Plugin 'tell-k/vim-autopep8'

" Code Navigation
Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
Plugin 'easymotion/vim-easymotion'
Plugin 'taglist.vim'

" HTML related
Plugin 'gregsexton/matchtag'
Plugin 'digitaltoad/vim-jade'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Most basic settings
syntax on
set hidden
set wrap          " wrap lines
set tabstop=2     " a tab is four spaces
set expandtab     " expand tab to spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set relativenumber  " always show relative numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set updatecount=100 " every 100 chars will vim save them to swap
set cursorline    " Highlight the cursor line
set list
set lcs=extends:>,precedes:<,tab:>-,trail:·
"set scrolloff=5   " scrolloff to 5
set backupskip=/tmp/*,/private/tmp/*" 

" Set vim to have a large undo buffer
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" Stop making backup file like you are in 70's, now you could use git
set nobackup

" Use file type plugins
filetype plugin indent on
"autocmd filetype python set expandtab

" Add a shortcut Mappings for ":" and make j k more like the normal one
nnoremap ; :
"nnoremap j gj
"nnoremap k gk
let mapleader = ","

"unmap <leader>tw

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Easy to clear the hightlighting for search
nmap <silent> <leader>/ :nohlsearch<CR>

" Fold the select visual box
vmap <silent> <leader>fo :fo<cr>

" mapped in janus distribution
cmap w!! w !sudo tee % >/dev/null

" Move cursor when inserting
imap <C-h> <left>
imap <C-j> <down>
imap <C-k> <up>
imap <C-l> <right>

" NERDTree key binding
nmap <leader>nt :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\.pyc$']

let g:user_zen_settings = {
      \  'indentation' : '  ',
      \  'perl' : {
      \    'indentation' : '  ',
      \    'aliases' : {
      \      'req' : "require '|'"
      \    },
      \    'snippets' : {
      \      'use' : "use strict\nuse warnings\n\n",
      \      'w' : "warn \"${cursor}\";",
      \    },
      \  },
      \'php' : {
      \'extends' : 'html',
      \'filters' : 'c',
      \},
      \'xml' : {
      \'extends' : 'html',
      \},
      \'haml' : {
      \'extends' : 'html',
      \},
      \}
let g:user_zen_leader_key = '<c-e>'
" Bind paste mode toggle to <Leader>p
set pastetoggle=<leader>p

" CtrlP config
" Bind CtrlPBuffer to <leader>b
nmap <silent> <Leader>b :CtrlPBuffer<CR>

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|_site$\|doc$\|coverage$\|htmlcov$\|_book$\|.tox$|.direnv$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.png$',
    \ 'link': 'some$\|bad$\|symbolic$\|links$',
    \ }
let g:ctrlp_dotfiles = 1
let g:ctrlp_max_depth = 10
let g:ctrlp_extensions = ['changes', 'line', 'buffertag']
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = '2vr'
let g:ctrlp_use_caching = 1
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_clear_cache_on_exit = 1
" let g:ctrlp_user_command = [repo_marker, vcs_ls_command, fallback_command]
" let g:ctrlp_user_command = ['.hg/', 'hg --cwd %s locate -I .']
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" color for vim with noGUI
" color default
color vividchalk
set background=dark
set modeline

" Perfer LaTeX
let g:tex_flavor = "latex"
let g:plaintex_delimiters = 1
" let g:tex_fold_enabled=1

" remove space at each line when saving
" autocmd BufWritePre * :%s/\s\+$//e

" VIM 7.3+ has support for highlighting a specified column.
if exists('+colorcolumn')
    set colorcolumn=80
else
    " Emulate
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

"Ctags 索引配置
" set tags+=/Users/crhan/.rvm/gems/ruby-1.9.3-p125/tags
nmap <leader>rr :!ctags --extra=+f --exclude=.git --exclude=log -R *

let g:Powerline_symbols = 'fancy'

" NeoComplCache: https://github.com/Shougo/neocomplcache
let g:neocomplcache_enable_at_startup = 1

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

"" AutoPairs config
let g:AutoPairsMapBS = 1
" inoremap <buffer> <silent> <BS> <C-R>=AutoPairsDelete()<CR>
let g:AutoPairsMapSpace = 0

"" Syntastic
let g:syntastic_mode_map = { 'passive_filetypes': ["sass", "scss"] }
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_flake8_args = '--ignore=E501,E402 --max-complexity=10 --filename=*'


"" PyMode
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_rope_autoimport = 1

"" Dash
:nmap <silent> <leader>d <Plug>DashSearch

"" YouCompleteMe
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_complete_in_comments = 1
nmap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>

"" UltiSnips
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsEnableSnipMate = 1

" indent-guide
let g:indent_guides_enable_on_vim_startup = 1

" SIMPYLFOLD
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
let g:SimpylFold_docstring_preview = 1

" delimitmate
au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
