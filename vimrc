"  _______   __ __     _____ __  __ ____   ____ 
" |__  /\ \ / / \ \   / /_ _|  \/  |  _ \ / ___|
"   / /  \ V /   \ \ / / | || |\/| | |_) | |    
"  / /_   | |     \ V /  | || |  | |  _ <| |___ 
" /____|  |_|      \_/  |___|_|  |_|_| \_\\____|
"
" generate by cmd: figlet ZY VIMRC

""" basic setting
set wrap
set ruler
set nobackup
set cursorline
set autoindent

set tabstop=4
set scrolloff=5

set number " or set nu
" set nonu
set relativenumber
" set norelativenumber

" searching & highlight
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set showcmd
set wildmenu

set autoread


""" key mapping

"" Set <LEADER> as <SPACE>
let mapleader=" "

"" search
map <LEADER><CR> :nohlsearch<CR>

" Press space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

map s <nop>
map S :w<CR>

"" split the screens to up (horizontal),
""                    down (horizontal),
""                    left (vertical),
""                    right (vertical)
map sj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sk :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>

"" Resize splits with arrow keys
map <up> :res +2<CR>
map <down> :res -2<CR>
map <left> :vertical resize-2<CR>
map <right> :vertical resize+2<CR>

"" Markdowm Sheet
noremap sb :call EchoMarkdownSheet()<CR>
func EchoMarkdownSheet()
	let line = line('.')
	call setline(line+1,"")
	call setline(line+2,"| <++> | <++> |")
	call setline(line+3,"| --- | --- |")
	call setline(line+4,"| <++> | <++> |")
	call setline(line+5,"| <++> | <++> |")
	call setline(line+6,"")
endfunc

""" Plug Install
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

Plug 'junegunn/vim-peekaboo'

" Initialize plugin system
call plug#end()
""" Plug Install END

" Plug UltiSnip's setting
let g:UltiSnipsExpandTrigger           = '<C-e>'
let g:UltiSnipsJumpForwardTrigger      = '<C-n>'
let g:UltiSnipsJumpBackwardTrigger     = '<C-b>'

" Nerdtree's setting
noremap tt :NERDTreeToggle<CR>

" Nerdtree-git's setting
