" 公共快捷键绑定 {{{
let mapleader = ','

noremap ; :
noremap 0 ^

nmap <silent> <leader>v :e ~/.vimrc<cr>
nmap <silent> <leader>s :sourc ~/.vimrc<cr>
nmap <silent> <leader>/ :nohlsearch<cr>

noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l
noremap <C-H> <C-W>h
noremap <S-H> gT
noremap <S-L> gt
noremap j gj
noremap Y y$

cmap w!! w !sudo tee % >/dev/null

inoremap jk <Esc>
inoremap <C-@> <C-X><C-O>
" }}}

" 插件配置 {{{
" 插件管理工具
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" solarized配色
Bundle 'altercation/vim-colors-solarized'
try
    color solarized
catch
    color desert
endtry
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" vim-powerline
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'compatible'
let g:Powerline_colorscheme = 'solarized16'

Bundle 'majutsushi/tagbar'
let g:tagbar_autoclose = 1
let g:tagbar_sort = 0

" 注释工具
Bundle 'scrooloose/nerdcommenter'

" 快速添加配对符号
Bundle 'tpope/vim-surround'

" }}}

" vim环境配置 {{{
set nocompatible
set background=dark

set fencs=utf-8,gb2312,gbk
filetype plugin indent on
syntax on
set autochdir

set nospell
set shortmess+=filmnrxoOtT
set virtualedit=onemore
set history=1000

set noswapfile
set backup
set backupdir=~/.vim/backup
set undofile
set undolevels=1000
set undoreload=10000
set undodir=~/.vim/undo
set tags=./tags;/,~/.vimtags

set completeopt-=preview
" }}}

" 读取本地配置文件 {{{
if filereadable(expand("~/.vimrc_local"))
    source ~/.vimrc_local
endif
" }}}
