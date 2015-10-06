set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on    " required


let g:NERDTreeHijackNetrw=0

:hi TrailingWhiteSpace ctermbg=red guibg=red
:match TrailingWhiteSpace /\s\+$/

set nu

syntax on

set t_Co=256
colorscheme spacegrey

filetype indent on
filetype plugin indent on
set autoindent

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

set hls
set expandtab
set tabstop=4
set shiftwidth=4

noremap <right> zl
noremap <s-right> zL
noremap <up> <c-y>
noremap <left> zh
noremap <s-left> zH
noremap <down> <c-e>

:map <F2> :tabp<CR>
:map <F3> :tabn<CR>
:map <F1> :NERDTreeToggle<CR>

:map <[D> :tabp<CR>
:map <[C> :tabn<CR>


let g:airline_powerline_fonts = 1

set incsearch
let NERDTreeShowHidden=1


:hi Directory guifg=#00FFFF ctermfg=cyan



set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_check_header = 0
let g:syntastic_c_no_include_search = 1

let g:syntastic_c_include_dirs = [ '/usr/include/freetype2', 'include' ]

