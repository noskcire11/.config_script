" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rafi/awesome-vim-colorschemes'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


let g:lightline = {
			\ 	'colorscheme': 'deus',
			\ }

let g:coc_global_extensions = [
			\ 	'coc-pairs',
			\ 	'coc-tsserver',
			\ 	'coc-python',
			\ 	'coc-json',
			\ 	'coc-prettier',
			\ 	'coc-css'
      \ ]

" change cursor in insert mode
au InsertEnter * silent execute "!echo -en \<esc>[5 q"
au InsertLeave * silent execute "!echo -en \<esc>[2 q"

colorscheme termschool

filetype indent plugin on

" use Control Space for trigger completion (vim)
ino <silent><expr> <c-@> coc#refresh()
" use Tab to select item in completion list
ino <expr> <Tab> pumvisible() ? "\<Enter>" : "\<Tab>"

cno JJ <C-c>
cno jj <C-c>
ino <Esc>h <Left>
ino <Esc>l <Right>
ino <Esc>j <Down>
ino <Esc>k <Up>
ino JJ <Esc>
ino jj <Esc>
map Y y$
nno <C-L> :nohl<CR><C-L>
nno <Space> @
nno , @@

set autoindent
set backspace=indent,eol,start
set cc=100
set clipboard=unnamedplus
set confirm
set hidden
set hlsearch
set ignorecase
set laststatus=2
set mouse=a
set nocompatible
set noshowmode
set nostartofline
set number
set pastetoggle=<F2>
set shiftwidth=2
set showcmd
set smartcase
set t_vb=
set tabstop=2
set timeoutlen=200
set updatetime=500
set visualbell
set wildmenu

syntax on
