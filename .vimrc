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
"set cursorcolumn
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
" 不做备份,没有临时文件
set nobackup
set noswapfile
set cmdheight=1
set laststatus=2
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\%0(%{&fileformat}\ %{&encoding}\:%{&fileencoding}\ [%c%V:%l/%L-%p%%]%)
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
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let NERDTreeIgnore=["\.pyc$", "\.bin$", "__pycache__"]
let g:nerdtree_tabs_open_on_console_startup = 1
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

nnoremap <leader>vs :vs <cr>
nnoremap <leader>sv :sv <cr>

set lcs=tab:\|\ ,nbsp:%,trail:-
highlight LeaderTab guifg=#666666
match LeaderTab /^\t/
"let g:tagbar_ctags_bin="/usr/local"

" pyflakes检查python语法
let g:pyflakes_use_quickfix = 0

" 关闭打开buffer browser
nnoremap <F4> :ToggleBufExplorer<CR>
" 设置bufexplorer忽略这个buffer.因为bufexplorer在NERD_tree_1中使用的时候有buf
let g:ignorebuffers = ['NERD_tree_1']

let g:molokai_original = 1
"let g:rehash256 = 1
hi CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"hi CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

:let g:NERDTreeWinSize=20
:let g:tagbar_width=20

let g:markdown_enable_spell_checking = 1
let g:markdown_enable_conceal = 1
function ShortTabLine()
    let ret = ''
    for i in range(tabpagenr('$'))
        " select the color group for highlighting active tab
        if i + 1 == tabpagenr()
            let ret .= '%#errorMsg#'
        else
            let ret .= '%#TabLine#'
        endif
        " find the buffername for the tablebel
        let buflist = tabpagebuflist(i + 1)
        let winnr = tabpagewinnr(i + 1)
        let buffername = bufname(buflist[winnr - 1])
        let filename = fnamemodify(buffername, ':t')
        " check if there is no name
        if filename == ''
            let filename = 'noname'
        endif
        " only show the first 6 letters of the name and
        " .. if the filename is more than 8 letters long
        if strlen(filename) >= 8
            let ret .= '['. filename[0:5]. '..]'
        else
            let ret .= '['.filename.']'
        endif
    endfor
    " after the last tab fill with TabLineFill and reset tab page #
    let ret .= '%#TabLineFill#%T'
    return ret
endfunction

"set spell

func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
noremap <leader>w :call DeleteTrailingWS()<CR>
