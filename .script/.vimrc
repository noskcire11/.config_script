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

set noshowmode

let g:lightline = {
			\ 	'colorscheme': 'simpleblack',
			\ }

let g:coc_global_extensions = [
			\ 	'coc-pairs',
			\ 	'coc-tsserver',
			\ 	'coc-pyright',
			\ 	'coc-json',
			\ 	'coc-css'
      \ ]

set updatetime=500

" use Control Space for trigger completion (vim)
inoremap <silent><expr> <c-@> coc#refresh()

" use Alt h/j/k/l to navigate in insert mode
" use Alt j/k to navigate the completion list (vim)
inoremap <Esc>h <Left>
inoremap <Esc>l <Right>
"inoremap <expr> <Esc>j pumvisible() ? "\<C-n>" : "<Down>"
"inoremap <expr> <Esc>k pumvisible() ? "\<C-p>" : "<Up>"
inoremap <Esc>j <Down>
inoremap <Esc>k <Up>

" use Tab and Shift Tab to navigate the completion list
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use Tab to select item in completion list
inoremap <expr> <Tab> pumvisible() ? "\<Enter>" : "\<Tab>"

" change cursor in insert mode
au InsertEnter * silent execute "!echo -en \<esc>[5 q"
au InsertLeave * silent execute "!echo -en \<esc>[2 q"

colorscheme 256_noir
