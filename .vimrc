set nocompatible
filetype off

" KEY MAPPING
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>
inoremap jk <Esc>

" ENABLE FOLDING
set foldmethod=indent
set foldlevel=99

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'wikitopian/hardmode'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'tomasiser/vim-code-dark'
Plugin 'jeffkreeftmeijer/vim-dim'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'scrooloose/NERDtree'
Plugin 'jiangmiao/auto-pairs'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

call vundle#end()
filetype plugin indent on

let python_highlight_all=1
syntax on
set nu
colorscheme dim

let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Don''t use this!'
autocmd VimEnter, BufNewFile,BufReadPost * silent! call HardMode()

" NERDTree SETUP
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
	\ quit | endif
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = "+"
