set nocompatible
filetype off

" Vundle stuff

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'itchyny/vim-gitbranch'
Plugin 'whatyouhide/vim-lengthmatters'
Plugin 'sheerun/vim-polyglot'
Plugin 'matthew-brett/vim-rst-sections'
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'  " remote plugins
Plugin 'zchee/deoplete-jedi'
Plugin 'Shougo/neco-syntax'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'etdev/vim-hexcolor'
Plugin 'guns/xterm-color-table.vim'

call vundle#end()

filetype plugin indent on
syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set tw=80

set ttimeoutlen=10
set laststatus=2

set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set wildmenu
set hlsearch
set noshowmode

if !has('gui_running')
  set t_Co=256
endif

let mapleader=","

" statusline
let g:lightline = {
  \ 'background': 'light',
  \ 'colorscheme': 'lightlinedrifter',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste'],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name'
  \ },
  \ }

" theming

colorscheme peachpuff

highlight LineNr ctermfg=8 cterm=italic
highlight CursorLineNr ctermfg=15 cterm=bold
highlight Statement ctermfg=6 cterm=bold
highlight Function cterm=bold
highlight Comment ctermfg=0
highlight Search ctermbg=14
highlight Visual ctermbg=7 ctermfg=11
highlight ErrorMsg ctermbg=9

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" lengthmatters colors
call lengthmatters#highlight('ctermbg=8 ctermfg=5')

let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/Users/atrinh/.config/nvimenv/bin/python3'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
