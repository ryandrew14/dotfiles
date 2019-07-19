set number
set tabstop=8  	   " max width of tab character (8 is default)
set shiftwidth=4   " width of indent (also used by =, <, >)
set softtabstop=0  " use space/tab combo (0 is off)
set expandtab      " insert spaces instead of tabs
set smarttab       " tab key indents to next tab stop

set mouse=a " I am a casual

" change indent size for .js/.jsx
autocmd BufRead *.js setlocal shiftwidth=2
autocmd BufRead *.jsx setlocal shiftwidth=2

" ----------- KEYBINDS ----------
nnoremap <TAB> gt
nnoremap <S-TAB> gT

" ----------- PLUGINS -----------
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()
" ----------- PLUGINS -----------


" --- NERDTree Settings ---
" open automatically if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close vim if a NERDTree is the only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" open NERDTree
map <C-n> :NERDTreeToggle<CR>

" --- Deoplete settings ---
let g:deoplete#enable_at_startup = 1
" auto-close method preview window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
nnoremap <Leader>c :SyntasticToggleMode<CR>


" --- Syntastic recommended settings ---
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" note: must run `yarn global add eslint` for the following line to work
let g:syntastic_javascript_checkers = ['eslint']

" --- FZF Keybinds ---
nnoremap <Leader>g :Rg<CR>
nnoremap <Leader>f :Files<CR>
