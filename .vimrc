" 设置自动缩进为4个空格
set shiftwidth=4
" 当缩进不正确时根据shiftwidth自动调整
set shiftround
set softtabstop=4
set tabstop=4
set smarttab
set autoindent
" 为c提示自动缩进
set smartindent
" 使用c风格的缩进方案
set cindent
set number
set showmatch
set scrolloff=5
set hidden
set ts=4
" 突出显示当前行
set cursorline
" 突出显示当前列
" set cursorcolumn
set expandtab
" 查找时忽略大小写
set ignorecase
" 如果查找的内容有一个是大写的则不忽略大小写
set smartcase
" 随着键入即时搜索
set incsearch
set hlsearch
set showcmd
set showmode
set t_Co=256
" 不做备份,没有临时文件
set nobackup
set noswapfile
set cmdheight=1
set laststatus=2
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\%0(%{&fileformat}\ %{&encoding}\:%{&fileencoding}\ [%c%V:%l/%L-%p%%]%)
" set tabline=%{tabpagenr()}.%t\ %m
set guitablabel=[%{tabpagenr()}]\ %t\ %m
" 编码
let &termencoding=&encoding
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
syntax on
set nocompatible "关闭vi兼容
filetype off
"" 保存时自动删除行尾空格或tab
"autocmd BufWritePre * :%s/\s\+$//e
"" 保存时自动删除末尾的空行
"autocmd BufWritePre * :s/^$\n\+\%$//ge
let mapleader="-"
set foldmethod=indent
" 显示制表位和行尾标志
set list
" 行号为光标所在行的相对位置
"set relativenumber

execute pathogen#infect()
filetype plugin indent on
filetype plugin on
set history=1000
set wrap
set linebreak

set noerrorbells
set novisualbell
set t_vb=

set magic
set autoread
set wildmenu

set foldenable
set foldmethod=syntax
set foldcolumn=0
set backspace=indent,eol,start

" 插入模式下的光标移动
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-e> <End>
inoremap <C-a> <Home>

" 窗口切割之后的光标移动
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NERDTreeToggle设置
map <F3> :NERDTreeToggle<CR>
" imap <F3> <ESC> :NERDTreeToggle<CR>
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let NERDTreeIgnore=["\.pyc$", "\.bin$"]
" 在NERDTree中显示行号
"let NERDTreeShowLineNumbers=1
"let NERDTreeAutoCenter=1
let g:nerdtree_tabs_open_on_console_startup = 1
" 显示书签,这里的书签和使用m+name的书签是不一样的
let NERDTreeShowBookmarks=1
let NERDSpaceDelims = 1
let NERDCompactSexyComs = 1

let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#left_sep = " "
let g:airline#extensions#tabline#left_alt_sep = "|"
let g:airline#extensions#tabline#buffer_nr_show = 1

" f8显示taglist
nmap <F8> :TagbarToggle<CR>

" f6 toggle paste!
nmap <F6> :set paste!<CR>

" 给当前单词加引号或双引号
nnoremap <leader>w" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>w' viw<esc>a'<esc>hbi'<esc>lel

"let g:DoxygenToolkit_briefTag_pre="@synopsis  "
"let g:DoxygenToolkit_paramTag_pre="@param "
"let g:DoxygenToolkit_returnTag="@returns   "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
"let g:DoxygenToolkit_authorName="Drunkedcat"
"let g:DoxygenToolkit_licenseTag="GPL 2.0"

let g:DoxygenToolkit_authorName="drunkedcat, whitelilis@gmail.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>vv :vsplit <cr>
nnoremap <leader>sv :split <cr>

set lcs=tab:\|\ ,nbsp:%,trail:-
highlight LeaderTab guifg=#666666
match LeaderTab /^\t/
"let g:tagbar_ctags_bin="/usr/local"

let g:pyflakes_use_quickfix = 0

" 关闭打开buffer browser
nnoremap <F4> :ToggleBufExplorer<CR>
" 设置bufexplorer忽略这个buffer.因为bufexplorer在NERD_tree_1中使用的时候有buf
let g:ignorebuffers = ['NERD_tree_1']

" terminal下高亮只显示下划线的问题
hi CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

let g:molokai_original = 1
