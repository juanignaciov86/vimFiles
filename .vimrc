set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'alessandroyorba/monrovia'
Plugin 'alessandroyorba/sidonia'
Plugin 'rakr/vim-one'

Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:syntastic_check_on_open=1
set paste
syntax on
syntax enable
let base16colorspace=256 " Access colors present in 256 colorspace
set t_Co=256
set background=dark
colorscheme badwolf

let g:airline_theme='one'
set number


set path=.,/usr/include,,**

"Nerdtree config
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeFocus<CR>

map <silent> <C-n> :NERDTreeToggle<CR>
imap <C-c> <CR><Esc>O
au VimEnter *  NERDTree

"map <leader>] :FufFile \*\*\/<CR

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'

"Syntastic config
let g:syntastic_javascript_checkers = ['jshint']


" jshint validation
nnoremap <silent><F1> :JSHint<CR>
inoremap <silent><F1> <C-O>:JSHint<CR>
vnoremap <silent><F1> :JSHint<CR>
" show next jshint error
nnoremap <silent><F2> :lnext<CR>
inoremap <silent><F2> <C-O>:lnext<CR>
vnoremap <silent><F2> :lnext<CR>
" show previous jshint error
nnoremap <silent><F3> :lprevious<CR>
inoremap <silent><F3> <C-O>:lprevious<CR>
vnoremap <silent><F3> :lprevious<CR>

"CtrlP config
let g:ctrlp_max_files=0
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'results:100' " overcome limit imposed by max height
let g:ctrlp_cmd='CtrlP :pwd'
