set number
set tabstop=8  	   " max width of tab character (8 is default)
set shiftwidth=4   " width of indent (also used by =, <, >)
set softtabstop=0  " use space/tab combo (0 is off)
set expandtab      " insert spaces instead of tabs
set smarttab       " tab key indents to next tab stop

" change indent size for .js/.jsx
autocmd BufRead *.js setlocal shiftwidth=2
autocmd BufRead *.jsx setlocal shiftwidth=2


" ----------- PLUGINS -----------
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'

call plug#end()

" DEOPLETE SETTINGS
let g:deoplete#enable_at_startup = 1
" auto-close method preview window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
