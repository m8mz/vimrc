set showmatch
set ignorecase
set incsearch
set nocompatible
filetype off
syntax on
filetype plugin indent on
set wrap
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
set backspace=indent,eol,start
set matchpairs+=<:>
set number
set rnu
set hlsearch
set hidden
set tabstop=2
set shiftwidth=2
set sts=2
set shiftround
set copyindent
set expandtab
set ttyfast
set background=dark

" pastetoggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" for yml files use 2 spaces
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2 expandtab indentkeys-=<:>
" for py files use 2 spaces
au! BufNewFile,BufReadPost *.{py} set filetype=python
autocmd Filetype python setlocal ts=2 sw=2 sts=2 expandtab indentkeys-=<:>

set background=dark

if executable('rg')
        let g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>pv :Lex <bar> :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
