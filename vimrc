" key mapping
map s <nop>
map S :w<CR>
" map Q :q<CR>


set wrap
set ruler
set nobackup
set cursorline
set autoindent

set tabstop=4
set scrolloff=3

" 行号相关
" set nonu
set number " or set nu
set relativenumber
" set norelativenumber

" 查找高亮相关
set hlsearch " 高亮查找的内容
exec "nohlsearch"
set incsearch " 边输入边高亮
" set ignorecase " 搜索忽略大小写
" set smartcase " 智能匹配大小写

set showcmd
set wildmenu

